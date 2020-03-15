
let getTabletRowsHeightSum = () => {
      return header_tablet_row.offsetHeight  +
             menu_tablet_row.offsetHeight    +
             content_tablet_row.offsetHeight +
             footer_tablet_row.offsetHeight;
};

console.log(screen.height);
console.log(getTabletRowsHeightSum());
console.log(footer_tablet_row.offsetHeight);

// window.addEventListener("load", function() {
//     screenOrientation(grid_container_tablet, footer_tablet);
//   }
//   , false); 
//
//
// window.addEventListener("orientationchange", function() {
//     screenOrientation(grid_container_tablet, footer_tablet);
//   }
//   , false);
//

