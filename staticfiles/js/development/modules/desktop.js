
let desktopFooterPosition = () => {
  let contentDesktopAvailableHeight = screen.height -
                                      headerDesktop.offsetHeight -
                                      footerDesktopRow.offsetHeight;

  let contentDesktopHeight = contentDesktop.offsetHeight;

  if (contentDesktopHeight > contentDesktopAvailableHeight) {
    gridContainerDesktop.style.height = "";
    footerDesktopRow.style.position   = "";
  } else {
    gridContainerDesktop.style.height = "100%";
    footerDesktopRow.style.position   = "absolute";
  }
};
