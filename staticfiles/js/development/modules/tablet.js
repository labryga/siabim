
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


let tablet = window.matchMedia("(min-width: 900px) and (max-width: 1099px)");

tablet.addListener(function(m) {
  if(m.matches) {
    tabletFooterPosition();
  } else {
    desktopFooterPosition();
  };
}
);

