var gulp = require('gulp');
var browserify = require('browserify');
var source = require('vinyl-source-stream');
var config = require('./config');

var script = function () {
  browserify(config.homepath +config.script.path + '/index.js')
    .bundle()
    .pipe(source('index.js'))
    .pipe(
      gulp.dest(config.build.path + config.js.path)
    );
};

module.exports = script;
