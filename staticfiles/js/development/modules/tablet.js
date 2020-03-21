
let tabletFooterPosition = () => {
  let contentTabletAvailableHeight = screen.height -
                                        headerTabletRow.offsetHeight -
                                        menuTabletRow.offsetHeight   -
                                        footerTabletRow.offsetHeight;

  let contentTabletHeight = contentTablet.offsetHeight;

  if (contentTabletHeight < contentTabletAvailableHeight) {
      gridContainerTablet.style.height = "100%";
      footerTabletRow.style.position   = "absolute";
  } else {
      gridContainerTablet.style.height = "";
      footerTabletRow.style.position   = "";
  }
  console.log("available height:" + contentTabletAvailableHeight);
  console.log("content height" + contentTabletHeight);
};
