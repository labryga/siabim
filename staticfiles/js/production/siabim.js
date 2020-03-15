"use strict";

var screenOrientation = function screenOrientation(deviceGridContainer, deviceFooter) {
  if (screen.orientation.type == "landscape-primary") {
    deviceGridContainer.style.height = "";
    deviceFooter.style.position = "";
  } else if (screen.orientation.type == "portrait-primary") {
    deviceGridContainer.style.height = "100%";
    deviceFooter.style.position = "absolute";
  }
};

window.addEventListener("load", function () {
  screenOrientation(grid_container_phone, footer_phone);
}, false);
window.addEventListener("orientationchange", function () {
  screenOrientation(grid_container_phone, footer_phone);
}, false);
window.addEventListener("load", function () {
  screenOrientation(grid_container_tablet, footer_tablet);
}, false);
window.addEventListener("orientationchange", function () {
  screenOrientation(grid_container_tablet, footer_tablet);
}, false); //
// window.addEventListener("load", function() {
//     screenOrientation(grid_container_desktop, footer_desktop);
//   }
//   , false); 
//
//
// window.addEventListener("orientationchange", function() {
//     screenOrientation(grid_container_desktop, footer_desktop);
//   }
//   , false);
//