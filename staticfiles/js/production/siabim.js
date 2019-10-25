"use strict";

var mytime = new Date();
var mytimes = ["getFullYear", "getHours", "getMinutes"];

function we() {
  var _a = mytimes;

  var _f = function _f(item) {
    return console.log(eval("mytime" + "." + item + "()"));
  };

  for (var _i = 0; _i < _a.length; _i++) {
    _f(_a[_i], _i, _a);
  }

  undefined;
}

document.body.appendChild(document.createElement("ARTICLE"));
console.log(["22", "33", "44"].includes(22));