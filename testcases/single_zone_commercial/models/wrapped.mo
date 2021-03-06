model wrapped "Wrapped model"
	// Input overwrite
<<<<<<< HEAD
=======
	Modelica.Blocks.Interfaces.RealInput over_pump_DH_u(unit="1", min=0.0, max=1.0) "District heating pump speed control signal";
	Modelica.Blocks.Interfaces.BooleanInput over_pump_DH_activate "Activation for District heating pump speed control signal";
>>>>>>> 8af2ca15271259698705d1abfc2d3b02b38478c7
	Modelica.Blocks.Interfaces.RealInput OverTzone_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput OverTzone_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput overTsup_u(unit="K", min=288.15, max=313.15) "Supply air temperature for heating";
	Modelica.Blocks.Interfaces.BooleanInput overTsup_activate "Activation for Supply air temperature for heating";
<<<<<<< HEAD
	Modelica.Blocks.Interfaces.RealInput airHandlingUnit_OverFansup_u(unit="1", min=0.0, max=1.0) "fan speed control signal";
	Modelica.Blocks.Interfaces.BooleanInput airHandlingUnit_OverFansup_activate "Activation for fan speed control signal";
	Modelica.Blocks.Interfaces.RealInput overpumpDH_u(unit="1", min=0.0, max=1.0) "District heating pump speed control signal";
	Modelica.Blocks.Interfaces.BooleanInput overpumpDH_activate "Activation for District heating pump speed control signal";
	Modelica.Blocks.Interfaces.RealInput OverCO2setpoint_u(unit="ppm", min=400.0, max=1000.0) "Indoor CO2 concentration setpoint";
	Modelica.Blocks.Interfaces.BooleanInput OverCO2setpoint_activate "Activation for Indoor CO2 concentration setpoint";
	Modelica.Blocks.Interfaces.RealInput airHandlingUnit_OverFanexhaust_u(unit="1", min=0.0, max=1.0) "Fan speed control signal";
	Modelica.Blocks.Interfaces.BooleanInput airHandlingUnit_OverFanexhaust_activate "Activation for Fan speed control signal";
	// Out read
	Modelica.Blocks.Interfaces.RealOutput airHandlingUnit_readsupair_y(unit="kg/s") = mod.airHandlingUnit.readsupair.y "Supply air mass flowrate";
	Modelica.Blocks.Interfaces.RealOutput airHandlingUnit_readTsupair_y(unit="K") = mod.airHandlingUnit.readTsupair.y "Supply air temperature";
	Modelica.Blocks.Interfaces.RealOutput readQel_y(unit="W") = mod.readQel.y "Electrical power consumption for fan and pump";
	Modelica.Blocks.Interfaces.RealOutput readQelfan_y(unit="W") = mod.readQelfan.y "Electrical power consumption of fan";
	Modelica.Blocks.Interfaces.RealOutput readTsupsetpoint_y(unit="K") = mod.readTsupsetpoint.y "Supply air temperature setpoint";
	Modelica.Blocks.Interfaces.RealOutput airHandlingUnit_readTretair_y(unit="K") = mod.airHandlingUnit.readTretair.y "Return air temperature";
	Modelica.Blocks.Interfaces.RealOutput readQh_y(unit="W") = mod.readQh.y "Heating thermal power consumption";
	Modelica.Blocks.Interfaces.RealOutput readQelpump_y(unit="W") = mod.readQelpump.y "Electrical power consumption of pump";
	Modelica.Blocks.Interfaces.RealOutput readTzonesetpoint_y(unit="K") = mod.readTzonesetpoint.y "Zone air temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealOutput readCO2_y(unit="ppm") = mod.readCO2.y "Indoor CO2 concentration";
	Modelica.Blocks.Interfaces.RealOutput readTzone_y(unit="K") = mod.readTzone.y "Zone air temperature";
	// Original model
	OU44Emulator.Models.Validation.RealOccupancy mod(
		OverTzone(uExt(y=OverTzone_u),activate(y=OverTzone_activate)),
		overTsup(uExt(y=overTsup_u),activate(y=overTsup_activate)),
		airHandlingUnit.OverFansup(uExt(y=airHandlingUnit_OverFansup_u),activate(y=airHandlingUnit_OverFansup_activate)),
		overpumpDH(uExt(y=overpumpDH_u),activate(y=overpumpDH_activate)),
		OverCO2setpoint(uExt(y=OverCO2setpoint_u),activate(y=OverCO2setpoint_activate)),
		airHandlingUnit.OverFanexhaust(uExt(y=airHandlingUnit_OverFanexhaust_u),activate(y=airHandlingUnit_OverFanexhaust_activate))) "Original model with overwrites";
=======
	Modelica.Blocks.Interfaces.RealInput airHandlingUnit_OverFan_exhaust_u(unit="1", min=0.0, max=1.0) "Fan speed control signal";
	Modelica.Blocks.Interfaces.BooleanInput airHandlingUnit_OverFan_exhaust_activate "Activation for Fan speed control signal";
	Modelica.Blocks.Interfaces.RealInput airHandlingUnit_OverFan_sup_u(unit="1", min=0.0, max=1.0) "fan speed control signal";
	Modelica.Blocks.Interfaces.BooleanInput airHandlingUnit_OverFan_sup_activate "Activation for fan speed control signal";
	Modelica.Blocks.Interfaces.RealInput Over_CO2_setpoint_u(unit="ppm", min=400.0, max=1000.0) "Indoor CO2 concentration setpoint";
	Modelica.Blocks.Interfaces.BooleanInput Over_CO2_setpoint_activate "Activation for Indoor CO2 concentration setpoint";
	// Out read
	Modelica.Blocks.Interfaces.RealOutput airHandlingUnit_read__sup_air_y(unit="kg/s") = mod.airHandlingUnit.read__sup_air.y "Supply air mass flowrate";
	Modelica.Blocks.Interfaces.RealOutput read_Q_el_pump_y(unit="W") = mod.read_Q_el_pump.y "Electrical power consumption of pump";
	Modelica.Blocks.Interfaces.RealOutput airHandlingUnit_read_T_sup_air_y(unit="K") = mod.airHandlingUnit.read_T_sup_air.y "Supply air temperature";
	Modelica.Blocks.Interfaces.RealOutput airHandlingUnit_read_T_ret_air_y(unit="K") = mod.airHandlingUnit.read_T_ret_air.y "Return air temperature";
	Modelica.Blocks.Interfaces.RealOutput read_Q_el_y(unit="W") = mod.read_Q_el.y "Electrical power consumption for fan and pump";
	Modelica.Blocks.Interfaces.RealOutput read_CO2_y(unit="ppm") = mod.read_CO2.y "Indoor CO2 concentration";
	Modelica.Blocks.Interfaces.RealOutput read_T_zone_setpoint_y(unit="K") = mod.read_T_zone_setpoint.y "Zone air temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealOutput read_Tzone_y(unit="K") = mod.read_Tzone.y "Zone air temperature";
	Modelica.Blocks.Interfaces.RealOutput read_Q_el_fan_y(unit="W") = mod.read_Q_el_fan.y "Electrical power consumption of fan";
	Modelica.Blocks.Interfaces.RealOutput read_Q_h_y(unit="W") = mod.read_Q_h.y "Heating thermal power consumption";
	Modelica.Blocks.Interfaces.RealOutput read_T_sup_setpoint_y(unit="K") = mod.read_T_sup_setpoint.y "Supply air temperature setpoint";
	// Original model
	OU44Emulator.Models.Validation.RealOccupancy mod(
		over_pump_DH(uExt(y=over_pump_DH_u),activate(y=over_pump_DH_activate)),
		OverTzone(uExt(y=OverTzone_u),activate(y=OverTzone_activate)),
		overTsup(uExt(y=overTsup_u),activate(y=overTsup_activate)),
		airHandlingUnit.OverFan_exhaust(uExt(y=airHandlingUnit_OverFan_exhaust_u),activate(y=airHandlingUnit_OverFan_exhaust_activate)),
		airHandlingUnit.OverFan_sup(uExt(y=airHandlingUnit_OverFan_sup_u),activate(y=airHandlingUnit_OverFan_sup_activate)),
		Over_CO2_setpoint(uExt(y=Over_CO2_setpoint_u),activate(y=Over_CO2_setpoint_activate))) "Original model with overwrites";
>>>>>>> 8af2ca15271259698705d1abfc2d3b02b38478c7
end wrapped;
