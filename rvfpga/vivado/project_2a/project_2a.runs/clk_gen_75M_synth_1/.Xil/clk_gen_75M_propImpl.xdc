set_property SRC_FILE_INFO {cfile:c:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc rfile:../../../project_2a.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports i_clk_100M]] 0.1
