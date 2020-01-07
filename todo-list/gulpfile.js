var gulp = require('gulp');
var config = require('./config')
var connect = require('gulp-connect');
var sass = require('gulp-sass');
var htmlmin = require('gulp-htmlmin');
var browserify = require('browserify');
var reactify = require('reactify');
var source = require('vinyl-source-stream');
var del = require('del');

gulp.task('script', function() {
  browserify(config.script.path + '/index.jsx')
    .transform(reactify)
    .bundle()
    .pipe(source('index.js'))
    .pipe(
      gulp.dest(config.build.path + config.js.path)
    )
});

gulp.task('scss', function () {
  gulp.src(config.sass.path + '**/*' + config.sass.extension)
    .pipe(sass())
    .pipe(
      gulp.dest(config.build.path + config.css.path)
    )
})

gulp.task('html', function () {
  gulp.src(config.html.path + '**/*' + config.html.extension)
    .pipe(htmlmin({collapseWhitespace: false}))
    .pipe(
      gulp.dest(config.build.path)
    )
})

gulp.task('server', function () {
  connect.server({
    root: config.build.path,
    port: config.port
  });
})

gulp.task('clean', function () {
  return del.sync(['build/**', '!build/']);
})

gulp.task('watch', function () {
  gulp.watch(config.script.path + '/index.jsx', ['script']);
  gulp.watch(config.sass.path + '**/*' + config.sass.extension, ['scss']);
  gulp.watch(config.html.path + '**/*' + config.html.extension, ['html']);
})

gulp.task('build', function () {
  gulp.start(['script', 'scss', 'html']);
});

gulp.task('default', ['clean', 'build', 'watch', 'server']);
