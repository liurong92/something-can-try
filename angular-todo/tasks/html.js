var gulp = require('gulp');
var htmlmine = require('gulp-htmlmin');
var config = require('./config');

var html = function () {
  gulp.src(config.homepath + config.html.path + '**/*' + config.html.extension)
    .pipe(htmlmine({collapseWhitespace: false}))
    .pipe(
      gulp.dest(config.build.path)
    )
};

module.exports = html;
