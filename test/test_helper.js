var fs = require('fs');
var path = require('path');
var should = require("should");
var PEG = require("pegjs");

grammar = fs.readFileSync(path.resolve(__dirname, '../grammar.pegjs'), 'utf8');

parser = PEG.buildParser(grammar);
