
let screenOrientation = (deviceGrid, deviceFooter) => {
  if (screen.orientation.type == "landscape-primary") {
      deviceGrid.style.height = "";
      deviceFooter.style.position = "";
  } else if (screen.orientation.type == "portrait-primary") {
      deviceGrid.style.height = "100%";
      deviceFooter.style.position = "absolute";
  }
};
