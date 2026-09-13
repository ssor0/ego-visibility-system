with ada.streams;

with gnat.sockets;


package udp_streams is

   subtype stream_element_offset is ada.streams.stream_element_offset;

   --  datagram stream type? custom datagram? buffered datagram?
--    type udp_stream_type
--      (max_message_size : stream_element_offset := 1024) is limited private;


   --  other type with heap buffer that allows size to change?

   type udp_stream_type
     (max_message_size : stream_element_offset := 1024)
   is new ada.streams.root_stream_type with private;


   --procedure to_stream (socket : in gnat.sockets.socket_type);

   procedure set_socket
     (stream : in out udp_stream_type;
      socket : in gnat.sockets.socket_type) with inline;

   function is_closed (stream : in udp_stream_type) return boolean with inline;

   --  timeout, did_read, data_was_read, data_was_available, was_data_available
   function data_available (stream : in udp_stream_type) return boolean
     with inline;

   --type Stream_Access is access all Ada.Streams.Root_Stream_Type'Class;

--    function stream
--      (socket : in gnat.sockets.socket_type;
--       max_message_size : in stream_element_offset) return stream_access;


   --  system.memory.free
   --  'pool_address
   --  acc_var := null


   --function stream (stream : in out udp_stream_type) return stream_access
     --with inline;



   --  last... peer address, remote address?
   function last_address (stream : in udp_stream_type)
     return gnat.sockets.sock_addr_type with inline;

   --  send_to? dest? remote? recipient?
   procedure set_send_address
     (stream  : in out udp_stream_type;
      address : in gnat.sockets.sock_addr_type) with inline;



private

   type udp_stream_type
     (max_message_size : stream_element_offset := 1024)
   is new ada.streams.root_stream_type with record

      sock : gnat.sockets.socket_type;
      dest_addr : gnat.sockets.sock_addr_type := gnat.sockets.no_sock_addr;  -- reset?
      sender_addr : gnat.sockets.sock_addr_type := gnat.sockets.no_sock_addr;

      --  closed?  datagram sockets are never connected, would only be closed
      --  if socket closed locally or serious os level error?

      se_buffer : ada.streams.stream_element_array (1 .. max_message_size);
      first : ada.streams.stream_element_offset := 0;  --  0 before set_socket () and when socket closed
      full_last: ada.streams.stream_element_offset;
      timeout : boolean := false;

      --c_count : natural := 0;
   end record;

   procedure read
     (self : in out udp_stream_type;
      item : out ada.streams.stream_element_array;
      last : out ada.streams.stream_element_offset);

   procedure write
     (self : in out udp_stream_type;
      item : in ada.streams.stream_element_array);


end udp_streams;
