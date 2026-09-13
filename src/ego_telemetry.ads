

with Interfaces; use Interfaces;


package Ego_Telemetry is


    type Cartesian_Coordinate is (Axis_X, Axis_Y, Axis_Z);
-- 
--    type FVec3 is array (Cartesian_Coordinate) of ieee_float_32;
--    type IVec3 is array (Cartesian_Coordinate) of integer_32;

  --  extraData = 0
   type Telemetry_Type_0 is record
      Time_Elapsed_Sec : unsigned_32;

      Angular_Velocity_X : ieee_float_32;
      Angular_Velocity_Z : ieee_float_32;
      Angular_Velocity_Y : ieee_float_32;

      Yaw   : ieee_float_32; --  Y
      Pitch : ieee_float_32; --  X
      Roll  : ieee_float_32; --  Z

      Acceleration_X : ieee_float_32;
      Acceleration_Z : ieee_float_32;
      Acceleration_Y : ieee_float_32;

      Velocity_X : ieee_float_32;
      Velocity_Z : ieee_float_32;
      Velocity_Y : ieee_float_32;

      Position_X : integer_32;
      Position_Z : integer_32;
      Position_Y : integer_32;

      FourCC : string (1 .. 4);
   end record with Pack => True;

 
end Ego_Telemetry;
