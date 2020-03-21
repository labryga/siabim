
let phoneFooterPosition = () => {
  let contentPhoneAvailableHeight = screen.height -
                                        header_phone_row.offsetHeight -
                                        menu_phone_row.offsetHeight   -
                                        footer_phone_row.offsetHeight;

  let contentPhoneHeight = content_phone.offsetHeight;

  if (contentPhoneHeight > contentPhoneAvailableHeight) {
      grid_container_phone.style.height = "";
      footer_phone_row.style.position   = "";
  } else {
      grid_container_phone.style.height = "100%";
      footer_phone_row.style.position   = "absolute";
  }

};
