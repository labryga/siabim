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

window.addEventListener("load", function () {}, false);
window.addEventListener("orientationchange", function () {}, false);
var content_tablet_available_height = screen.height - header_tablet_row.offsetHeight - menu_tablet_row.offsetHeight - footer_tablet_row.offsetHeight;
var content_tablet_height = content_tablet.offsetHeight;
console.log(content_tablet_available_height);

var mobileOrientationChange = function mobileOrientationChange() {
  if (content_tablet_height > content_tablet_available_height) {
    grid_container_tablet.style.height = "";
    footer_tablet_row.style.position = "";
  } else {
    grid_container_tablet.style.height = "100%";
    footer_tablet_row.style.position = "absolute";
  }
};

window.addEventListener("load", function () {
  console.log("etwas gedreht...");
  mobileOrientationChange();
}, false);
window.addEventListener("orientationchange", function () {
  console.log("etwas gedreht...");
  mobileOrientationChange();
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