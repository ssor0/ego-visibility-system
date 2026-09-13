
with interfaces; use interfaces;



package ego_telemetry is

   pragma compile_time_error (float'size /= 32, "predfined float type unexpected size");

   pragma compile_time_error (integer'size /= 32, "predfined integer type unexpected size");



   --  array?


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


end ego_telemetry;
