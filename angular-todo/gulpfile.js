var gulp = require('gulp');
var del = require('del');

var config = require('./tasks/config');

gulp.task('script', require('./tasks/script'));
gulp.task('html', require('./tasks/html'));
gulp.task('scss', require('./tasks/scss'));
gulp.task('server', require('./tasks/server'));

gulp.task('watch', function () {
  gulp.watch(config.homepath +config.script.path + '/index.js', ['script']);
  gulp.watch(config.homepath + config.html.path + '**/*' + config.html.extension, ['html']);
  gulp.watch(config.homepath + config.scss.path + '**/*' + config.scss.extension, ['scss']);
});

gulp.task('clean', function () {
  return del.sync([`config.build.path/**`, `!config.build.path/`]);
});

gulp.task('build', function () {
  gulp.start(['clean', 'script', 'scss', 'html']);
});

gulp.task('default', ['build', 'watch', 'server']);
