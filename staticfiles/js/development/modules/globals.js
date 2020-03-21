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

