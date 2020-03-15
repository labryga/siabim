

let screenOrientation = (deviceGridContainer, deviceFooter) => {
  if (screen.orientation.type == "landscape-primary") {
      deviceGridContainer.style.height = "";
      deviceFooter.style.position = "";
  } else if (screen.orientation.type == "portrait-primary") {
      deviceGridContainer.style.height = "100%";
      deviceFooter.style.position = "absolute";
  }
};

