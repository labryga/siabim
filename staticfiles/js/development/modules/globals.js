window.addEventListener("orientationchange", function() {
    location.reload();
  }, false);

window.addEventListener("load", function() {
    desktopFooterPosition();
    tabletFooterPosition();
    phoneFooterPosition();
  }, false); 

