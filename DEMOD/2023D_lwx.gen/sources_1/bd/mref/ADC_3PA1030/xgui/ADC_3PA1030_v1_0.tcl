# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_BITS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUT_BITS" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_BITS { PARAM_VALUE.ADC_BITS } {
	# Procedure called to update ADC_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_BITS { PARAM_VALUE.ADC_BITS } {
	# Procedure called to validate ADC_BITS
	return true
}

proc update_PARAM_VALUE.OUT_BITS { PARAM_VALUE.OUT_BITS } {
	# Procedure called to update OUT_BITS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUT_BITS { PARAM_VALUE.OUT_BITS } {
	# Procedure called to validate OUT_BITS
	return true
}


proc update_MODELPARAM_VALUE.ADC_BITS { MODELPARAM_VALUE.ADC_BITS PARAM_VALUE.ADC_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_BITS}] ${MODELPARAM_VALUE.ADC_BITS}
}

proc update_MODELPARAM_VALUE.OUT_BITS { MODELPARAM_VALUE.OUT_BITS PARAM_VALUE.OUT_BITS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUT_BITS}] ${MODELPARAM_VALUE.OUT_BITS}
}

