# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
A_IN { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
A_OUT { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
}
dict set axilite_register_dict control $port_control


