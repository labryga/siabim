"use strict";

var phoneFooterPosition = function phoneFooterPosition() {
  var content_phone_available_height = screen.height - header_phone_row.offsetHeight - menu_phone_row.offsetHeight - footer_phone_row.offsetHeight;
  var content_phone_height = content_phone.offsetHeight;

  if (content_phone_height > content_phone_available_height) {
    grid_container_phone.style.height = "";
    footer_phone_row.style.position = "";
  } else {
    grid_container_phone.style.height = "100%";
    footer_phone_row.style.position = "absolute";
  }
};

window.addEventListener("load", function () {
  phoneFooterPosition();
}, false);
window.addEventListener("orientationchange", function () {
  phoneFooterPosition();
}, false);

var tabletFooterPosition = function tabletFooterPosition() {
  var content_tablet_available_height = screen.height - headerTabletRow.offsetHeight - menuTabletRow.offsetHeight - footerTabletRow.offsetHeight;
  var content_tablet_height = contentTablet.offsetHeight;

  if (content_tablet_height > content_tablet_available_height) {
    gridContainerTablet.style.height = "";
    footerTabletRow.style.position = "";
  } else {
    gridContainerTablet.style.height = "100%";
    footerTabletRow.style.position = "absolute";
  }
};

var mgl = window.matchMedia("(min-width: 900px) and (max-width: 1099px)");
mgl.addListener(function (m) {
  if (m.matches) {
    tabletFooterPosition();
  } else {
    desktopFooterPosition();
  }

  ;
});

var desktopFooterPosition = function desktopFooterPosition() {
  var contentDesktopAvailableHeight = screen.height - headerDesktop.offsetHeight - footerDesktopRow.offsetHeight;
  var contentDesktopHeight = contentDesktop.offsetHeight;

  if (contentDesktopHeight < contentDesktopAvailableHeight) {
    gridContainerDesktop.style.height = "100%";
    footerDesktopRow.style.position = "absolute";
  } else {
    gridContainerDesktop.style.height = "";
    footerDesktopRow.style.position = "";
  }
};

window.addEventListener("load", function () {
  desktopFooterPosition();
}, false);
window.addEventListener("orientationchange", function () {
  desktopFooterPosition();
}, false);
window.addEventListener("resize", function () {
  contentWidthValue.innerHTML = getComputedStyle(contentWidthValue).width;
  screenWidth.innerHTML = window.innerWidth;
});