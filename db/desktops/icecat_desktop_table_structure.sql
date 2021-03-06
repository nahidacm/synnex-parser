-- auto-generated definition
create table icecat_desktop
(
  id                                                   int auto_increment
    primary key,
  Requested_prod_id                                    varchar(511)  null,
  Requested_GTINEANUPC                                 varchar(255)  null,
  Requested_Icecat_id                                  varchar(255)  null,
  ErrorMessage                                         varchar(511)  null,
  Supplier                                             varchar(127)  null,
  Prod_id                                              varchar(255)  null,
  Icecat_id                                            varchar(255)  null,
  GTINEANUPC                                           text          null,
  Category                                             varchar(511)  null,
  CatId                                                varchar(255)  null,
  ProductFamily                                        varchar(511)  null,
  ProductSeries                                        varchar(511)  null,
  Model                                                varchar(511)  null,
  Updated                                              varchar(511)  null,
  Quality                                              varchar(255)  null,
  On_Market                                            varchar(255)  null,
  Product_Views                                        varchar(255)  null,
  HighPic                                              varchar(511)  null,
  HighPic_Resolution                                   varchar(255)  null,
  LowPic                                               varchar(511)  null,
  Pic500x500                                           varchar(511)  null,
  ThumbPic                                             varchar(511)  null,
  Folder_PDF                                           text          null,
  Folder_Manual_PDF                                    text          null,
  ProductTitle                                         varchar(1023) null,
  ShortDesc                                            text          null,
  ShortSummaryDescription                              text          null,
  LongSummaryDescription                               text          null,
  LongDesc                                             text          null,
  Short_Marketing_Text                                 text          null,
  SEO_Title                                            varchar(1023) null,
  SEO_Description                                      text          null,
  SEO_Keywords                                         varchar(511)  null,
  ProductGallery                                       text          null,
  ProductGallery_Resolution                            varchar(1023) null,
  ProductGallery_ExpirationDate                        varchar(23)   null,
  three_sixty                                          varchar(511)  null,
  EU_Energy_Label                                      varchar(511)  null,
  EU_Product_Fiche                                     varchar(511)  null,
  PDF                                                  varchar(4079) null,
  Videomp4                                             text          null,
  Other_Multimedia                                     text          null,
  ProductMultimediaObject_ExpirationDate               varchar(511)  null,
  ReasonsToBuy                                         text          null,
  Bullet_Points                                        text          null,
  Your_product_ID                                      varchar(511)  null,
  Height_without_stand                                 varchar(7)    null,
  Intel_Demand_Based_Switching                         varchar(1)    null,
  FSB_Parity                                           varchar(1)    null,
  Number_of_displays_supported                         varchar(11)   null,
  Width_without_stand                                  varchar(7)    null,
  Depth_without_stand                                  varchar(7)    null,
  HP_JumpStart                                         varchar(1)    null,
  Product_codename                                     varchar(13)   null,
  Product_series                                       varchar(62)   null,
  Number_of_memory_slots                               varchar(11)   null,
  Intel_Dual_Display_Capable_Technology                varchar(1)    null,
  Intel_AntiTheft_Technology_Intel_AT                  varchar(1)    null,
  NVIDIA_GSYNC                                         varchar(30)   null,
  Cable_lock_slot_type                                 varchar(10)   null,
  Intel_Fast_Memory_Access                             varchar(1)    null,
  Intel_FDI_Technology                                 varchar(1)    null,
  NVIDIA_GameWorks_VR                                  varchar(30)   null,
  BIOS_memory_size                                     varchar(5)    null,
  Package_width                                        varchar(6)    null,
  Package_height                                       varchar(6)    null,
  Package_depth                                        varchar(6)    null,
  Power_supply_input_voltage                           varchar(9)    null,
  HP_Security_tools                                    varchar(181)  null,
  AC_adapter_output_voltage                            varchar(5)    null,
  Intel_Virtualization_Technology_Intel_VT             varchar(9)    null,
  Storage_drive_sizes_supported                        varchar(4)    null,
  Touch_technology                                     varchar(11)   null,
  Cooling_type                                         varchar(7)    null,
  Intel_High_Definition_Audio_Intel_HD_Audio           varchar(1)    null,
  Certification                                        varchar(320)  null,
  Tilt_angle_range                                     varchar(8)    null,
  Hard_drive_size                                      varchar(4)    null,
  Camera_resolution                                    varchar(18)   null,
  Package_weight                                       varchar(7)    null,
  Warranty_card                                        varchar(1)    null,
  LAN_controller                                       varchar(28)   null,
  Quick_start_guide                                    varchar(1)    null,
  Pen_included                                         varchar(1)    null,
  Motherboard_form_factor                              varchar(5)    null,
  Power_supply_input_frequency                         varchar(7)    null,
  USB_SleepandCharge                                   varchar(1)    null,
  USB_SleepandCharge_ports                             varchar(7)    null,
  Storage_temperature_TT                               varchar(11)   null,
  Onboard_graphics_adapter_burst_frequency             varchar(128)  null,
  VESA_mounting                                        varchar(1)    null,
  Memory_channels                                      varchar(4)    null,
  CUDA                                                 varchar(30)   null,
  HP_Software_provided                                 varchar(215)  null,
  ARK_ID                                               varchar(11)   null,
  Number_of_525_bays                                   varchar(11)   null,
  Drivers_included                                     varchar(1)    null,
  ECC                                                  varchar(1)    null,
  Manual                                               varchar(1)    null,
  `3D`                                                 varchar(1)    null,
  Graphics_adapter_family                              varchar(9)    null,
  BIOS_type                                            varchar(6)    null,
  Mini_PCI_Express_slots                               varchar(7)    null,
  Cable_lock_slot                                      varchar(1)    null,
  Operating_temperature_TT                             varchar(10)   null,
  Intel_Smart_Response_Technology                      varchar(1)    null,
  Discrete_graphics_memory_type                        varchar(5)    null,
  RoHS_compliance                                      varchar(1)    null,
  Memory_form_factor                                   varchar(12)   null,
  Water_cooling_system                                 varchar(1)    null,
  HP_Management_tools                                  varchar(219)  null,
  PCI_Express_x4_Gen_3x_slots                          varchar(11)   null,
  Number_of_discrete_graphics_adapters                 varchar(7)    null,
  Optional_operating_system_supplied                   varchar(14)   null,
  Total_megapixels                                     varchar(7)    null,
  Storage_drive_interface                              varchar(32)   null,
  Supported_storage_drive_types                        varchar(8)    null,
  Number_of_processors_supported                       varchar(7)    null,
  Number_of_SATA_III_connectors                        varchar(11)   null,
  Builtin_processor                                    varchar(1)    null,
  Product_family                                       varchar(19)   null,
  HP_Support_Assistant                                 varchar(1)    null,
  HDMI_version                                         varchar(4)    null,
  Compatible_processor_series                          varchar(15)   null,
  L3_cache                                             varchar(4)    null,
  HP_ePrint                                            varchar(1)    null,
  Supported_memory_types                               varchar(10)   null,
  Supported_memory_clock_speeds                        varchar(8)    null,
  Power_supply_type                                    varchar(19)   null,
  Display_surface                                      varchar(4)    null,
  Panel_type                                           varchar(3)    null,
  Number_of_storage_drives_supported                   varchar(11)   null,
  Graphics_adapter                                     varchar(22)   null,
  RMS_rated_power                                      varchar(3)    null,
  Memory_voltage                                       varchar(5)    null,
  PCI_Express_x1_slots                                 varchar(11)   null,
  Power_cord_included                                  varchar(1)    null,
  Memory_bandwidth_max                                 varchar(9)    null,
  PCI_Express_x4_slots                                 varchar(7)    null,
  DVDR_Double_Layer_write_speed                        varchar(30)   null,
  DVDR_Double_Layer_write_speed_2                      varchar(30)   null,
  DVDR_write_speed                                     varchar(30)   null,
  DVDR_write_speed_2                                   varchar(30)   null,
  DVDRW_write_speed                                    varchar(30)   null,
  DVDRW_write_speed_2                                  varchar(30)   null,
  DVDR_Double_Layer_read_speed                         varchar(30)   null,
  DVDR_read_speed                                      varchar(30)   null,
  CDRW_write_speed                                     varchar(30)   null,
  CDR_write_speed                                      varchar(30)   null,
  Full_HD                                              varchar(30)   null,
  eSATA_ports_quantity                                 varchar(30)   null,
  Disc_types_supported                                 varchar(30)   null,
  Audio_output                                         varchar(1)    null,
  Handheld_remote_control                              varchar(30)   null,
  Processor_manufacturer                               varchar(5)    null,
  TV_tuner_integrated                                  varchar(30)   null,
  LightScribe                                          varchar(1)    null,
  Speakers_manufacturer                                varchar(14)   null,
  SmartCard_slot                                       varchar(1)    null,
  SPDIF_out_port                                       varchar(1)    null,
  DVDRW_read_speed                                     varchar(30)   null,
  DVDRW_read_speed_2                                   varchar(30)   null,
  PCI_Express_x4_Gen_1x_slots                          varchar(7)    null,
  Processing_Die_size                                  varchar(30)   null,
  Number_of_Processing_Die_Transistors                 varchar(30)   null,
  Physical_Address_Extension_PAE                       varchar(30)   null,
  DVDR_Double_Layer_read_speed_2                       varchar(30)   null,
  Conflict_Free                                        varchar(1)    null,
  Camera_HD_type                                       varchar(7)    null,
  Physical_Address_Extension_PAE_2                     varchar(30)   null,
  Onboard_graphics_adapter_4K_support                  varchar(1)    null,
  Graphics_adapter_HDMI_ports_quantity                 varchar(30)   null,
  DC_input_voltage                                     varchar(7)    null,
  `80_PLUS_certification`                              varchar(30)   null,
  `64bit_computing`                                    varchar(1)    null,
  FireWire_800                                         varchar(30)   null,
  CDRW_read_speed                                      varchar(30)   null,
  CDR_read_speed                                       varchar(30)   null,
  Password_protection_type                             varchar(13)   null,
  PCI_slots                                            varchar(7)    null,
  Optical_drive_interface                              varchar(4)    null,
  eSATAUSB_30_ports_quantity                           varchar(30)   null,
  eSATAUSB_20_ports_quantity                           varchar(30)   null,
  Operating_altitude                                   varchar(30)   null,
  Maximum_graphics_adapter_memory                      varchar(8)    null,
  Cables_included                                      varchar(30)   null,
  LED_indicators                                       varchar(1)    null,
  RAID_levels                                          varchar(15)   null,
  Display_brightness                                   varchar(9)    null,
  Onoff_switch                                         varchar(1)    null,
  Serial_port_via_internal_header                      varchar(1)    null,
  Intel_HD_Graphics                                    varchar(1)    null,
  Intel_Builtin_Visuals_Technology                     varchar(1)    null,
  Password_protection                                  varchar(1)    null,
  Weight_without_stand                                 varchar(7)    null,
  Graphics_adapter_Open_GL_support                     varchar(1)    null,
  AC_adapter_frequency                                 varchar(5)    null,
  Intel_Visual_BIOS                                    varchar(1)    null,
  Recovery_operating_system                            varchar(15)   null,
  Consumer_infrared_headers                            varchar(1)    null,
  Internal_USB_20_ports_quantity                       varchar(11)   null,
  Intel_Express_BIOS_update                            varchar(1)    null,
  Intel_Unite                                          varchar(1)    null,
  AC_adapter_input_voltage                             varchar(9)    null,
  Operating_relative_humidity_HH                       varchar(8)    null,
  Virtual_Reality_VR_ready                             varchar(30)   null,
  Intel_Identity_Protection_Technology_version         varchar(11)   null,
  WLAN_controller_model                                varchar(32)   null,
  DisplayPort_version                                  varchar(11)   null,
  Trusted_Platform_Module_TPM_version                  varchar(11)   null,
  Internal_USB_30_ports_quantity                       varchar(11)   null,
  Mini_DisplayPorts_quantity                           varchar(11)   null,
  Graphics_adapter_DVII_ports_quantity                 varchar(7)    null,
  Intel_Smart_Response_Technology_version              varchar(11)   null,
  Audio_system                                         varchar(2)    null,
  Bundled_software                                     varchar(30)   null,
  HP_Recovery_Manager                                  varchar(1)    null,
  Graphics_adapter_Mini_DisplayPort_ports_quantity     varchar(7)    null,
  CPU_multiplier_buscore_ratio                         varchar(11)   null,
  Housing_material                                     varchar(14)   null,
  AC_adapter_output_current                            varchar(6)    null,
  Number_of_power_supply_units                         varchar(7)    null,
  HP_speaker_type                                      varchar(16)   null,
  HP_front_camera                                      varchar(9)    null,
  Parallel_ports_quantity                              varchar(7)    null,
  Wall_mountable                                       varchar(1)    null,
  HDD_user_password                                    varchar(1)    null,
  BIOS_password                                        varchar(1)    null,
  Firewire_IEEE_1394_ports                             varchar(30)   null,
  NonECC                                               varchar(1)    null,
  AC_adapter_included                                  varchar(1)    null,
  Ethernet_LAN_data_rates                              varchar(18)   null,
  Processor_ARK_ID                                     varchar(11)   null,
  Conflict_Free_processor                              varchar(1)    null,
  Memory_channels_supported_by_processor               varchar(4)    null,
  System_bus_rate                                      varchar(6)    null,
  Onboard_graphics_adapter_base_frequency              varchar(7)    null,
  Memory_clock_speeds_supported_by_processor           varchar(23)   null,
  Processor_cache_type                                 varchar(11)   null,
  Maximum_number_of_PCI_Express_lanes                  varchar(11)   null,
  PCI_Express_configurations                           varchar(19)   null,
  Memory_types_supported_by_processor                  varchar(38)   null,
  Maximum_internal_memory_supported_by_processor       varchar(6)    null,
  Optical_drive_type                                   varchar(15)   null,
  Operating_system_architecture                        varchar(6)    null,
  Processor_socket                                     varchar(255)  null,
  Intel_Stable_Image_Platform_Program_SIPP             varchar(1)    null,
  Supported_instruction_sets                           varchar(29)   null,
  CPU_configuration_max                                varchar(7)    null,
  Intel_Virtualization_Technology_VTx                  varchar(1)    null,
  Processor_codename                                   varchar(11)   null,
  Bus_type                                             varchar(4)    null,
  ECC_supported_by_processor                           varchar(1)    null,
  Number_of_displays_supported_onboard_graphics        varchar(11)   null,
  Discrete_graphics_adapter                            varchar(1)    null,
  Scalability                                          varchar(2)    null,
  Thermal_solution_specification                       varchar(9)    null,
  Thunderbolt_3_ports_quantity                         varchar(7)    null,
  VGA_DSub_ports_quantity                              varchar(7)    null,
  Intel_Secure_Key                                     varchar(1)    null,
  Memory_clock_speed                                   varchar(8)    null,
  USB_31_31_Gen_2_TypeC_ports_quantity                 varchar(11)   null,
  USB_30_31_Gen_1_TypeC_ports_quantity                 varchar(11)   null,
  Weight                                               varchar(7)    null,
  HDMI_ports_quantity                                  varchar(11)   null,
  Memory_slots                                         varchar(10)   null,
  Intel_Enhanced_Halt_State                            varchar(1)    null,
  Onboard_graphics_adapter_dynamic_frequency_max       varchar(8)    null,
  USB_31_31_Gen_2_TypeA_ports_quantity                 varchar(11)   null,
  Processor_package_size                               varchar(13)   null,
  Intel_Clear_Video_Technology_for_MID                 varchar(1)    null,
  Onboard_graphics_adapter_ID                          varchar(11)   null,
  Onboard_graphics_adapter_OpenGL_version              varchar(11)   null,
  Processor_operating_modes                            varchar(14)   null,
  Maximum_onboard_graphics_adapter_memory              varchar(7)    null,
  Microphone_in                                        varchar(1)    null,
  Headphone_outputs                                    varchar(11)   null,
  Processor_cache                                      varchar(5)    null,
  Total_storage_capacity                               varchar(7)    null,
  Processor_lithography                                varchar(5)    null,
  USB_30_31_Gen_1_TypeA_ports_quantity                 varchar(11)   null,
  Internal_memory                                      varchar(5)    null,
  Storage_media                                        varchar(7)    null,
  Onboard_graphics_adapter_model                       varchar(15)   null,
  PCI_Express_slots_version                            varchar(11)   null,
  Internal_memory_type                                 varchar(11)   null,
  Thermal_Design_Power_TDP                             varchar(5)    null,
  Operating_system_installed                           varchar(22)   null,
  USB_20_ports_quantity                                varchar(11)   null,
  Processor_threads                                    varchar(11)   null,
  Processor_family                                     varchar(128)  null,
  Colour_of_product                                    varchar(13)   null,
  Ethernet_LAN                                         varchar(1)    null,
  Processor_frequency                                  varchar(8)    null,
  Product_type                                         varchar(16)   null,
  Ethernet_LAN_RJ45_ports                              varchar(11)   null,
  Onboard_graphics_adapter                             varchar(1)    null,
  Processor_cores                                      varchar(11)   null,
  Intel_Hyper_Threading_Technology_Intel_HT_Technology varchar(1)    null,
  Intel_Turbo_Boost_Technology                         varchar(3)    null,
  Intel_Trusted_Execution_Technology                   varchar(1)    null,
  Idle_States                                          varchar(1)    null,
  Processor_boost_frequency                            varchar(8)    null,
  Intel_Clear_Video_Technology                         varchar(1)    null,
  Intel_InTru_3D_Technology                            varchar(1)    null,
  Intel_OS_Guard                                       varchar(1)    null,
  Discrete_graphics_adapter_model                      varchar(26)   null,
  Depth                                                varchar(8)    null,
  Width                                                varchar(8)    null,
  Height                                               varchar(8)    null,
  Intel_VTx_with_Extended_Page_Tables_EPT              varchar(1)    null,
  Thermal_Monitoring_Technologies                      varchar(1)    null,
  Embedded_options_available                           varchar(1)    null,
  Execute_Disable_Bit                                  varchar(1)    null,
  Enhanced_Intel_SpeedStep_Technology                  varchar(1)    null,
  Intel_AES_New_Instructions_Intel_AESNI               varchar(1)    null,
  Intel_64                                             varchar(1)    null,
  Intel_Virtualization_Technology_for_Directed_IO_VTd  varchar(1)    null,
  Intel_Clear_Video_HD_Technology_Intel_CVT_HD         varchar(1)    null,
  Intel_Quick_Sync_Video_Technology                    varchar(1)    null,
  Maximum_internal_memory                              varchar(6)    null,
  Number_of_processors_installed                       varchar(7)    null,
  Chassis_type                                         varchar(13)   null,
  Trusted_Platform_Module_TPM                          varchar(1)    null,
  DCin_jack                                            varchar(1)    null,
  Intel_Smart_Cache                                    varchar(1)    null,
  PCI_Express_x16_slots                                varchar(11)   null,
  Thunderbolt_ports_quantity                           varchar(11)   null,
  Onboard_graphics_adapter_family                      varchar(24)   null,
  Builtin_camera                                       varchar(1)    null,
  LED_backlight                                        varchar(1)    null,
  Display_resolution                                   varchar(18)   null,
  Display_diagonal                                     varchar(15)   null,
  PS2_ports_quantity                                   varchar(11)   null,
  Audio_chip                                           varchar(16)   null,
  Number_of_35_bays                                    varchar(11)   null,
  Intel_Small_Business_Advantage_Intel_SBA             varchar(1)    null,
  Optical_drives_quantity                              varchar(7)    null,
  Number_of_25_bays                                    varchar(11)   null,
  Compatible_memory_cards                              varchar(20)   null,
  EPEAT_compliance                                     varchar(6)    null,
  Memory_slots_type                                    varchar(7)    null,
  Solidstate_drive_interface                           varchar(20)   null,
  Bluetooth_version                                    varchar(6)    null,
  Intel_Flex_Memory_Access                             varchar(1)    null,
  HD_type                                              varchar(11)   null,
  Builtin_microphone                                   varchar(1)    null,
  PCI_Express_x16_Gen_3x_slots                         varchar(7)    null,
  Autonomy_mode                                        varchar(1)    null,
  Market_positioning                                   varchar(8)    null,
  Serial_ports_quantity                                varchar(7)    null,
  Audio_output_channels                                varchar(12)   null,
  Number_of_execution_units                            varchar(11)   null,
  PCI_Express_x1_Gen_3x_slots                          varchar(11)   null,
  Intel_Rapid_Storage_Technology                       varchar(1)    null,
  Volume                                               varchar(5)    null,
  Touchscreen                                          varchar(1)    null,
  Intel_Optane_Memory_Ready                            varchar(1)    null,
  Aspect_ratio                                         varchar(4)    null,
  Configurable_TDPdown_frequency                       varchar(8)    null,
  Discrete_graphics_adapter_memory                     varchar(4)    null,
  Screen_shape                                         varchar(4)    null,
  Builtin_speakers                                     varchar(1)    null,
  Intel_My_WiFi_Technology_Intel_MWT                   varchar(1)    null,
  AC_adapter_power                                     varchar(5)    null,
  Intel_Optane_Memory_module_installed                 varchar(1)    null,
  Detachable_display                                   varchar(1)    null,
  Intel_Stable_Image_Platform_Program_SIPP_version     varchar(11)   null,
  Intel_TSXNI_version                                  varchar(11)   null,
  Processor_series                                     varchar(34)   null,
  Intel_Software_Guard_Extensions_Intel_SGX            varchar(1)    null,
  Tjunction                                            varchar(6)    null,
  Intel_Identity_Protection_Technology_Intel_IPT       varchar(1)    null,
  Card_reader_integrated                               varchar(1)    null,
  Number_of_storage_drives_installed                   varchar(11)   null,
  Hard_drive_capacity                                  varchar(7)    null,
  Motherboard_chipset                                  varchar(18)   null,
  Keyboard_included                                    varchar(1)    null,
  Mouse_included                                       varchar(1)    null,
  Power_supply                                         varchar(6)    null,
  Stepping                                             varchar(2)    null,
  Intel_TSXNI                                          varchar(1)    null,
  Memory_layout_slots_x_size                           varchar(9)    null,
  Processor_code                                       varchar(5)    null,
  Display_included                                     varchar(1)    null,
  DisplayPorts_quantity                                varchar(11)   null,
  DVI_port                                             varchar(1)    null,
  Memory_voltage_supported_by_processor                varchar(6)    null,
  WiFi                                                 varchar(1)    null,
  Onboard_graphics_adapter_DirectX_version             varchar(11)   null,
  Energy_Star_certified                                varchar(1)    null,
  Number_of_hard_drives_installed                      varchar(7)    null,
  Intel_segment_tagging                                varchar(26)   null,
  Graphics_IMC_lithography                             varchar(5)    null,
  Intel_Insider                                        varchar(1)    null,
  Intel_Wireless_Display_Intel_WiDi                    varchar(1)    null,
  Intel_vPro_Technology                                varchar(1)    null,
  Cabling_technology                                   varchar(20)   null,
  Intel_Small_Business_Advantage_SBA_version           varchar(11)   null,
  Number_of_QPI_links                                  varchar(30)   null,
  Intel_Secure_Key_Technology_version                  varchar(11)   null,
  Tcase                                                varchar(8)    null,
  WiFi_standards                                       varchar(65)   null,
  Placement_supported                                  varchar(19)   null,
  Memory_bandwidth_supported_by_processor_max          varchar(9)    null,
  Lineout                                              varchar(1)    null,
  Number_of_SSDs_installed                             varchar(7)    null,
  Solidstate_drive_capacity                            varchar(7)    null,
  Linein                                               varchar(1)    null,
  Hard_drive_interface                                 varchar(14)   null,
  Bluetooth                                            varchar(1)    null,
  Combo_headphonemic_port                              varchar(1)    null,
  Hard_drive_speed                                     varchar(8)    null,
  Processor_model                                      varchar(8)    null
);
