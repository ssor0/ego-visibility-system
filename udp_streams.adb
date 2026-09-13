


--with system.memory;
--with ada.text_io; use ada.text_io;


package body udp_streams is




--    function stream (stream : in out udp_stream_type) return stream_access is
--      (stream'unrestricted_access);


--    procedure to_stream (socket : in gnat.sockets.socket_type) is
--    begin
--    end to_stream;


   procedure set_socket
     (stream : in out udp_stream_type;
      socket : in gnat.sockets.socket_type)
   is
   begin
      stream.first := 1;
      stream.full_last := 0;
      stream.sock := socket;
      stream.timeout := false;
      --  reset other components?
   end set_socket;



   function is_closed (stream : in udp_stream_type) return boolean
     is (ada.streams."=" (stream.first, 0));


   function data_available (stream : in udp_stream_type) return boolean
     is (not stream.timeout);  --  prevent negation


   procedure read
     (self : in out udp_stream_type;
      item : out ada.streams.stream_element_array;
      last : out ada.streams.stream_element_offset)
   is
      use type ada.streams.stream_element_offset;

   begin
      --  raise exception if?
      --    length of last is more than self.first .. self.full_last? (oor read more data? doesnt make sen for udp?)
      --    self.full_last = item'first - 1?
      --    other?

      --  setting last := 0 causes end_error exception in language level attribute

      if self.full_last = 0 then
         --put_line ("receive_socket");

         begin
            gnat.sockets.receive_Socket
              (self.sock, self.se_buffer, self.full_last, self.sender_addr);
            self.timeout := false;
            --  can make more efficient by cheecking bytes available in
            --  buffer instead of exception? overhead of system call or
            --  exception (if exception has overhead?)?
         exception
            when gnat.sockets.socket_error =>
               --put_line ("read exception");
               self.timeout := true;
               --self.full_last := 0;
               --  doesnt work because will always bee 0 after 'read
               --  done with reecursion (if size of composite type matches
               --  sent data)
               last := item'last;
               return;
         end;

         --put_line ("after receive_socket");
         --put_line ("last:" & self.full_last'image);


         if self.full_last = self.se_buffer'first - 1 then
            --put_line ("socket closed in read");
            --raise gnat.sockets.socket_error with "temporary. socket closed read from dg socket";
            self.first := 0;  --  socket closed
            self.full_last := 0;  --  set to 0 too (if not already) so if
                                  --  statement can also be to return early
                                  --  when socket closed on future read
                                  --  (receive_socket returns item'first -1 )
            last := item'last;  --  item'last?
            return;
         end if;
      end if;

--       put_line ("from buffer");
--       put_line ("item first and last:" & item'first'image & item'last'image);
--       put_line ("se_buffer first and last:" & self.se_buffer'first'image & self.se_buffer'last'image);
--       put_line ("self full_last:" & self.full_last'image);
--       put_line ("self first:" & self.first'image);

      item := self.se_buffer (self.first .. self.first + (item'length - 1));
      last := item'last;

      if self.first + last <= self.full_last then
         self.first := self.first + last; --  item is 1 based
      else
         --put_line ("end of buffer data");
         self.full_last := 0;
         self.first := self.se_buffer'first;
      end if;

   end read;

   function last_address (stream : in udp_stream_type) return gnat.sockets.sock_addr_type
     is (stream.sender_addr);

   --  send_to? dest? remote? recipient?
   procedure set_send_address
     (stream : in out udp_stream_type;
      address : in gnat.sockets.sock_addr_type)
   is
   begin
      stream.dest_addr := address;
   end set_send_address;
-- 
--    procedure test_read
--      (self : in out udp_stream_type;
--       item : out ada.streams.stream_element_array;
--       last : out ada.streams.stream_element_offset)
--    is
--    begin
--       --  doesnt work as expected because call to 'receive_socket()'
--       --  clears entire datagram in buffer even if not all of its data
--       --  is read? ('msg_flags' description in 'recv' manual page)
-- 
--       put_line ("sea last: " & item'last'image);
--       put_line ("sea first: " & item'first'image);
--       put_line ("sea length: " & item'length'image);
--       put_line ("last: " & last'image);
-- 
--       --self.c_count := self.c_count + 1;
--       --put_line ("count: " & self.c_count'image);
-- 
--       return;
--    end test_read;

   procedure write
     (self : in out udp_stream_type;
      item : in ada.streams.stream_element_array)
   is
      use type ada.streams.stream_element_offset;

      last : ada.streams.stream_element_offset;

   begin
      --  conditional for:
      --    socket closed?
      --    dest_addr not set?
      gnat.sockets.send_socket (self.sock, item, last, self.dest_addr);

      --  allow to retrieve, check error separately to prevent
      --  problem of unhandleable exception in delcaration region?

      --  access to errno? get_socket_option?

      --  error sending could be either socket is closed (item'first - 1)
      --  or data partially sent (likely os level situation?)

      if last /= item'last then
      --  socket closed?
         --raise gnat.sockets.socket_error with "temporary. faild to write to datagram socket";
         self.first := 0;
      end if;
   end write;


end udp_streams;
