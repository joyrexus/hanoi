fs = require 'fs'

rows = fs.readFileSync('windows.tsv', 'utf8').split('\n')
windows = ((Number(t) for t in row.split('\t'))                 \
                                  for row in rows               \
                                  when (not row.match /^BEGIN/) \
                                  and row.match /\t/)

ranges = []
for w in windows
  do (w) -> 
    ranges.push (time) -> time > w[0] and time < w[1]

filter = (err, data) ->
  if err
    console.log err; return

  frames = JSON.parse(data)
  last = frames.length - 1
  start = frames[0].timestamp
  stop = frames[last].timestamp

  # iterate over each frame/data-point `d`
  for i, d of frames              # `i` is the index of each data point
    time = (d.timestamp - start) / 1000000    # in seconds
    for i, inRange of ranges
      if inRange(time)
        id = parseInt(i)+1
        console.log [id, time, d.left.vel.y, d.left.pos.y].join('\t')


show = (file, done=filter) -> 
  fs.readFile file, 'utf8', done

show 'data.json'
