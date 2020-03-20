
let tabletMedia = window.matchMedia("(min-width: 768px) and (max-width: 1070px)");

let tabletFooterPosition = (mediaQuery) => {

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
  console.log("available height:" + content_tablet_available_height);
  console.log("content height" + content_tablet_height);
};
