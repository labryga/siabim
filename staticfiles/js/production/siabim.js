"use strict";

// menuDesktop.onclick = function(event) {
//   let ziel = event.target;
//   console.log(ziel.parentElement);
// };
console.log(menuDesktop.children.length);
console.log(menuDesktop.children);

var footerPosition = function footerPosition(gridContainer, headerRow, contentRow, footerRow) {
  var contentAvailableHeight = screen.height - headerRow.offsetHeight - footerRow.offsetHeight;
  var contentHeight = contentRow.offsetHeight;

  if (contentHeight < contentAvailableHeight) {
    gridContainer.style.height = "100%";
    footerRow.style.position = "absolute";
  } else {
    gridContainer.style.height = "";
    footerRow.style.position = "";
  }

  ;
};

window.addEventListener("orientationchange", function () {
  location.reload();
}, false);
window.addEventListener("load", function () {
  footerPosition(gridContainerDesktop, headerDesktopRow, contentDesktopRow, footerDesktopRow);
  footerPosition(gridContainerTablet, headerTabletRow, contentTabletRow, footerTabletRow);
  footerPosition(gridContainerPhone, headerPhoneRow, contentPhoneRow, footerPhoneRow);
}, false);