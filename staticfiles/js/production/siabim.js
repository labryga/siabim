"use strict";

var phoneFooterPosition = function phoneFooterPosition() {
  var contentPhoneAvailableHeight = screen.height - header_phone_row.offsetHeight - menu_phone_row.offsetHeight - footer_phone_row.offsetHeight;
  var contentPhoneHeight = content_phone.offsetHeight;

  if (contentPhoneHeight > contentPhoneAvailableHeight) {
    grid_container_phone.style.height = "";
    footer_phone_row.style.position = "";
  } else {
    grid_container_phone.style.height = "100%";
    footer_phone_row.style.position = "absolute";
  }
};

var tabletFooterPosition = function tabletFooterPosition() {
  var contentTabletAvailableHeight = screen.height - headerTabletRow.offsetHeight - menuTabletRow.offsetHeight - footerTabletRow.offsetHeight;
  var contentTabletHeight = contentTablet.offsetHeight;

  if (contentTabletHeight < contentTabletAvailableHeight) {
    gridContainerTablet.style.height = "100%";
    footerTabletRow.style.position = "absolute";
  } else {
    gridContainerTablet.style.height = "";
    footerTabletRow.style.position = "";
  }

  console.log("available height:" + contentTabletAvailableHeight);
  console.log("content height" + contentTabletHeight);
};

var desktopFooterPosition = function desktopFooterPosition() {
  var contentDesktopAvailableHeight = screen.height - headerDesktop.offsetHeight - footerDesktopRow.offsetHeight;
  var contentDesktopHeight = contentDesktop.offsetHeight;

  if (contentDesktopHeight > contentDesktopAvailableHeight) {
    gridContainerDesktop.style.height = "";
    footerDesktopRow.style.position = "";
  } else {
    gridContainerDesktop.style.height = "100%";
    footerDesktopRow.style.position = "absolute";
  }
};

window.addEventListener("orientationchange", function () {
  location.reload();
}, false);
window.addEventListener("load", function () {
  desktopFooterPosition();
  tabletFooterPosition();
  phoneFooterPosition();
}, false);