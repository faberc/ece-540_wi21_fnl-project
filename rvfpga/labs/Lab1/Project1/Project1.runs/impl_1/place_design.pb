
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Bank IO standard internal Vref conflict: Conflicting INTERNAL_VREF constraint in Bank %s.  Some ports in this bank, for example, %s   (SSTL18_II, Vref=0.900V) 
 at site %s conflict with constrained INTERNAL_VREF of 0.750V.%s*DRC2.
 "
342default:default2default:default2D
 ".
ddram_dq[0]ddram_dq[0]2default:default2default:default2@
 "*
	IOB_X1Y54
	IOB_X1Y542default:default2default:default24
 DRC|Pin Planning|IO Standard2default:default8ZBIIVRC-1h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[0]"ddr2/ldc/storage_10_reg_0/WEBWE[0]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[0]"ddr2/ldc/storage_10_reg_0/WEBWE[0]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[1]"ddr2/ldc/storage_10_reg_0/WEBWE[1]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[1]"ddr2/ldc/storage_10_reg_0/WEBWE[1]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[2]"ddr2/ldc/storage_10_reg_0/WEBWE[2]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[2]"ddr2/ldc/storage_10_reg_0/WEBWE[2]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[3]"ddr2/ldc/storage_10_reg_0/WEBWE[3]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[3]"ddr2/ldc/storage_10_reg_0/WEBWE[3]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[4]"ddr2/ldc/storage_10_reg_0/WEBWE[4]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[4]"ddr2/ldc/storage_10_reg_0/WEBWE[4]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[5]"ddr2/ldc/storage_10_reg_0/WEBWE[5]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[5]"ddr2/ldc/storage_10_reg_0/WEBWE[5]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[6]"ddr2/ldc/storage_10_reg_0/WEBWE[6]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[6]"ddr2/ldc/storage_10_reg_0/WEBWE[6]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[7]"ddr2/ldc/storage_10_reg_0/WEBWE[7]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_0	ddr2/ldc/storage_10_reg_02default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_0/WEBWE[7]"ddr2/ldc/storage_10_reg_0/WEBWE[7]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2z
 "d
&ddr2/ldc/soc_read_r_buffer_syncfifo_re&ddr2/ldc/soc_read_r_buffer_syncfifo_re2default:default2default:default2?
 "?
Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[0].i_sync/reg_q_reg[1]	Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[0].i_sync/reg_q_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2z
 "d
&ddr2/ldc/soc_read_r_buffer_syncfifo_re&ddr2/ldc/soc_read_r_buffer_syncfifo_re2default:default2default:default2?
 "?
Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[1].i_sync/reg_q_reg[1]	Ecdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/gen_sync[1].i_sync/reg_q_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2z
 "d
&ddr2/ldc/soc_read_r_buffer_syncfifo_re&ddr2/ldc/soc_read_r_buffer_syncfifo_re2default:default2default:default2?
 "~
3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[0]	3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB36 async control check: The RAMB36E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2\
 "F
ddr2/ldc/storage_13_reg	ddr2/ldc/storage_13_reg2default:default2default:default2l
 "V
ddr2/ldc/storage_13_reg/ENARDENddr2/ldc/storage_13_reg/ENARDEN2default:default2default:default2z
 "d
&ddr2/ldc/soc_read_r_buffer_syncfifo_re&ddr2/ldc/soc_read_r_buffer_syncfifo_re2default:default2default:default2?
 "~
3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[1]	3cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_src/wptr_q_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB36E12default:default8Z	REQP-1839h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[0]"ddr2/ldc/storage_10_reg_1/WEBWE[0]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[0]"ddr2/ldc/storage_10_reg_1/WEBWE[0]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[1]"ddr2/ldc/storage_10_reg_1/WEBWE[1]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[1]"ddr2/ldc/storage_10_reg_1/WEBWE[1]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[2]"ddr2/ldc/storage_10_reg_1/WEBWE[2]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[2]"ddr2/ldc/storage_10_reg_1/WEBWE[2]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[3]"ddr2/ldc/storage_10_reg_1/WEBWE[3]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.a_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2`
 "J
ddr2/ldc/storage_10_reg_1	ddr2/ldc/storage_10_reg_12default:default2default:default2r
 "\
"ddr2/ldc/storage_10_reg_1/WEBWE[3]"ddr2/ldc/storage_10_reg_1/WEBWE[3]2default:default2default:default2v
 "`
$ddr2/ldc/vns_roundrobin5_grant_reg_0$ddr2/ldc/vns_roundrobin5_grant_reg_02default:default2default:default2?
 "?
Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg	Qcdc/i_axi_cdc/i_cdc_fifo_gray_w/i_dst/i_spill_register/gen_spill_reg.b_full_q_reg2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?

?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[0]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?

?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[1]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[1]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?

?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "~
3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[2]	3swervolf/swerv_eh1/swerv/dec/tlu/freeff/dout_reg[2]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[0]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[0]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[10]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[10]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[11]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[11]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[12]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[12]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[13]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[13]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[14]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[14]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[16]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[16]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[29]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[29]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
?
?RAMB18 async control check: The RAMB18E1 %s has an input control pin %s (net: %s) which is driven by a register (%s) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.%s*DRC2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2?
 "?
`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]`swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2/ADDRARDADDR[13]2default:default2default:default2?
 "?
Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]Iswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ADR[10]2default:default2default:default2?
 "?
Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[6]	Jswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[6]2default:default2default:default2B
 *DRC|Netlist|Instance|Required Pin|RAMB18E12default:default8Z	REQP-1840h px? 
c
DRC finished with %s
79*	vivadotcl2)
0 Errors, 43 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0992default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 17e21686a
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.133 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0562default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2+
clk_gen/dout[0]_i_2__462default:default2
52default:default2?
?	swervolf/swerv_eh1/swerv/exu/mul_e1/ld_rs1_byp_e1_ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/exu/mul_e1/ld_rs2_byp_e1_ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/exu/mul_e1/rs2_sign_e1_ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/exu/mul_e1/rs1_sign_e1_ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/exu/mul_e1/low_e1_ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3042default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3072default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[9].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_1__1382default:default2
12default:default2V
B	swervolf/swerv_eh1/swerv/exu/mul_e1/low_e3_ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3012default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__1332default:default2
72default:default2?
?	swervolf/swerv_eh1/swerv/lsu/bus_intf/ldst_dual_dc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/access_fault_dc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_external_dc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_dccm_dc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_pic_dc2ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3022default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_1__3992default:default2
72default:default2?
?	swervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/dec_nonblock_load_freeze_dc3ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_full_hit_dc3ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc3_clkenff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/dccm_ctl/Gen_dccm_enable.dccm_rden_dc3ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addrcheck/is_sideeffects_dc3ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__1342default:default2
32default:default2?
?	swervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc1_clkenff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc1ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc1ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__1352default:default2
52default:default2?
?	swervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc2_clkenff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/dccm_ctl/Gen_dccm_enable.dccm_rden_dc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addrcheck/is_sideeffects_dc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc2ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc2ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3002default:default2
92default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[3] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[2] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_1__1372default:default2
12default:default2V
B	swervolf/swerv_eh1/swerv/exu/mul_e1/low_e2_ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_1__3982default:default2
182default:default2?
?	swervolf/swerv_eh1/swerv/lsu/bus_intf/ldst_dual_dc3ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[3] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_external_dc3ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__1362default:default2
22default:default2?
?	swervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc4_clkenff/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc4ff/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3032default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way2_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3052default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way0_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3062default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way1_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[0]_i_2__3082default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[9].ic_way3_tagvalid_dup/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1122default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/rptc_hrc[31]_i_32default:default2
322default:default2?
?	swervolf/timer_ptc/rptc_hrc_reg[0] {FDCE}
	swervolf/timer_ptc/rptc_hrc_reg[16] {FDCE}
	swervolf/timer_ptc/rptc_hrc_reg[12] {FDCE}
	swervolf/timer_ptc/rptc_hrc_reg[1] {FDCE}
	swervolf/timer_ptc/rptc_hrc_reg[22] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[1]_i_2__2202default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[4].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[4].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[4].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[4].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[4].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[1]_i_2__2232default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1052default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1062default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[1]_i_2__2222default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1082default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1092default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1112default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1072default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[1]_i_2__2212default:default2
322default:default2?
?	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[9].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[8].bht_bank/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[8].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[9].bht_bank/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2,
clk_gen/dout[2]_i_2__1102default:default2
242default:default2?
?	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2+
clk_gen/dout[1]_i_2__942default:default2
22default:default2?
|	swervolf/swerv_eh1/swerv/dbg/axi_bresp_ff/dout_reg[1] {FDCE}
	swervolf/swerv_eh1/swerv/dbg/axi_rresp_ff/dout_reg[1] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place28
$swervolf/timer_ptc/rptc_cntr[31]_i_32default:default2
322default:default2?
?	swervolf/timer_ptc/rptc_cntr_reg[0] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[11] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[15] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[12] {FDCE}
	swervolf/timer_ptc/rptc_cntr_reg[16] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place27
#swervolf/timer_ptc/rptc_lrc[31]_i_32default:default2
322default:default2?
?	swervolf/timer_ptc/rptc_lrc_reg[24] {FDCE}
	swervolf/timer_ptc/rptc_lrc_reg[28] {FDCE}
	swervolf/timer_ptc/rptc_lrc_reg[29] {FDCE}
	swervolf/timer_ptc/rptc_lrc_reg[22] {FDCE}
	swervolf/timer_ptc/rptc_lrc_reg[31] {FDCE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2=
)swervolf/swerv_eh1/mem/ram_core_reg_0_i_12default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2 {RAMB18E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_1 {RAMB36E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__62default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_2 {RAMB18E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_1 {RAMB36E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__12default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_2 {RAMB18E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_1 {RAMB36E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__32default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_1 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_2 {RAMB18E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__22default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_2 {RAMB18E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_1 {RAMB36E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__02default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_1 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_2 {RAMB18E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__52default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_2 {RAMB18E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_1 {RAMB36E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2@
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__42default:default2
32default:default2?
?	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_0 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_1 {RAMB36E1}
	swervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_2 {RAMB18E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2?
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__152default:default2
12default:default2t
`	swervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[0].ICACHE_SZ_16.ic_way_tag/ram_core_reg {RAMB18E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2?
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__172default:default2
12default:default2t
`	swervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[2].ICACHE_SZ_16.ic_way_tag/ram_core_reg {RAMB18E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2?
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__162default:default2
12default:default2t
`	swervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[1].ICACHE_SZ_16.ic_way_tag/ram_core_reg {RAMB18E1}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place2?
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__182default:default2
12default:default2t
`	swervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[3].ICACHE_SZ_16.ic_way_tag/ram_core_reg {RAMB18E1}
2default:defaultZ30-568h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 12b9136db
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:31 ; elapsed = 00:00:21 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 133acc3fc
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:06 ; elapsed = 00:00:44 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 133acc3fc
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:07 ; elapsed = 00:00:44 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 133acc3fc
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:07 ; elapsed = 00:00:44 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 1a6d8e981
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:20 ; elapsed = 00:00:52 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
v
7Found %s candidate LUT instances to create LUTNM shape
536*physynth2
15532default:defaultZ32-1018h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
5912default:default2!
nets or cells2default:default2
32default:default2
cells2default:default2
5882default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.0452default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?
|  LUT Combining                                    |            3  |            588  |                   591  |           0  |           1  |  00:00:08  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:01  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |            3  |            588  |                   591  |           0  |           7  |  00:00:09  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 194c61ee7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:26 ; elapsed = 00:02:14 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 2b378f567
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:34 ; elapsed = 00:02:20 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 2b378f567
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:34 ; elapsed = 00:02:20 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 2c1321cc5
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:03:55 ; elapsed = 00:02:34 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 25482eda7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:27 ; elapsed = 00:02:55 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 221de832f
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:29 ; elapsed = 00:02:56 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 273bd3641
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:29 ; elapsed = 00:02:56 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 22e2a00a7
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:04:54 ; elapsed = 00:03:13 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 1fee553bc
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:32 ; elapsed = 00:03:50 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 189cef6b8
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:37 ; elapsed = 00:03:57 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 16eea23b5
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:38 ; elapsed = 00:03:57 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 16eea23b5
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:05:38 ; elapsed = 00:03:57 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 171d2fd07
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2,
clk_gen/o_rst_core_reg_12default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2,
clk_gen/o_rst_core_reg_22default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2$
clk_gen/rst_core2default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2%
ddr2/ldc/FDPE_1_02default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
42default:default2
02default:default2
02default:default2
42default:default2
02default:default2
02default:defaultZ46-56h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 171d2fd07
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:16 ; elapsed = 00:04:21 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.0002default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 2226eb776
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:56 ; elapsed = 00:04:48 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 2226eb776
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:56 ; elapsed = 00:04:49 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 2226eb776
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:57 ; elapsed = 00:04:49 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 2226eb776
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:57 ; elapsed = 00:04:50 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0452default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 15df66979
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:58 ; elapsed = 00:04:50 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 15df66979
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:58 ; elapsed = 00:04:51 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
=
(Ending Placer Task | Checksum: fa480987
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:06:58 ; elapsed = 00:04:51 . Memory (MB): peak = 2349.059 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
762default:default2
892default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:07:092default:default2
00:04:572default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:212default:default2
00:00:072default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2c
OC:/Users/Chuck/RVfpga/labs/Lab1/Project1/Project1.runs/impl_1/rvfpga_placed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:332default:default2
00:00:172default:default2
2349.0592default:default2
0.0002default:defaultZ17-268h px? 
a
%s4*runtcl2E
1Executing : report_io -file rvfpga_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.089 . Memory (MB): peak = 2349.059 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2x
dExecuting : report_utilization -file rvfpga_utilization_placed.rpt -pb rvfpga_utilization_placed.pb
2default:defaulth px? 
~
%s4*runtcl2b
NExecuting : report_control_sets -verbose -file rvfpga_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.104 . Memory (MB): peak = 2349.059 ; gain = 0.000
*commonh px? 


End Record