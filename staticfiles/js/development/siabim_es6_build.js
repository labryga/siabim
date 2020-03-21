
let phoneFooterPosition = () => {
  let contentPhoneAvailableHeight = screen.height -
                                        header_phone_row.offsetHeight -
                                        menu_phone_row.offsetHeight   -
                                        footer_phone_row.offsetHeight;

  let contentPhoneHeight = content_phone.offsetHeight;

  if (contentPhoneHeight < contentPhoneAvailableHeight) {
      grid_container_phone.style.height = "100%";
      footer_phone_row.style.position   = "absolute";
  } else {
      grid_container_phone.style.height = "";
      footer_phone_row.style.position   = "";
  }

};


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

let footerPosition = (header, content, gridContainer, footerRow) => {
  let contentAvailableHeight = screen.height -
                               headerRow.offsetHeight -
                               footerRow.offsetHeight;

  let contentHeight = content.offsetHeight;

  if (contentHeight < contentAvailableHeight) {
    gridContainer.style.height = "100%";
  }
};

window.addEventListener("orientationchange", function() {
    location.reload();
  }, false);

window.addEventListener("load", function() {
    desktopFooterPosition();
    tabletFooterPosition();
    phoneFooterPosition();
  }, false); 

