-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../project_2.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M_clk_wiz.v" \
  "../../../../project_2.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

