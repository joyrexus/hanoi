fs = require 'fs'

process = (ranges) ->

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

  fs.readFile 'data.json', 'utf8', filter


init = ->

  fs.readFile 'windows.tsv', 'utf8', (err, data) ->
    rows = data.split '\n'

    makeTest = (w) -> 
      (time) -> time > w[0] and time < w[1]

    ranges = (makeTest(Number(t) for t in row.split('\t'))     \
                                 for row in rows               \
                                 when (not row.match /^BEGIN/) \
                                 and row.match /\t/)

    process(ranges)


init()
