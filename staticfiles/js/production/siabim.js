"use strict";

console.log("TestPage");
var fensterhoehe = window.innerHeight;
var inhalthoehe = grid_container_desktop.clientHeight;

if (inhalthoehe > fensterhoehe) {
  console.log("inhalt gross");
  grid_container_desktop.style.height = "";
  footer_desktop.style.position = "";
} else {
  console.log("inhalt klein");
  grid_container_desktop.style.height = "100%";
  footer_desktop.style.position = "absolute";
}

var fensterhoehe = window.innerHeight;
var inhalthoehe = grid_container_phone.clientHeight;

if (inhalthoehe > fensterhoehe) {
  console.log("inhalt gross");
  grid_container_phone.style.height = "";
  footer_phone.style.position = "";
} else {
  console.log("inhalt klein");
  grid_container_phone.style.height = "100%";
  footer_phone.style.position = "absolute";
}

var fensterhoehe = window.innerHeight;
var inhalthoehe = grid_container_tablet.clientHeight;

if (inhalthoehe > fensterhoehe) {
  console.log("inhalt gross");
  grid_container_tablet.style.height = "";
  footer_tablet.style.position = "";
} else {
  console.log("inhalt klein");
  grid_container_tablet.style.height = "100%";
  footer_tablet.style.position = "absolute";
}