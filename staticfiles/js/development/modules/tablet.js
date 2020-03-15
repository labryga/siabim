
let tabletFooterPosition = () => {

  let content_tablet_available_height = screen.height -
                                        headerTabletRow.offsetHeight -
                                        menuTabletRow.offsetHeight   -
                                        footerTabletRow.offsetHeight;

  let content_tablet_height = contentTablet.offsetHeight;

  if (content_tablet_height > content_tablet_available_height) {
    gridContainerTablet.style.height = "";
    footerTabletRow.style.position   = "";
  } else {
    gridContainerTablet.style.height = "100%";
    footerTabletRow.style.position   = "absolute";
  }

};


window.addEventListener("load", function() {
  tabletFooterPosition();
  }
  , false);

window.addEventListener("orientationchange", function() {
  tabletFooterPosition();
  }
  , false);

