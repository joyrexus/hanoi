fs = require 'fs'

binaryCSV = require 'binary-csv'
opts =
  separator: '\t'
  newline: '\n'
  detectNewlines: true
  json: false

windows = []
parser = binaryCSV(opts)
fs.createReadStream('windows.tsv').pipe(parser)
  .on('data', (line) -> windows.push line)
  .on('exit', -> console.log windows)
