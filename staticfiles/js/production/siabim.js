"use strict";

var mytime = new Date();
var mytimes = ["getFullYear", "getHours", "getMinutes"];
var _a = mytimes;

var _f = function _f(item) {
  return console.log(eval("mytime" + "." + item + "()"));
};

for (var _i = 0; _i < _a.length; _i++) {
  _f(_a[_i], _i, _a);
}

undefined;