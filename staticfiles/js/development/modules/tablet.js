
let tabletOrientation = () => {

  let content_tablet_available_height = screen.height -
                                        header_tablet_row.offsetHeight -
                                        menu_tablet_row.offsetHeight   -
                                        footer_tablet_row.offsetHeight;

  let content_tablet_height = content_tablet.offsetHeight;

  if (content_tablet_height > content_tablet_available_height) {
    grid_container_tablet.style.height = "";
    footer_tablet_row.style.position   = "";
  } else {
    grid_container_tablet.style.height = "100%";
    footer_tablet_row.style.position   = "absolute";
  }

};

window.addEventListener("load", function() {
  console.log("geladen...");
  tabletOrientation();
  }
  , false);

window.addEventListener("orientationchange", function() {
  console.log("gedreht...");
  tabletOrientation();
  }
  , false);

