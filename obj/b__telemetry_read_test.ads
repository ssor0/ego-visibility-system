pragma Warnings (Off);
pragma Ada_95;
with System;
with System.Parameters;
with System.Secondary_Stack;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   pragma Import (C, gnat_argc);
   pragma Import (C, gnat_argv);
   pragma Import (C, gnat_envp);

   gnat_exit_status : Integer;
   pragma Import (C, gnat_exit_status);

   GNAT_Version : constant String :=
                    "GNAT Version: 14.1.0" & ASCII.NUL;
   pragma Export (C, GNAT_Version, "__gnat_version");

   GNAT_Version_Address : constant System.Address := GNAT_Version'Address;
   pragma Export (C, GNAT_Version_Address, "__gnat_version_address");

   Ada_Main_Program_Name : constant String := "_ada_telemetry_read_test" & ASCII.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure adafinal;
   pragma Export (C, adafinal, "adafinal");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#8e408f63#;
   pragma Export (C, u00001, "telemetry_read_testB");
   u00002 : constant Version_32 := 16#30305195#;
   pragma Export (C, u00002, "system__standard_libraryB");
   u00003 : constant Version_32 := 16#6278fccd#;
   pragma Export (C, u00003, "system__standard_libraryS");
   u00004 : constant Version_32 := 16#76789da1#;
   pragma Export (C, u00004, "adaS");
   u00005 : constant Version_32 := 16#fe032bc8#;
   pragma Export (C, u00005, "ada__exceptionsB");
   u00006 : constant Version_32 := 16#00870947#;
   pragma Export (C, u00006, "ada__exceptionsS");
   u00007 : constant Version_32 := 16#0740df23#;
   pragma Export (C, u00007, "ada__exceptions__last_chance_handlerB");
   u00008 : constant Version_32 := 16#a028f72d#;
   pragma Export (C, u00008, "ada__exceptions__last_chance_handlerS");
   u00009 : constant Version_32 := 16#70765b54#;
   pragma Export (C, u00009, "systemS");
   u00010 : constant Version_32 := 16#fd5f5f4c#;
   pragma Export (C, u00010, "system__soft_linksB");
   u00011 : constant Version_32 := 16#210214a9#;
   pragma Export (C, u00011, "system__soft_linksS");
   u00012 : constant Version_32 := 16#524f7d04#;
   pragma Export (C, u00012, "system__secondary_stackB");
   u00013 : constant Version_32 := 16#debd0a58#;
   pragma Export (C, u00013, "system__secondary_stackS");
   u00014 : constant Version_32 := 16#a43efea2#;
   pragma Export (C, u00014, "system__parametersB");
   u00015 : constant Version_32 := 16#45e1a745#;
   pragma Export (C, u00015, "system__parametersS");
   u00016 : constant Version_32 := 16#bca88fbc#;
   pragma Export (C, u00016, "system__storage_elementsS");
   u00017 : constant Version_32 := 16#0286ce9f#;
   pragma Export (C, u00017, "system__soft_links__initializeB");
   u00018 : constant Version_32 := 16#2ed17187#;
   pragma Export (C, u00018, "system__soft_links__initializeS");
   u00019 : constant Version_32 := 16#8599b27b#;
   pragma Export (C, u00019, "system__stack_checkingB");
   u00020 : constant Version_32 := 16#b7294e42#;
   pragma Export (C, u00020, "system__stack_checkingS");
   u00021 : constant Version_32 := 16#c71e6c8a#;
   pragma Export (C, u00021, "system__exception_tableB");
   u00022 : constant Version_32 := 16#fd5d2d4d#;
   pragma Export (C, u00022, "system__exception_tableS");
   u00023 : constant Version_32 := 16#42d3e466#;
   pragma Export (C, u00023, "system__exceptionsS");
   u00024 : constant Version_32 := 16#69416224#;
   pragma Export (C, u00024, "system__exceptions__machineB");
   u00025 : constant Version_32 := 16#46355a4a#;
   pragma Export (C, u00025, "system__exceptions__machineS");
   u00026 : constant Version_32 := 16#7706238d#;
   pragma Export (C, u00026, "system__exceptions_debugB");
   u00027 : constant Version_32 := 16#40780307#;
   pragma Export (C, u00027, "system__exceptions_debugS");
   u00028 : constant Version_32 := 16#52e91815#;
   pragma Export (C, u00028, "system__img_intS");
   u00029 : constant Version_32 := 16#f2c63a02#;
   pragma Export (C, u00029, "ada__numericsS");
   u00030 : constant Version_32 := 16#174f5472#;
   pragma Export (C, u00030, "ada__numerics__big_numbersS");
   u00031 : constant Version_32 := 16#8a5c240d#;
   pragma Export (C, u00031, "system__unsigned_typesS");
   u00032 : constant Version_32 := 16#5c7d9c20#;
   pragma Export (C, u00032, "system__tracebackB");
   u00033 : constant Version_32 := 16#f6ecafe9#;
   pragma Export (C, u00033, "system__tracebackS");
   u00034 : constant Version_32 := 16#5f6b6486#;
   pragma Export (C, u00034, "system__traceback_entriesB");
   u00035 : constant Version_32 := 16#b86ae4d8#;
   pragma Export (C, u00035, "system__traceback_entriesS");
   u00036 : constant Version_32 := 16#a0281f47#;
   pragma Export (C, u00036, "system__traceback__symbolicB");
   u00037 : constant Version_32 := 16#140ceb78#;
   pragma Export (C, u00037, "system__traceback__symbolicS");
   u00038 : constant Version_32 := 16#701f9d88#;
   pragma Export (C, u00038, "ada__exceptions__tracebackB");
   u00039 : constant Version_32 := 16#26ed0985#;
   pragma Export (C, u00039, "ada__exceptions__tracebackS");
   u00040 : constant Version_32 := 16#a0d3d22b#;
   pragma Export (C, u00040, "system__address_imageB");
   u00041 : constant Version_32 := 16#d19ac66e#;
   pragma Export (C, u00041, "system__address_imageS");
   u00042 : constant Version_32 := 16#fd158a37#;
   pragma Export (C, u00042, "system__wch_conB");
   u00043 : constant Version_32 := 16#a9757837#;
   pragma Export (C, u00043, "system__wch_conS");
   u00044 : constant Version_32 := 16#5c289972#;
   pragma Export (C, u00044, "system__wch_stwB");
   u00045 : constant Version_32 := 16#84645436#;
   pragma Export (C, u00045, "system__wch_stwS");
   u00046 : constant Version_32 := 16#7cd63de5#;
   pragma Export (C, u00046, "system__wch_cnvB");
   u00047 : constant Version_32 := 16#afb5b247#;
   pragma Export (C, u00047, "system__wch_cnvS");
   u00048 : constant Version_32 := 16#9111f9c1#;
   pragma Export (C, u00048, "interfacesS");
   u00049 : constant Version_32 := 16#e538de43#;
   pragma Export (C, u00049, "system__wch_jisB");
   u00050 : constant Version_32 := 16#1a02d06d#;
   pragma Export (C, u00050, "system__wch_jisS");
   u00051 : constant Version_32 := 16#b4f41810#;
   pragma Export (C, u00051, "ada__streamsB");
   u00052 : constant Version_32 := 16#67e31212#;
   pragma Export (C, u00052, "ada__streamsS");
   u00053 : constant Version_32 := 16#367911c4#;
   pragma Export (C, u00053, "ada__io_exceptionsS");
   u00054 : constant Version_32 := 16#a201b8c5#;
   pragma Export (C, u00054, "ada__strings__text_buffersB");
   u00055 : constant Version_32 := 16#a7cfd09b#;
   pragma Export (C, u00055, "ada__strings__text_buffersS");
   u00056 : constant Version_32 := 16#e6d4fa36#;
   pragma Export (C, u00056, "ada__stringsS");
   u00057 : constant Version_32 := 16#8b7604c4#;
   pragma Export (C, u00057, "ada__strings__utf_encodingB");
   u00058 : constant Version_32 := 16#c9e86997#;
   pragma Export (C, u00058, "ada__strings__utf_encodingS");
   u00059 : constant Version_32 := 16#bb780f45#;
   pragma Export (C, u00059, "ada__strings__utf_encoding__stringsB");
   u00060 : constant Version_32 := 16#b85ff4b6#;
   pragma Export (C, u00060, "ada__strings__utf_encoding__stringsS");
   u00061 : constant Version_32 := 16#d1d1ed0b#;
   pragma Export (C, u00061, "ada__strings__utf_encoding__wide_stringsB");
   u00062 : constant Version_32 := 16#5678478f#;
   pragma Export (C, u00062, "ada__strings__utf_encoding__wide_stringsS");
   u00063 : constant Version_32 := 16#c2b98963#;
   pragma Export (C, u00063, "ada__strings__utf_encoding__wide_wide_stringsB");
   u00064 : constant Version_32 := 16#d7af3358#;
   pragma Export (C, u00064, "ada__strings__utf_encoding__wide_wide_stringsS");
   u00065 : constant Version_32 := 16#0d5e09a4#;
   pragma Export (C, u00065, "ada__tagsB");
   u00066 : constant Version_32 := 16#2a9756e0#;
   pragma Export (C, u00066, "ada__tagsS");
   u00067 : constant Version_32 := 16#3548d972#;
   pragma Export (C, u00067, "system__htableB");
   u00068 : constant Version_32 := 16#f1af03bf#;
   pragma Export (C, u00068, "system__htableS");
   u00069 : constant Version_32 := 16#1f1abe38#;
   pragma Export (C, u00069, "system__string_hashB");
   u00070 : constant Version_32 := 16#56ea83c0#;
   pragma Export (C, u00070, "system__string_hashS");
   u00071 : constant Version_32 := 16#e7d0da5b#;
   pragma Export (C, u00071, "system__val_lluS");
   u00072 : constant Version_32 := 16#238798c9#;
   pragma Export (C, u00072, "system__sparkS");
   u00073 : constant Version_32 := 16#a571a4dc#;
   pragma Export (C, u00073, "system__spark__cut_operationsB");
   u00074 : constant Version_32 := 16#629c0fb7#;
   pragma Export (C, u00074, "system__spark__cut_operationsS");
   u00075 : constant Version_32 := 16#1bac5121#;
   pragma Export (C, u00075, "system__val_utilB");
   u00076 : constant Version_32 := 16#dc0fff4f#;
   pragma Export (C, u00076, "system__val_utilS");
   u00077 : constant Version_32 := 16#b98923bf#;
   pragma Export (C, u00077, "system__case_utilB");
   u00078 : constant Version_32 := 16#bf658c01#;
   pragma Export (C, u00078, "system__case_utilS");
   u00079 : constant Version_32 := 16#05222263#;
   pragma Export (C, u00079, "system__put_imagesB");
   u00080 : constant Version_32 := 16#6cd85c4b#;
   pragma Export (C, u00080, "system__put_imagesS");
   u00081 : constant Version_32 := 16#22b9eb9f#;
   pragma Export (C, u00081, "ada__strings__text_buffers__utilsB");
   u00082 : constant Version_32 := 16#89062ac3#;
   pragma Export (C, u00082, "ada__strings__text_buffers__utilsS");
   u00083 : constant Version_32 := 16#2170d2a2#;
   pragma Export (C, u00083, "ada__text_ioB");
   u00084 : constant Version_32 := 16#6629c04a#;
   pragma Export (C, u00084, "ada__text_ioS");
   u00085 : constant Version_32 := 16#1cacf006#;
   pragma Export (C, u00085, "interfaces__c_streamsB");
   u00086 : constant Version_32 := 16#d07279c2#;
   pragma Export (C, u00086, "interfaces__c_streamsS");
   u00087 : constant Version_32 := 16#fb523cdb#;
   pragma Export (C, u00087, "system__crtlS");
   u00088 : constant Version_32 := 16#f74fab1c#;
   pragma Export (C, u00088, "system__file_ioB");
   u00089 : constant Version_32 := 16#16390e12#;
   pragma Export (C, u00089, "system__file_ioS");
   u00090 : constant Version_32 := 16#86c56e5a#;
   pragma Export (C, u00090, "ada__finalizationS");
   u00091 : constant Version_32 := 16#95817ed8#;
   pragma Export (C, u00091, "system__finalization_rootB");
   u00092 : constant Version_32 := 16#3f8428c4#;
   pragma Export (C, u00092, "system__finalization_rootS");
   u00093 : constant Version_32 := 16#29c68ba2#;
   pragma Export (C, u00093, "system__os_libB");
   u00094 : constant Version_32 := 16#8a1a8b0b#;
   pragma Export (C, u00094, "system__os_libS");
   u00095 : constant Version_32 := 16#94d23d25#;
   pragma Export (C, u00095, "system__atomic_operations__test_and_setB");
   u00096 : constant Version_32 := 16#57acee8e#;
   pragma Export (C, u00096, "system__atomic_operations__test_and_setS");
   u00097 : constant Version_32 := 16#b7152171#;
   pragma Export (C, u00097, "system__atomic_operationsS");
   u00098 : constant Version_32 := 16#553a519e#;
   pragma Export (C, u00098, "system__atomic_primitivesB");
   u00099 : constant Version_32 := 16#3b295013#;
   pragma Export (C, u00099, "system__atomic_primitivesS");
   u00100 : constant Version_32 := 16#0390ef72#;
   pragma Export (C, u00100, "interfaces__cB");
   u00101 : constant Version_32 := 16#7e33484a#;
   pragma Export (C, u00101, "interfaces__cS");
   u00102 : constant Version_32 := 16#256dbbe5#;
   pragma Export (C, u00102, "system__stringsB");
   u00103 : constant Version_32 := 16#ebf45b4c#;
   pragma Export (C, u00103, "system__stringsS");
   u00104 : constant Version_32 := 16#fcdf3530#;
   pragma Export (C, u00104, "system__file_control_blockS");
   u00105 : constant Version_32 := 16#b5988c27#;
   pragma Export (C, u00105, "gnatS");
   u00106 : constant Version_32 := 16#39fde2a4#;
   pragma Export (C, u00106, "gnat__socketsB");
   u00107 : constant Version_32 := 16#a536c0f5#;
   pragma Export (C, u00107, "gnat__socketsS");
   u00108 : constant Version_32 := 16#179d7d28#;
   pragma Export (C, u00108, "ada__containersS");
   u00109 : constant Version_32 := 16#17f10572#;
   pragma Export (C, u00109, "gnat__sockets__linker_optionsS");
   u00110 : constant Version_32 := 16#0f581d28#;
   pragma Export (C, u00110, "gnat__sockets__pollB");
   u00111 : constant Version_32 := 16#bb625000#;
   pragma Export (C, u00111, "gnat__sockets__pollS");
   u00112 : constant Version_32 := 16#21b023a2#;
   pragma Export (C, u00112, "ada__calendarB");
   u00113 : constant Version_32 := 16#63f2c9c2#;
   pragma Export (C, u00113, "ada__calendarS");
   u00114 : constant Version_32 := 16#31c3dbd8#;
   pragma Export (C, u00114, "system__os_primitivesB");
   u00115 : constant Version_32 := 16#778b3ea2#;
   pragma Export (C, u00115, "system__os_primitivesS");
   u00116 : constant Version_32 := 16#6521cea8#;
   pragma Export (C, u00116, "gnat__sockets__thinB");
   u00117 : constant Version_32 := 16#75914d48#;
   pragma Export (C, u00117, "gnat__sockets__thinS");
   u00118 : constant Version_32 := 16#87ec1338#;
   pragma Export (C, u00118, "ada__calendar__delaysB");
   u00119 : constant Version_32 := 16#8aaaec5e#;
   pragma Export (C, u00119, "ada__calendar__delaysS");
   u00120 : constant Version_32 := 16#1a69b526#;
   pragma Export (C, u00120, "gnat__os_libS");
   u00121 : constant Version_32 := 16#485b8267#;
   pragma Export (C, u00121, "gnat__task_lockS");
   u00122 : constant Version_32 := 16#7d808794#;
   pragma Export (C, u00122, "system__task_lockB");
   u00123 : constant Version_32 := 16#11fc6c3a#;
   pragma Export (C, u00123, "system__task_lockS");
   u00124 : constant Version_32 := 16#94835be8#;
   pragma Export (C, u00124, "gnat__sockets__thin_commonB");
   u00125 : constant Version_32 := 16#f02086ee#;
   pragma Export (C, u00125, "gnat__sockets__thin_commonS");
   u00126 : constant Version_32 := 16#b3c38977#;
   pragma Export (C, u00126, "system__return_stackS");
   u00127 : constant Version_32 := 16#3c9c2ae7#;
   pragma Export (C, u00127, "interfaces__c__stringsB");
   u00128 : constant Version_32 := 16#fecad76a#;
   pragma Export (C, u00128, "interfaces__c__stringsS");
   u00129 : constant Version_32 := 16#6b2ce7c9#;
   pragma Export (C, u00129, "system__os_constantsS");
   u00130 : constant Version_32 := 16#0943a5da#;
   pragma Export (C, u00130, "system__arith_64B");
   u00131 : constant Version_32 := 16#40d06401#;
   pragma Export (C, u00131, "system__arith_64S");
   u00132 : constant Version_32 := 16#5de653db#;
   pragma Export (C, u00132, "system__communicationB");
   u00133 : constant Version_32 := 16#d91e4e69#;
   pragma Export (C, u00133, "system__communicationS");
   u00134 : constant Version_32 := 16#b9e0ae25#;
   pragma Export (C, u00134, "system__finalization_mastersB");
   u00135 : constant Version_32 := 16#c28558ca#;
   pragma Export (C, u00135, "system__finalization_mastersS");
   u00136 : constant Version_32 := 16#20ec7aa3#;
   pragma Export (C, u00136, "system__ioB");
   u00137 : constant Version_32 := 16#ee34ac1b#;
   pragma Export (C, u00137, "system__ioS");
   u00138 : constant Version_32 := 16#35d6ef80#;
   pragma Export (C, u00138, "system__storage_poolsB");
   u00139 : constant Version_32 := 16#ea1d220f#;
   pragma Export (C, u00139, "system__storage_poolsS");
   u00140 : constant Version_32 := 16#3f686d0f#;
   pragma Export (C, u00140, "system__pool_globalB");
   u00141 : constant Version_32 := 16#c4222f45#;
   pragma Export (C, u00141, "system__pool_globalS");
   u00142 : constant Version_32 := 16#8f2423cb#;
   pragma Export (C, u00142, "system__memoryB");
   u00143 : constant Version_32 := 16#68e2c74e#;
   pragma Export (C, u00143, "system__memoryS");
   u00144 : constant Version_32 := 16#8b0ace09#;
   pragma Export (C, u00144, "system__storage_pools__subpoolsB");
   u00145 : constant Version_32 := 16#50a294f1#;
   pragma Export (C, u00145, "system__storage_pools__subpoolsS");
   u00146 : constant Version_32 := 16#252fe4d9#;
   pragma Export (C, u00146, "system__storage_pools__subpools__finalizationB");
   u00147 : constant Version_32 := 16#562129f7#;
   pragma Export (C, u00147, "system__storage_pools__subpools__finalizationS");
   u00148 : constant Version_32 := 16#ce5f50f9#;
   pragma Export (C, u00148, "system__val_intS");
   u00149 : constant Version_32 := 16#39f8db91#;
   pragma Export (C, u00149, "system__val_unsS");
   u00150 : constant Version_32 := 16#4b810764#;
   pragma Export (C, u00150, "ada__strings__unboundedB");
   u00151 : constant Version_32 := 16#850187aa#;
   pragma Export (C, u00151, "ada__strings__unboundedS");
   u00152 : constant Version_32 := 16#9f06a20d#;
   pragma Export (C, u00152, "ada__strings__searchB");
   u00153 : constant Version_32 := 16#a44727a7#;
   pragma Export (C, u00153, "ada__strings__searchS");
   u00154 : constant Version_32 := 16#c5e1e773#;
   pragma Export (C, u00154, "ada__strings__mapsB");
   u00155 : constant Version_32 := 16#6feaa257#;
   pragma Export (C, u00155, "ada__strings__mapsS");
   u00156 : constant Version_32 := 16#b451a498#;
   pragma Export (C, u00156, "system__bit_opsB");
   u00157 : constant Version_32 := 16#bd85f768#;
   pragma Export (C, u00157, "system__bit_opsS");
   u00158 : constant Version_32 := 16#5b4659fa#;
   pragma Export (C, u00158, "ada__charactersS");
   u00159 : constant Version_32 := 16#cde9ea2d#;
   pragma Export (C, u00159, "ada__characters__latin_1S");
   u00160 : constant Version_32 := 16#ec48c658#;
   pragma Export (C, u00160, "system__compare_array_unsigned_8B");
   u00161 : constant Version_32 := 16#e090c537#;
   pragma Export (C, u00161, "system__compare_array_unsigned_8S");
   u00162 : constant Version_32 := 16#74e358eb#;
   pragma Export (C, u00162, "system__address_operationsB");
   u00163 : constant Version_32 := 16#0e4277f4#;
   pragma Export (C, u00163, "system__address_operationsS");
   u00164 : constant Version_32 := 16#52627794#;
   pragma Export (C, u00164, "system__atomic_countersB");
   u00165 : constant Version_32 := 16#ac6eb497#;
   pragma Export (C, u00165, "system__atomic_countersS");
   u00166 : constant Version_32 := 16#8356fb7a#;
   pragma Export (C, u00166, "system__stream_attributesB");
   u00167 : constant Version_32 := 16#3a41bbb9#;
   pragma Export (C, u00167, "system__stream_attributesS");
   u00168 : constant Version_32 := 16#4ea7f13e#;
   pragma Export (C, u00168, "system__stream_attributes__xdrB");
   u00169 : constant Version_32 := 16#14c199f1#;
   pragma Export (C, u00169, "system__stream_attributes__xdrS");
   u00170 : constant Version_32 := 16#b3448438#;
   pragma Export (C, u00170, "system__fat_fltS");
   u00171 : constant Version_32 := 16#95768d35#;
   pragma Export (C, u00171, "system__fat_lfltS");
   u00172 : constant Version_32 := 16#efa623df#;
   pragma Export (C, u00172, "system__fat_llfS");
   u00173 : constant Version_32 := 16#e259c480#;
   pragma Export (C, u00173, "system__assertionsB");
   u00174 : constant Version_32 := 16#567524cf#;
   pragma Export (C, u00174, "system__assertionsS");
   u00175 : constant Version_32 := 16#8b2c6428#;
   pragma Export (C, u00175, "ada__assertionsB");
   u00176 : constant Version_32 := 16#cc3ec2fd#;
   pragma Export (C, u00176, "ada__assertionsS");
   u00177 : constant Version_32 := 16#ca878138#;
   pragma Export (C, u00177, "system__concat_2B");
   u00178 : constant Version_32 := 16#c58d28a3#;
   pragma Export (C, u00178, "system__concat_2S");
   u00179 : constant Version_32 := 16#63bad2e6#;
   pragma Export (C, u00179, "system__concat_9B");
   u00180 : constant Version_32 := 16#2499933f#;
   pragma Export (C, u00180, "system__concat_9S");
   u00181 : constant Version_32 := 16#7f4ba8ed#;
   pragma Export (C, u00181, "system__img_fltS");
   u00182 : constant Version_32 := 16#1b28662b#;
   pragma Export (C, u00182, "system__float_controlB");
   u00183 : constant Version_32 := 16#908a1868#;
   pragma Export (C, u00183, "system__float_controlS");
   u00184 : constant Version_32 := 16#19ff6eea#;
   pragma Export (C, u00184, "system__img_unsS");
   u00185 : constant Version_32 := 16#1efd3382#;
   pragma Export (C, u00185, "system__img_utilB");
   u00186 : constant Version_32 := 16#076fffed#;
   pragma Export (C, u00186, "system__img_utilS");
   u00187 : constant Version_32 := 16#d56ce2ec#;
   pragma Export (C, u00187, "system__powten_fltS");
   u00188 : constant Version_32 := 16#3ab08e6e#;
   pragma Export (C, u00188, "system__img_lliS");
   u00189 : constant Version_32 := 16#45cbb099#;
   pragma Export (C, u00189, "system__strings__stream_opsB");
   u00190 : constant Version_32 := 16#40062c5a#;
   pragma Export (C, u00190, "system__strings__stream_opsS");

   --  BEGIN ELABORATION ORDER
   --  ada%s
   --  ada.characters%s
   --  ada.characters.latin_1%s
   --  interfaces%s
   --  system%s
   --  system.address_operations%s
   --  system.address_operations%b
   --  system.atomic_operations%s
   --  system.float_control%s
   --  system.float_control%b
   --  system.io%s
   --  system.io%b
   --  system.parameters%s
   --  system.parameters%b
   --  system.crtl%s
   --  interfaces.c_streams%s
   --  interfaces.c_streams%b
   --  system.os_primitives%s
   --  system.os_primitives%b
   --  system.powten_flt%s
   --  system.spark%s
   --  system.spark.cut_operations%s
   --  system.spark.cut_operations%b
   --  system.storage_elements%s
   --  system.return_stack%s
   --  system.stack_checking%s
   --  system.stack_checking%b
   --  system.string_hash%s
   --  system.string_hash%b
   --  system.htable%s
   --  system.htable%b
   --  system.strings%s
   --  system.strings%b
   --  system.traceback_entries%s
   --  system.traceback_entries%b
   --  system.unsigned_types%s
   --  system.wch_con%s
   --  system.wch_con%b
   --  system.wch_jis%s
   --  system.wch_jis%b
   --  system.wch_cnv%s
   --  system.wch_cnv%b
   --  system.compare_array_unsigned_8%s
   --  system.compare_array_unsigned_8%b
   --  system.concat_2%s
   --  system.concat_2%b
   --  system.concat_9%s
   --  system.concat_9%b
   --  system.traceback%s
   --  system.traceback%b
   --  system.secondary_stack%s
   --  system.standard_library%s
   --  ada.exceptions%s
   --  system.exceptions_debug%s
   --  system.exceptions_debug%b
   --  system.soft_links%s
   --  system.wch_stw%s
   --  system.wch_stw%b
   --  ada.exceptions.last_chance_handler%s
   --  ada.exceptions.last_chance_handler%b
   --  ada.exceptions.traceback%s
   --  ada.exceptions.traceback%b
   --  system.address_image%s
   --  system.address_image%b
   --  system.exception_table%s
   --  system.exception_table%b
   --  ada.numerics%s
   --  ada.numerics.big_numbers%s
   --  system.exceptions%s
   --  system.exceptions.machine%s
   --  system.exceptions.machine%b
   --  system.img_int%s
   --  system.memory%s
   --  system.memory%b
   --  system.secondary_stack%b
   --  system.soft_links.initialize%s
   --  system.soft_links.initialize%b
   --  system.soft_links%b
   --  system.standard_library%b
   --  system.traceback.symbolic%s
   --  system.traceback.symbolic%b
   --  ada.exceptions%b
   --  ada.assertions%s
   --  ada.assertions%b
   --  ada.containers%s
   --  ada.io_exceptions%s
   --  ada.strings%s
   --  ada.strings.utf_encoding%s
   --  ada.strings.utf_encoding%b
   --  ada.strings.utf_encoding.strings%s
   --  ada.strings.utf_encoding.strings%b
   --  ada.strings.utf_encoding.wide_strings%s
   --  ada.strings.utf_encoding.wide_strings%b
   --  ada.strings.utf_encoding.wide_wide_strings%s
   --  ada.strings.utf_encoding.wide_wide_strings%b
   --  gnat%s
   --  interfaces.c%s
   --  interfaces.c%b
   --  interfaces.c.strings%s
   --  interfaces.c.strings%b
   --  system.arith_64%s
   --  system.arith_64%b
   --  system.atomic_primitives%s
   --  system.atomic_primitives%b
   --  system.atomic_counters%s
   --  system.atomic_counters%b
   --  system.atomic_operations.test_and_set%s
   --  system.atomic_operations.test_and_set%b
   --  system.case_util%s
   --  system.case_util%b
   --  system.fat_flt%s
   --  system.fat_lflt%s
   --  system.fat_llf%s
   --  system.os_constants%s
   --  system.os_lib%s
   --  system.os_lib%b
   --  gnat.os_lib%s
   --  system.task_lock%s
   --  system.task_lock%b
   --  gnat.task_lock%s
   --  system.val_util%s
   --  system.val_util%b
   --  system.val_llu%s
   --  ada.tags%s
   --  ada.tags%b
   --  ada.strings.text_buffers%s
   --  ada.strings.text_buffers%b
   --  ada.strings.text_buffers.utils%s
   --  ada.strings.text_buffers.utils%b
   --  system.put_images%s
   --  system.put_images%b
   --  ada.streams%s
   --  ada.streams%b
   --  system.communication%s
   --  system.communication%b
   --  system.file_control_block%s
   --  system.finalization_root%s
   --  system.finalization_root%b
   --  ada.finalization%s
   --  system.file_io%s
   --  system.file_io%b
   --  system.storage_pools%s
   --  system.storage_pools%b
   --  system.finalization_masters%s
   --  system.finalization_masters%b
   --  system.storage_pools.subpools%s
   --  system.storage_pools.subpools.finalization%s
   --  system.storage_pools.subpools.finalization%b
   --  system.storage_pools.subpools%b
   --  system.stream_attributes%s
   --  system.stream_attributes.xdr%s
   --  system.stream_attributes.xdr%b
   --  system.stream_attributes%b
   --  system.val_uns%s
   --  system.val_int%s
   --  ada.calendar%s
   --  ada.calendar%b
   --  ada.calendar.delays%s
   --  ada.calendar.delays%b
   --  ada.text_io%s
   --  ada.text_io%b
   --  system.assertions%s
   --  system.assertions%b
   --  system.bit_ops%s
   --  system.bit_ops%b
   --  ada.strings.maps%s
   --  ada.strings.maps%b
   --  ada.strings.search%s
   --  ada.strings.search%b
   --  ada.strings.unbounded%s
   --  ada.strings.unbounded%b
   --  system.img_lli%s
   --  system.img_uns%s
   --  system.img_util%s
   --  system.img_util%b
   --  system.img_flt%s
   --  system.pool_global%s
   --  system.pool_global%b
   --  gnat.sockets%s
   --  gnat.sockets.linker_options%s
   --  gnat.sockets.poll%s
   --  gnat.sockets.thin_common%s
   --  gnat.sockets.thin_common%b
   --  gnat.sockets.thin%s
   --  gnat.sockets.thin%b
   --  gnat.sockets%b
   --  gnat.sockets.poll%b
   --  system.strings.stream_ops%s
   --  system.strings.stream_ops%b
   --  telemetry_read_test%b
   --  END ELABORATION ORDER

end ada_main;
