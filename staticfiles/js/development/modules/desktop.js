let desktopFooterPosition = () => {
  let contentDesktopAvailableHeight = screen.height -
                                      headerDesktop.offsetHeight -
                                      footerDesktopRow.offsetHeight;

  let contentDesktopHeight = contentDesktop.offsetHeight;

  if (contentDesktopHeight < contentDesktopAvailableHeight) {
    gridContainerDesktop.style.height = "100%";
    footerDesktopRow.style.position   = "absolute";
  } else {
    gridContainerDesktop.style.height = "";
    footerDesktopRow.style.position   = "";
  }
};


window.addEventListener("load", function() {
    desktopFooterPosition();
  }, false); 

window.addEventListener("orientationchange", function() {
    desktopFooterPosition();
  }, false);
