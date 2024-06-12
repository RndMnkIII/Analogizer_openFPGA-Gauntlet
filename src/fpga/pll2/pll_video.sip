set_global_assignment -entity "pll_video" -library "lib_pll_video" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "pll_video" -library "lib_pll_video" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "pll_video" -library "lib_pll_video" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_pll_video" -name SPD_FILE [file join $::quartus(sip_path) "pll_video.spd"]

set_global_assignment -library "lib_pll_video" -name MISC_FILE [file join $::quartus(sip_path) "pll_video_sim/pll_video.vo"]
