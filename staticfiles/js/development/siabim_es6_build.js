
let screenOrientation = (deviceGrid, deviceFooter) => {
  if (screen.orientation.type == "landscape-primary") {
      deviceGrid.style.height = "";
      deviceFooter.style.position = "";
  } else if (screen.orientation.type == "portrait-primary") {
      deviceGrid.style.height = "100%";
      deviceFooter.style.position = "absolute";
  }
};


window.addEventListener("load", function() {
    screenOrientation(grid_container_phone, footer_phone);
  }
  , false); 


window.addEventListener("orientationchange", function() {
    screenOrientation(grid_container_phone, footer_phone);
  }
  , false);



window.addEventListener("load", function() {
    screenOrientation(grid_container_tablet, footer_tablet);
  }
  , false); 


window.addEventListener("orientationchange", function() {
    screenOrientation(grid_container_tablet, footer_tablet);
  }
  , false);



window.addEventListener("load", function() {
    screenOrientation(grid_container_desktop, footer_desktop);
  }
  , false); 


window.addEventListener("orientationchange", function() {
    screenOrientation(grid_container_desktop, footer_desktop);
  }
  , false);

