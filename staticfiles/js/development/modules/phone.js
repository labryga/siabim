
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
