
with ada.text_io; use ada.text_io;


package body sigint_handler is

   procedure handler is
   begin
      put_line ("handler");
   end handler;

end sigint_handler;
