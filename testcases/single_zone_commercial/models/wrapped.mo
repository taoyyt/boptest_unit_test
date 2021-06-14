model wrapped "Wrapped model"
	// Input overwrite
	Modelica.Blocks.Interfaces.RealInput OverTzone_u(unit="K", min=283.15, max=303.15) "Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.BooleanInput OverTzone_activate "Activation for Zone temperature setpoint for heating";
	Modelica.Blocks.Interfaces.RealInput overTsup_u(unit="K", min=288.15, max=313.15) "Supply air temperature for heating";
	Modelica.Blocks.Interfaces.BooleanInput overTsup_activate "Activation for Supply air temperature for heating";
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
end wrapped;
