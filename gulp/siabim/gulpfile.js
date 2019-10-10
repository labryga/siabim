var gulp = require('gulp'),
    sass = require('gulp-sass'),
    sourcemaps = require('gulp-sourcemaps'),
    postcss = require('gulp-postcss'),
    autoprefixer = require('gulp-autoprefixer'),
    concat = require('gulp-concat'),
    babel = require('gulp-babel'),
    uglifyjs = require('gulp-uglify'),
    uglifycss = require('gulp-uglifycss'),
    rename = require('gulp-rename'),
    livereload = require('gulp-livereload');

gulp.task('css', () => {
  return gulp.src([
    '/staticfiles/css/development/sass/*.sass',
    '/staticfiles/css/development/*.css',])
    .pipe(sass().on('error', sass.logError))
    .pipe(autoprefixer('last 5 versions',
                       'Android >= 2.3',
                       'ChromeAndroid >= 20'))
    .pipe(concat('siabim.css'))
    .pipe(gulp.dest('/staticfiles/css/production/'))
    .pipe(uglifycss())
    .pipe(rename('siabim.min.css'))
  .pipe(gulp.dest('/staticfiles/css/production/'))
    .pipe(livereload());
});

gulp.task('javascript', () => {
  return gulp.src('/staticfiles/js/development/modules/*.js')
    .pipe(concat('siabim_es6_build.js'))
    .pipe(gulp.dest('/staticfiles/js/development/'))
    .pipe(babel({
      presets: ['@babel/preset-env'],
      plugins: ['babel-plugin-loop-optimizer']
    }))
    .pipe(rename('siabim.js'))
    .pipe(gulp.dest('/staticfiles/js/production/'))
    .pipe(uglifyjs())
    .pipe(rename('siabim.min.js'))
  .pipe(gulp.dest('/staticfiles/production/'))
    .pipe(livereload());
});

gulp.task('watch', () => {
  livereload.listen();
  gulp.watch('/staticfiles/css/development/sass/*',
             gulp.series('css'));
  gulp.watch('/staticfiles/js/development/modules/*.js',
             gulp.series('javascript'));
});
