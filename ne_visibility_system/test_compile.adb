with ada.text_io; use ada.text_io;

with neon.visibilitySystem;
with neon;

procedure test_compile is

   vs : neon.visibilitySystem.visibilitySystem;

begin
   put_line (integer'image (neon.visibilitySystem.visibilitySystem'size / 8));
   put_line (integer'image (neon.visibilitySystem.NevisibilitySystem'size / 8));
   put_line (integer'image (neon.visibilitySystem.NeCriticalSection 'size / 8));

   put_line ("l" & vs.m_isLoaded'position'image);
   put_line ("vc" & vs.m_ViewCellRoot'position'image);
   put_line ("sp" & vs.m_systemPool'position'image);
   put_line ("dop" & vs.m_dynamicObjectPool'position'image);

   put_line ("bool bits" &  neon.nebool'size'image);
end test_compile;
