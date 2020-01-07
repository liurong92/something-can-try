var gulp = require('gulp');
var sass =  require('gulp-sass');
var config = require('./config');

var scss = function () {
  gulp.src(config.homepath + config.scss.path + '**/*' + config.scss.extension)
    .pipe(sass().on('error', sass.logError))
    .pipe(
      gulp.dest(config.build.path + config.css.path)
    );
};

module.exports = scss;
