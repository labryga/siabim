var fensterhoehe = window.innerHeight;
var inhalthoehe  = grid_container_desktop.clientHeight;

if (inhalthoehe > fensterhoehe) {
  console.log("inhalt gross");
  grid_container_desktop.style.height = "";
  footer_desktop.style.position       = "";

} else {
  console.log("inhalt klein");
  grid_container_desktop.style.height = "100%";
  footer_desktop.style.position       = "absolute";
}

