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

var phoneOrientation = function phoneOrientation() {
  var content_phone_available_height = screen.height - header_phone_row.offsetHeight - menu_phone_row.offsetHeight - footer_phone_row.offsetHeight;
  var content_phone_height = content_phone.offsetHeight;

  if (content_phone_height > content_phone_available_height) {
    grid_container_phone.style.height = "";
    footer_phone_row.style.position = "";
  } else {
    grid_container_phone.style.height = "100%";
    footer_phone_row.style.position = "absolute";
  }
};

window.addEventListener("load", function () {
  phoneOrientation();
}, false);
window.addEventListener("orientationchange", function () {
  phoneOrientation();
}, false);

var tabletOrientation = function tabletOrientation() {
  var content_tablet_available_height = screen.height - header_tablet_row.offsetHeight - menu_tablet_row.offsetHeight - footer_tablet_row.offsetHeight;
  var content_tablet_height = content_tablet.offsetHeight;

  if (content_tablet_height > content_tablet_available_height) {
    grid_container_tablet.style.height = "";
    footer_tablet_row.style.position = "";
  } else {
    grid_container_tablet.style.height = "100%";
    footer_tablet_row.style.position = "absolute";
  }
};

window.addEventListener("load", function () {
  console.log("geladen...");
  tabletOrientation();
}, false);
window.addEventListener("orientationchange", function () {
  console.log("gedreht...");
  tabletOrientation();
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