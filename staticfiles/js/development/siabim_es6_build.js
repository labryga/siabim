console.log("TestPage");


// var fensterhoehe = window.innerHeight;
// var inhalthoehe  = grid_container_desktop.clientHeight;
//
// if (inhalthoehe > fensterhoehe) {
//   grid_container_desktop.style.height = "";
//   footer_desktop.style.position       = "";
//
// } else {
//   grid_container_desktop.style.height = "100%";
//   footer_desktop.style.position       = "absolute";
// }



function myOrientation(myGrid, myFooter) {
  if (screen.orientation.type           == "landscape-primary") {
      myGrid.style.height = "";
      myFooter.style.position       = "";
      console.log(myGrid);
  } else if (screen.orientation.type    == "portrait-primary") {
      myGrid.style.height = "100%";
      myFooter.style.position       = "absolute";
  }
}


window.addEventListener("load", function() {
    myOrientation(grid_container_phone, footer_phone);
  }
  , false); 


window.addEventListener("orientationchange", function() {
    myOrientation(grid_container_phone, footer_phone);
  }
  , false);


// var fensterhoehe = window.innerHeight;
// var inhalthoehe  = grid_container_tablet.clientHeight;
//
// if (inhalthoehe > fensterhoehe) {
//   grid_container_tablet.style.height = "";
//   footer_tablet.style.position       = "";
//
// } else {
//   grid_container_tablet.style.height = "100%";
//   footer_tablet.style.position       = "absolute";
// }
