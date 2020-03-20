
let phoneFooterPosition = () => {

  let content_phone_available_height = screen.height -
                                        header_phone_row.offsetHeight -
                                        menu_phone_row.offsetHeight   -
                                        footer_phone_row.offsetHeight;

  let content_phone_height = content_phone.offsetHeight;

  if (content_phone_height > content_phone_available_height) {
      grid_container_phone.style.height = "";
      footer_phone_row.style.position   = "";
  } else {
      grid_container_phone.style.height = "100%";
      footer_phone_row.style.position   = "absolute";
  }

};


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

window.addEventListener("orientationchange", function() {
    desktopFooterPosition();
    tabletFooterPosition();
    phoneFooterPosition();
  }, false);

window.addEventListener("load", function() {
    desktopFooterPosition();
    tabletFooterPosition();
    phoneFooterPosition();
  }, false); 

