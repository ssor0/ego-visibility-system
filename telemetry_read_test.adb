with Interfaces; use Interfaces;

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Streams;

with GNAT.Sockets;

--with Outsim;

with udp_streams;


procedure Telemetry_Read_Test is

   package GSock renames GNAT.Sockets;

   pragma compile_time_error (float'size /= 32, "predfined float type unexpected size");
   pragma compile_time_error (integer'size /= 32, "predfined integer type unexpected size");


  --  extraData = 0 (tested)
   --type Telemetry_Type is record
   type telemetry_format_0 is record
      Time_Elapsed_Sec : unsigned_32;

      Angular_Velocity_X : float;
      Angular_Velocity_Z : float;
      Angular_Velocity_Y : float;

      Yaw   : float; --  Y
      Pitch : float; --  X
      Roll  : float; --  Z

      Acceleration_X : float;
      Acceleration_Z : float;
      Acceleration_Y : float;

      Velocity_X : float;
      Velocity_Z : float;
      Velocity_Y : float;

      Position_X : integer;  --  div -65535
      Position_Z : integer;  --  div 65535
      Position_Y : integer;  --  div 65535

      FourCC : string (1 .. 4);
   end record
     with pack => true;

   --  format output
   --    Received message of size: 68
   --    time elapsed:  537320
   --    angular vel x: 0.00000E+00
   --    angular vel z: 0.00000E+00
   --    angular vel y: 0.00000E+00
   --    yaw:  -2.75818E+00
   --    pitch: 1.57680E-02
   --    roll:  1.56940E+00
   --    accel x: 4.04091E+00
   --    accel z:-1.28074E+00
   --    accel y: 1.19275E+00
   --    vel x: 1.49697E+01
   --    vel z:-4.17012E+01
   --    vel y: 1.06309E+00
   --    pos x:-17759668
   --    pos z:-6450157
   --    pos y:-804646
   --
   --    pos x: 270  (/ -65545)
   --    pos z:-98   (/ 65535)
   --    pos y:-12   (/ 65535)
   --
   --    float pos x: 2.70995E+02  (float division)
   --    float pos z:-9.84231E+01
   --    float pos y:-1.22781E+01
   --
   --    four_cc: ToCA


   --  extraData 1? (tested 'position_' components)
   type telemetry_format_1 is record

      total_time : float;  --  scale 1.0
      lap_time   : float;

      lap_distance   : float;
      total_distance : float;

      position_x : float;
      position_y : float;
      position_z : float;

      speed : float;

      velocity_x : float;
      velocity_y : float;
      velocity_z : float;

      left_dir_x : float;  -- scale -1.0 (negative)
      left_dir_y : float;
      left_dir_z : float;

      forward_dir_x : float;
      forward_dir_y : float;
      forward_dir_z : float;

      suspension_position_bl : float;  --  scale 1000.0
      suspension_position_br : float;
      suspension_position_fl : float;
      suspension_position_fr : float;

      suspension_velocity_bl : float;
      suspension_velocity_br : float;
      suspension_velocity_fl : float;
      suspension_velocity_fr : float;

      wheel_patch_speed_b1 : float;  --  scale 1.0
      wheel_patch_speed_br : float;
      wheel_patch_speed_fl : float;
      wheel_patch_speed_fr : float;

      throttle_input : float;
      steering_input : float;
      brake_input    : float;
      clutch_input   : float;

      gear : float;

      gforce_lateral      : float;
      gforce_longitudinal : float;

      lap : float;

      engine_rate : float;

   end record
     with pack => true;

   --  format outout

   --  (exponent increases when whole part wraps around)

   --    x: 8.40460E+01
   --    y:-3.55214E+00
   --    z:-8.93323E+01



   --  can check dwarf info for data types of formats?


-- float channel="total time" scale="1.0"
-- float channel="lap_time" scale="1.0"
-- float channel="lap_distance" scale="1.0"
-- float channel="total distance" scale="1.0"
-- float channel="position_x" scale="1.0"
-- float channel="position_y" scale="1.0"
-- float channel="position_z" scale="1.0"
-- float channel="speed" scale="1.0"
-- float channel="velocity_x" scale="1.0"
-- float channel="velocity_y" scale="1.0"
-- float channel="velocity_z" scale="1.0"
-- float channel="left_dir_x" scale="-1.0"
-- float channel="left_dir_y" scale="-1.0"
-- float channel="left_dir_z" scale="-1.0"
-- float channel="forward_dir_x" scale="1.0"
-- float channel="forward_dir_y" scale="1.0"
-- float channel="forward_dir_z" scale="1.0"
-- float channel="suspension_position_bI" scale="1000.0"
-- float channel="suspension_position_br" scale="1000.0"
-- float channel="suspension_position_f1" scale="1000.0"
-- float channel-"suspension_position_fr" scale="1000.0"
-- float channel="suspension_velocity_b1" scale="1000.0"
-- float channel="suspension_ velocity_br" scale="1000.0"
-- float channel="suspension_velocity_fl" scale="1000.0"
-- float channel="suspension_velocity_fr" scale="1000.0"
-- float channel="wheel_patch_speed_b1" scale="1.0"
-- float channel="wheel_patch_speed_br" scale="1.0"
-- float channel="wheel_patch_speed_f1" scale="1.0"
-- float channel="wheel_patch_speed_fr" scale="1.0"
-- float channel="throttle_input" scale="1.0"
-- float channel-"steering_input" scale="1.0"
-- float channel="brake_input" scale="1.0"
-- float channel="clutch_ input" scale="1.0"
-- float channel="gear" scale="1.0"
-- float channel="gforce_lateral" scale="1.0"
-- float channel="gforce_longitudinal" scale="1.0"
-- float channel="lap" scale="1.0"
-- float channel="engine_rate"


   --NL : constant String := Character'Val (13) & Character'Val (10);
   NL : constant String := ascii.lf & ascii.cr;

   Bind_Address : constant GSock.Sock_Addr_Type :=
     (Family => GSock.Family_Inet,
      Addr   => Gsock.Loopback_Inet_Addr,
      Port   => 20777);

   subtype stream_element_offset is ada.streams.stream_element_offset;

   type datagram_stream_test_type (max_message_size : stream_element_offset := 1024) is new ada.streams.root_stream_type with record
      sock : gsock.socket_type;
      dest_addr : gsock.sock_addr_type := gsock.no_sock_addr;  -- reset?
      sender_addr : gsock.sock_addr_type := gsock.no_sock_addr;

      --  closed?  datagram sockets are never connected, would only be closed
      --  if socket closed locally or serious os level error?

      se_buffer : ada.streams.stream_element_array (1 .. max_message_size);
      first : ada.streams.stream_element_offset := 1;
      full_last: ada.streams.stream_element_offset := 0;

      --c_count : natural := 0;
   end record;

   procedure read
     (self : in out datagram_stream_test_type;
      item : out ada.streams.stream_element_array;
      last : out ada.streams.stream_element_offset);

   procedure write
     (self : in out datagram_stream_test_type;
      item : in ada.streams.stream_element_array);

   procedure read
           (self : in out datagram_stream_test_type;
      item : out ada.streams.stream_element_array;
      last : out ada.streams.stream_element_offset)
   is
      use type ada.streams.stream_element_offset;
   begin
      --  raise exception if?
      --    length of last is more than self.first .. self.full_last? (oor read more data? doesnt make sen for udp?)
      --    self.full_last = item'first - 1?
      --    other?

      if self.full_last = 0 then
         put_line ("receive_socket");
         gsock.receive_Socket
           (self.sock, self.se_buffer, self.full_last, self.sender_addr);

         put_line ("after receive_socket");

         if self.full_last = self.se_buffer'first - 1 then
            raise gsock.socket_error with "temporary. socket closed read from dg socket";
         end if;
      end if;

      put_line ("from buffer");
      put_line ("item first and last:" & item'first'image & item'last'image);
      put_line ("se_buffer first and last:" & self.se_buffer'first'image & self.se_buffer'last'image);
      put_line ("self full_last:" & self.full_last'image);
      put_line ("self first:" & self.first'image);

      item := self.se_buffer (self.first .. self.first + (item'length - 1));
      last := item'last;

      if self.first + last <= self.full_last then
         self.first := self.first + last; --  item is 1 based
      else
         put_line ("end of buffer data");
         self.full_last := 0;
         self.first := self.se_buffer'first;
      end if;

   end read;

   function last_address (stream : in datagram_stream_test_type) return gsock.sock_addr_type
     is (stream.sender_addr);

   --  send_to? dest? remote? recipient?
   procedure set_send_address
     (stream : in out datagram_stream_test_type;
      address : in gsock.sock_addr_type)
   is
   begin
      stream.dest_addr := address;
   end set_send_address;

   procedure test_read
     (self : in out datagram_stream_test_type;
      item : out ada.streams.stream_element_array;
      last : out ada.streams.stream_element_offset)
   is
   begin
      --  doesnt work as expected because call to 'receive_socket()'
      --  clears entire datagram in buffer even if not all of its data
      --  is read? ('msg_flags' description in 'recv' manual page)

      put_line ("sea last: " & item'last'image);
      put_line ("sea first: " & item'first'image);
      put_line ("sea length: " & item'length'image);
      put_line ("last: " & last'image);

      --self.c_count := self.c_count + 1;
      --put_line ("count: " & self.c_count'image);

      return;
   end test_read;

   procedure write
     (self : in out datagram_stream_test_type;
      item : in ada.streams.stream_element_array)
   is
      use type ada.streams.stream_element_offset;

      last : ada.streams.stream_element_offset;

   begin
      --  conditional for:
      --    socket closed?
      --    dest_addr not set?
      gsock.send_socket (self.sock, item, last, self.dest_addr);

      --  allow to retrieve, check error separately to prevent
      --  problem of unhandleable exception in delcaration region?

      --  access to errno? get_socket_option?

      --  error sending could be either socket is closed (item'first - 1)
      --  or data partially sent (likely os level situation?)

      if last /= item'last then
         raise gsock.socket_error with "temporary. faild to write to datagram socket";
      end if;
   end write;

   Server_Sock : GSock.Socket_Type;
   Sock_Stream : GSock.Stream_Access;

   cd_stream: aliased datagram_stream_test_type;

   test_buffer : Ada.Streams.Stream_Element_Array (1 .. 1024);
   last_index  : Ada.Streams.Stream_element_offset;

   Telemetry_Data : telemetry_format_0;
   for telemetry_data'address use test_buffer'address;

   td_1 : telemetry_format_1;
   --for td_1'address use test_buffer'address;

   switch : boolean := false;

   udp_stream : aliased udp_streams.udp_stream_type;

begin

      udp_stream.set_socket (server_sock);
      telemetry_format_1'Read (udp_stream'access, td_1);


   pragma Assert (Telemetry_data'size = (68 * 8));
   pragma Assert (telemetry_data.time_elapsed_sec'size = 32);

   GSock.Create_Socket (Server_Sock, GSock.Family_Inet, Gsock.Socket_Datagram);
   Gsock.Bind_Socket (Server_Sock, Bind_Address);

   Sock_Stream := GSock.Stream (Server_Sock, GSock.No_Sock_Addr);

   cd_stream.sock := server_sock;


   loop
      telemetry_format_1'Read (cd_stream'access, td_1);

      put_line ("x:" & td_1.position_x'image & NL &
        "y:" & td_1.position_y'image & NL &
        "z:" & td_1.position_z'image);
   end loop;

   --telemetry_format_0'Read (cd_stream'access, telemetry_data);
   --put_line ("c" & cd_stream.c_count'image);
   return;

   --cd_stream.sock := server_sock;

   loop

      if switch then

         telemetry_format_1'Read (Sock_Stream, td_1);

         --Gsock.receive_socket (server_sock, test_buffer, last_index);
         --Put_line ("Received message of size:" & last_index'image);

--          for I in test_buffer'first .. last_index loop
--             put ("index" & I'image & " ");
--             put (Character'Val (test_buffer (I)));
--             new_line;
--          end loop;
--          new_line;

         switch := true;

      else

         telemetry_format_0'Read (Sock_Stream, Telemetry_data);

         switch := true;
      end if;

      put_line ("x:" & td_1.position_x'image & NL &
        "y:" & td_1.position_y'image & NL &
        "z:" & td_1.position_z'image);

--       put_line
--         ("time elapsed: " & telemetry_data.Time_Elapsed_Sec'Image   & NL &
--          "angular vel x:" & telemetry_data.Angular_Velocity_X'Image & NL &
--          "angular vel z:" & telemetry_data.Angular_Velocity_Z'image & NL &
--          "angular vel y:" & telemetry_data.Angular_Velocity_Y'image & NL &
-- 
--          "yaw:  "   & telemetry_data.Yaw'image & NL &
--          "pitch:" & telemetry_data.Pitch'image & NL &
--          "roll: "  & telemetry_data.Roll'image & NL &
-- 
--          "accel x:" & telemetry_data.Acceleration_X'image & NL &
--          "accel z:" & telemetry_data.Acceleration_Z'image & NL &
--          "accel y:" & telemetry_data.Acceleration_Y'image & NL &
-- 
--          "vel x:" & telemetry_data.Velocity_X'image & NL &
--          "vel z:" & telemetry_data.Velocity_Z'image & NL &
--          "vel y:" & telemetry_data.Velocity_Y'image & NL &
-- 
--          "pos x:" & telemetry_data.Position_X'image & NL &
--          "pos z:" & telemetry_data.Position_Z'image & NL &
--          "pos y:" & telemetry_data.Position_Y'image & NL);
-- 
--       declare
--          x : constant integer := telemetry_data.position_x / (-65535);
--          z : constant integer := telemetry_data.position_z / 65535;
--          y : constant integer := telemetry_data.position_y / 65535;
-- 
--          x_f : constant float := float (telemetry_data.position_x) / (-65535.0);
--          z_f : constant float := float (telemetry_data.position_z) / 65535.0;
--          y_f : constant float := float (telemetry_data.position_y) / 65535.0;
--       begin
--          put_line ("pos x:" & X'image & NL &
--            "pos z:" & Z'image & NL &
--            "pos y:" & Y'image & NL);
-- 
--          put_line ("float pos x:" & X_f'image & NL &
--            "float pos z:" & Z_f'image & NL &
--            "float pos y:" & Y_f'image & NL);
--       end;

--      put_line ("four_cc: " & telemetry_data.FourCC);
      new_line;


--    Put_line ("FourCC: '" & Telemetry_Data.FourCC & "'");
--    Put_Line ("Time elapsed:" & Outsim.u32'image (Telemetry_Data.Time_Elapsed_Sec / 1000)
--      & " seconds");
--    Put_Line ("Vehicle position:" & NL
--      & "  X:" & Telemetry_Data.Position_X'image & NL
--      & "  Y:" & Telemetry_Data.Position_Y'Image & NL
--      & "  Z:" & Telemetry_Data.Position_Z'Image);

   end loop;

   Gsock.Close_Socket (Server_Sock);

end Telemetry_Read_Test;
