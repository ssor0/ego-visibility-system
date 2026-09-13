import socket                                                                                                   
import struct 

from bpy import data as D                                                                                              
                                                                                                                
                                                                                                                
usock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)                                    
                                                                                                                
usock.bind(('127.0.0.1', 20777))                                                                                
                                                                                                                
print('listening', usock.getsockname())                                                                         
                                                                                                                
while True:                                                                                                     
  raw_data = usock.recv(28)                                                                                     
  msg = struct.unpack('!fffffff', raw_data)                                                                     
  pos = msg[4:]                                                                                                 
  print('x, y, z:', pos)
  
   D.objects['position_cube'].matrix_world[0][3] = pos[0]  # x
   D.objects['position_cube'].matrix_world[1][3] = pos[2]  # blender y = z
   D.objects['position_cube'].matrix_world[2][3] = pos[1]  # blender z = y