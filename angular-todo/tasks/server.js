var connect = require('gulp-connect');
var config = require('./config');

var server = function () {
  connect.server({
    root: config.build.path,
    livereload: true,
    port: config.port || 3000
  });
};

module.exports = server;
