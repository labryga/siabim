function myOrientation(myGrid, myFooter) {
  if (screen.orientation.type           == "landscape-primary") {
      myGrid.style.height = "";
      myFooter.style.position       = "";
      console.log(myGrid);
  } else if (screen.orientation.type    == "portrait-primary") {
      myGrid.style.height = "100%";
      myFooter.style.position       = "absolute";
  }
}

