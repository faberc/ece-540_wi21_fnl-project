
f
Command: %s
53*	vivadotcl25
!write_bitstream -force rvfpga.bit2default:defaultZ4-113h px? 
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
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
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
?
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2\
 "F
ddr2/ldc/IOBUFDS/IBUFDS	ddr2/ldc/IOBUFDS/IBUFDS2default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px? 
?
{Input Buffer Connections: Input buffer %s has no loads. It is recommended to have an input buffer drive an internal load.%s*DRC2`
 "J
ddr2/ldc/IOBUFDS_1/IBUFDS	ddr2/ldc/IOBUFDS_1/IBUFDS2default:default2default:default2>
 &DRC|Netlist|Instance|Required Pin|IBUF2default:default8ZBUFC-1h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
YReport rule limit reached: REQP-1839 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
YReport rule limit reached: REQP-1840 rule limit reached: 20 violations have been found.%s*DRC29
 !DRC|DRC System|Rule limit reached2default:default8ZCHECK-3h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "z
4swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/A[29:0].swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "z
4swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/B[17:0].swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__02default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/A[29:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__02default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/B[17:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__12default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/A[29:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__12default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/B[17:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__22default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/A[29:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__22default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/B[17:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "z
4swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/P[47:0].swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__02default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/P[47:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__12default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/P[47:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__22default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/P[47:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "z
4swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/P[47:0].swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__02default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/P[47:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__12default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/P[47:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__1/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2?
 "v
/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2	/swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__22default:default2default:default2?
 "?
7swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/P[47:0]1swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20__2/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[0]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[0]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[10]	Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[10]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[11]	Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[11]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[12]	Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[12]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[13]	Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[13]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[14]	Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[14]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[15]	Mswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[15]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[1]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[1]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[2]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[2]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[3]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[3]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[4]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[4]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[5]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[5]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[6]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[6]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[7]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[7]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[8]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[8]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Asynchronous load check: DSP %s output is connected to registers with an asynchronous reset (%s). This is preventing the possibility of merging these registers in to the DSP Block since the DSP block registers only possess synchronous reset capability.  It is suggested to recode or change these registers to remove the reset or use a synchronous reset to get the best optimization for performance, power and area.%s*DRC2?
 "p
,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e20	,swervolf/swerv_eh1/swerv/exu/mul_e1/prod_e202default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[9]	Lswervolf/swerv_eh1/swerv/exu/mul_e1/prod_e3_ff/genblock.dff/dffs/dout_reg[9]2default:default2default:default2I
 1DRC|Netlist|Instance|Synchronous controls|DSP48E12default:default8ZDPOR-1h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2D
 ".
clk_gen/CLKclk_gen/CLK2default:default2default:default2b
 "L
clk_gen/dout[0]_i_1__398/Oclk_gen/dout[0]_i_1__398/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_1__398	clk_gen/dout[0]_i_1__3982default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_1clk_gen/FDPE_1_12default:default2default:default2b
 "L
clk_gen/dout[1]_i_2__220/Oclk_gen/dout[1]_i_2__220/O2default:default2default:default2^
 "H
clk_gen/dout[1]_i_2__220	clk_gen/dout[1]_i_2__2202default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_10clk_gen/FDPE_1_102default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__106/Oclk_gen/dout[2]_i_2__106/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__106	clk_gen/dout[2]_i_2__1062default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_11clk_gen/FDPE_1_112default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__107/Oclk_gen/dout[2]_i_2__107/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__107	clk_gen/dout[2]_i_2__1072default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_12clk_gen/FDPE_1_122default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__108/Oclk_gen/dout[2]_i_2__108/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__108	clk_gen/dout[2]_i_2__1082default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_13clk_gen/FDPE_1_132default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__109/Oclk_gen/dout[2]_i_2__109/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__109	clk_gen/dout[2]_i_2__1092default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_14clk_gen/FDPE_1_142default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__110/Oclk_gen/dout[2]_i_2__110/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__110	clk_gen/dout[2]_i_2__1102default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_15clk_gen/FDPE_1_152default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__111/Oclk_gen/dout[2]_i_2__111/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__111	clk_gen/dout[2]_i_2__1112default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2P
 ":
clk_gen/FDPE_1_16clk_gen/FDPE_1_162default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__112/Oclk_gen/dout[2]_i_2__112/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__112	clk_gen/dout[2]_i_2__1122default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_2clk_gen/FDPE_1_22default:default2default:default2b
 "L
clk_gen/dout[1]_i_2__221/Oclk_gen/dout[1]_i_2__221/O2default:default2default:default2^
 "H
clk_gen/dout[1]_i_2__221	clk_gen/dout[1]_i_2__2212default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_4clk_gen/FDPE_1_42default:default2default:default2b
 "L
clk_gen/dout[1]_i_2__222/Oclk_gen/dout[1]_i_2__222/O2default:default2default:default2^
 "H
clk_gen/dout[1]_i_2__222	clk_gen/dout[1]_i_2__2222default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_6clk_gen/FDPE_1_62default:default2default:default2b
 "L
clk_gen/dout[1]_i_2__223/Oclk_gen/dout[1]_i_2__223/O2default:default2default:default2^
 "H
clk_gen/dout[1]_i_2__223	clk_gen/dout[1]_i_2__2232default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_7clk_gen/FDPE_1_72default:default2default:default2b
 "L
clk_gen/dout[1]_i_2__224/Oclk_gen/dout[1]_i_2__224/O2default:default2default:default2^
 "H
clk_gen/dout[1]_i_2__224	clk_gen/dout[1]_i_2__2242default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_8clk_gen/FDPE_1_82default:default2default:default2b
 "L
clk_gen/dout[1]_i_2__225/Oclk_gen/dout[1]_i_2__225/O2default:default2default:default2^
 "H
clk_gen/dout[1]_i_2__225	clk_gen/dout[1]_i_2__2252default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/FDPE_1_9clk_gen/FDPE_1_92default:default2default:default2b
 "L
clk_gen/dout[2]_i_2__105/Oclk_gen/dout[2]_i_2__105/O2default:default2default:default2^
 "H
clk_gen/dout[2]_i_2__105	clk_gen/dout[2]_i_2__1052default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2L
 "6
clk_gen/bus_clkclk_gen/bus_clk2default:default2default:default2`
 "J
clk_gen/dout[1]_i_2__94/Oclk_gen/dout[1]_i_2__94/O2default:default2default:default2\
 "F
clk_gen/dout[1]_i_2__94	clk_gen/dout[1]_i_2__942default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2`
 "J
clk_gen/exu_mul_c1_e1_clkclk_gen/exu_mul_c1_e1_clk2default:default2default:default2`
 "J
clk_gen/dout[0]_i_2__46/Oclk_gen/dout[0]_i_2__46/O2default:default2default:default2\
 "F
clk_gen/dout[0]_i_2__46	clk_gen/dout[0]_i_2__462default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2`
 "J
clk_gen/exu_mul_c1_e2_clkclk_gen/exu_mul_c1_e2_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_1__137/Oclk_gen/dout[0]_i_1__137/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_1__137	clk_gen/dout[0]_i_1__1372default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2`
 "J
clk_gen/exu_mul_c1_e3_clkclk_gen/exu_mul_c1_e3_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_1__138/Oclk_gen/dout[0]_i_1__138/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_1__138	clk_gen/dout[0]_i_1__1382default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
clk_gen/fetch_f1_f2_c1_clkclk_gen/fetch_f1_f2_c1_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__300/Oclk_gen/dout[0]_i_2__300/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__300	clk_gen/dout[0]_i_2__3002default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2h
 "R
clk_gen/lsu_freeze_c1_dc2_clkclk_gen/lsu_freeze_c1_dc2_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__133/Oclk_gen/dout[0]_i_2__133/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__133	clk_gen/dout[0]_i_2__1332default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2h
 "R
clk_gen/lsu_freeze_c2_dc1_clkclk_gen/lsu_freeze_c2_dc1_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__134/Oclk_gen/dout[0]_i_2__134/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__134	clk_gen/dout[0]_i_2__1342default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2h
 "R
clk_gen/lsu_freeze_c2_dc2_clkclk_gen/lsu_freeze_c2_dc2_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__135/Oclk_gen/dout[0]_i_2__135/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__135	clk_gen/dout[0]_i_2__1352default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2h
 "R
clk_gen/lsu_freeze_c2_dc3_clkclk_gen/lsu_freeze_c2_dc3_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_1__399/Oclk_gen/dout[0]_i_1__399/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_1__399	clk_gen/dout[0]_i_1__3992default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2h
 "R
clk_gen/lsu_freeze_c2_dc4_clkclk_gen/lsu_freeze_c2_dc4_clk2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__136/Oclk_gen/dout[0]_i_2__136/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__136	clk_gen/dout[0]_i_2__1362default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/p_138_inclk_gen/p_138_in2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__304/Oclk_gen/dout[0]_i_2__304/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__304	clk_gen/dout[0]_i_2__3042default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/p_139_inclk_gen/p_139_in2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__303/Oclk_gen/dout[0]_i_2__303/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__303	clk_gen/dout[0]_i_2__3032default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/p_140_inclk_gen/p_140_in2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__302/Oclk_gen/dout[0]_i_2__302/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__302	clk_gen/dout[0]_i_2__3022default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2N
 "8
clk_gen/p_141_inclk_gen/p_141_in2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__301/Oclk_gen/dout[0]_i_2__301/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__301	clk_gen/dout[0]_i_2__3012default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2J
 "4
clk_gen/p_2_inclk_gen/p_2_in2default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__306/Oclk_gen/dout[0]_i_2__306/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__306	clk_gen/dout[0]_i_2__3062default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2^
 "H
clk_gen/rptc_ctrl_reg[8]clk_gen/rptc_ctrl_reg[8]2default:default2default:default2b
 "L
clk_gen/rptc_hrc[31]_i_3/Oclk_gen/rptc_hrc[31]_i_3/O2default:default2default:default2^
 "H
clk_gen/rptc_hrc[31]_i_3	clk_gen/rptc_hrc[31]_i_32default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
clk_gen/tag_valid_w0_clk_1clk_gen/tag_valid_w0_clk_12default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__305/Oclk_gen/dout[0]_i_2__305/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__305	clk_gen/dout[0]_i_2__3052default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
clk_gen/tag_valid_w2_clk_1clk_gen/tag_valid_w2_clk_12default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__307/Oclk_gen/dout[0]_i_2__307/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__307	clk_gen/dout[0]_i_2__3072default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
clk_gen/tag_valid_w3_clk_1clk_gen/tag_valid_w3_clk_12default:default2default:default2b
 "L
clk_gen/dout[0]_i_2__308/Oclk_gen/dout[0]_i_2__308/O2default:default2default:default2^
 "H
clk_gen/dout[0]_i_2__308	clk_gen/dout[0]_i_2__3082default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_0!swervolf/swerv_eh1/mem/dccm_clk_02default:default2default:default2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_0_i_1/O+swervolf/swerv_eh1/mem/ram_core_reg_0_i_1/O2default:default2default:default2?
 "j
)swervolf/swerv_eh1/mem/ram_core_reg_0_i_1	)swervolf/swerv_eh1/mem/ram_core_reg_0_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_1!swervolf/swerv_eh1/mem/dccm_clk_12default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__0/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__0/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__0	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_2!swervolf/swerv_eh1/mem/dccm_clk_22default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__1/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__1/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__1	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_3!swervolf/swerv_eh1/mem/dccm_clk_32default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__2/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__2/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__2	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_4!swervolf/swerv_eh1/mem/dccm_clk_42default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__3/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__3/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__3	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__32default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_5!swervolf/swerv_eh1/mem/dccm_clk_52default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__4/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__4/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__4	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__42default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_6!swervolf/swerv_eh1/mem/dccm_clk_62default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__5/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__5/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__5	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2p
 "Z
!swervolf/swerv_eh1/mem/dccm_clk_7!swervolf/swerv_eh1/mem/dccm_clk_72default:default2default:default2?
 "t
.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__6/O.swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__6/O2default:default2default:default2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__6	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2?
 "v
/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_0/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_02default:default2default:default2?
 "r
-swervolf/swerv_eh1/mem/ram_core_reg_i_1__15/O-swervolf/swerv_eh1/mem/ram_core_reg_i_1__15/O2default:default2default:default2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__15	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__152default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2?
 "v
/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_1/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_12default:default2default:default2?
 "r
-swervolf/swerv_eh1/mem/ram_core_reg_i_1__16/O-swervolf/swerv_eh1/mem/ram_core_reg_i_1__16/O2default:default2default:default2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__16	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__162default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2?
 "v
/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_2/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_22default:default2default:default2?
 "r
-swervolf/swerv_eh1/mem/ram_core_reg_i_1__17/O-swervolf/swerv_eh1/mem/ram_core_reg_i_1__17/O2default:default2default:default2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__17	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__172default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2?
 "v
/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_3/swervolf/swerv_eh1/mem/ic_tag_inst/ic_tag_clk_32default:default2default:default2?
 "r
-swervolf/swerv_eh1/mem/ram_core_reg_i_1__18/O-swervolf/swerv_eh1/mem/ram_core_reg_i_1__18/O2default:default2default:default2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__18	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__182default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2d
 "N
swervolf/timer_ptc/cntr_clkswervolf/timer_ptc/cntr_clk2default:default2default:default2z
 "d
&swervolf/timer_ptc/rptc_cntr[31]_i_3/O&swervolf/timer_ptc/rptc_cntr[31]_i_3/O2default:default2default:default2v
 "`
$swervolf/timer_ptc/rptc_cntr[31]_i_3	$swervolf/timer_ptc/rptc_cntr[31]_i_32default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2b
 "L
swervolf/timer_ptc/lrc_clkswervolf/timer_ptc/lrc_clk2default:default2default:default2x
 "b
%swervolf/timer_ptc/rptc_lrc[31]_i_3/O%swervolf/timer_ptc/rptc_lrc[31]_i_3/O2default:default2default:default2t
 "^
#swervolf/timer_ptc/rptc_lrc[31]_i_3	#swervolf/timer_ptc/rptc_lrc[31]_i_32default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2T
 ">
swervolf/up0/err__0swervolf/up0/err__02default:default2default:default2b
 "L
swervolf/up0/err_reg_i_2/Oswervolf/up0/err_reg_i_2/O2default:default2default:default2^
 "H
swervolf/up0/err_reg_i_2	swervolf/up0/err_reg_i_22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 1 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_1__137	clk_gen/dout[0]_i_1__1372default:default2default:default2?
 "?
9swervolf/swerv_eh1/swerv/exu/mul_e1/low_e2_ff/dout_reg[0]	9swervolf/swerv_eh1/swerv/exu/mul_e1/low_e2_ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 1 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_1__138	clk_gen/dout[0]_i_1__1382default:default2default:default2?
 "?
9swervolf/swerv_eh1/swerv/exu/mul_e1/low_e3_ff/dout_reg[0]	9swervolf/swerv_eh1/swerv/exu/mul_e1/low_e3_ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 18 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_1__398	clk_gen/dout[0]_i_1__3982default:default2default:default2?
 "?
Aswervolf/swerv_eh1/swerv/lsu/bus_intf/ldst_dual_dc3ff/dout_reg[0]	Aswervolf/swerv_eh1/swerv/lsu/bus_intf/ldst_dual_dc3ff/dout_reg[0]2default:default"?
Aswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[0]	Aswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[0]2default:default"?
Aswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[1]	Aswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[1]2default:default"?
Aswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[3]	Aswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_byten_dc3ff/dout_reg[3]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/access_fault_dc3ff/dout_reg[0]	Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/access_fault_dc3ff/dout_reg[0]2default:default"?
Hswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_external_dc3ff/dout_reg[0]	Hswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_external_dc3ff/dout_reg[0]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_dccm_dc3ff/dout_reg[0]	Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_dccm_dc3ff/dout_reg[0]2default:default"?
Fswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_pic_dc3ff/dout_reg[0]	Fswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_pic_dc3ff/dout_reg[0]2default:default"?
Kswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/misaligned_fault_dc3ff/dout_reg[0]	Kswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/misaligned_fault_dc3ff/dout_reg[0]2default:default"?
>swervolf/swerv_eh1/swerv/lsu/stbuf/ldst_dual_dc3ff/dout_reg[0]	>swervolf/swerv_eh1/swerv/lsu/stbuf/ldst_dual_dc3ff/dout_reg[0]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[0]	Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[0]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[1]	Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[1]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[2]	Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[2]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[3]	Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_hi_dc3ff/dout_reg[3]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_lo_dc3ff/dout_reg[0]	Gswervolf/swerv_eh1/swerv/lsu/stbuf/stbuf_fwdbyteen_lo_dc3ff/dout_reg[0]2default:..."/
(the first 15 of 18 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 7 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_1__399	clk_gen/dout[0]_i_1__3992default:default2default:default2?	
 "?
[swervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/dec_nonblock_load_freeze_dc3ff/dout_reg[0]	[swervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/dec_nonblock_load_freeze_dc3ff/dout_reg[0]2default:default"?
Dswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_full_hit_dc3ff/dout_reg[0]	Dswervolf/swerv_eh1/swerv/lsu/bus_intf/lsu_full_hit_dc3ff/dout_reg[0]2default:default"?
Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc3_clkenff/dout_reg[0]	Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc3_clkenff/dout_reg[0]2default:default"?
Qswervolf/swerv_eh1/swerv/lsu/dccm_ctl/Gen_dccm_enable.dccm_rden_dc3ff/dout_reg[0]	Qswervolf/swerv_eh1/swerv/lsu/dccm_ctl/Gen_dccm_enable.dccm_rden_dc3ff/dout_reg[0]2default:default"?
;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc3ff/dout_reg[0]	;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc3ff/dout_reg[0]2default:default"?
Sswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addrcheck/is_sideeffects_dc3ff/dout_reg[0]	Sswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addrcheck/is_sideeffects_dc3ff/dout_reg[0]2default:default"?
Eswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc3ff/dout_reg[0]	Eswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc3ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 7 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__133	clk_gen/dout[0]_i_2__1332default:default2default:default2?	
 "?
Aswervolf/swerv_eh1/swerv/lsu/bus_intf/ldst_dual_dc2ff/dout_reg[0]	Aswervolf/swerv_eh1/swerv/lsu/bus_intf/ldst_dual_dc2ff/dout_reg[0]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/access_fault_dc2ff/dout_reg[0]	Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/access_fault_dc2ff/dout_reg[0]2default:default"?
Hswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_external_dc2ff/dout_reg[0]	Hswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_external_dc2ff/dout_reg[0]2default:default"?
Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_dccm_dc2ff/dout_reg[0]	Gswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_dccm_dc2ff/dout_reg[0]2default:default"?
Fswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_pic_dc2ff/dout_reg[0]	Fswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addr_in_pic_dc2ff/dout_reg[0]2default:default"?
Kswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/misaligned_fault_dc2ff/dout_reg[0]	Kswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/misaligned_fault_dc2ff/dout_reg[0]2default:default"?
>swervolf/swerv_eh1/swerv/lsu/stbuf/ldst_dual_dc2ff/dout_reg[0]	>swervolf/swerv_eh1/swerv/lsu/stbuf/ldst_dual_dc2ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__134	clk_gen/dout[0]_i_2__1342default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc1_clkenff/dout_reg[0]	Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc1_clkenff/dout_reg[0]2default:default"?
;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc1ff/dout_reg[0]	;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc1ff/dout_reg[0]2default:default"?
Eswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc1ff/dout_reg[0]	Eswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc1ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?	
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 5 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__135	clk_gen/dout[0]_i_2__1352default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc2_clkenff/dout_reg[0]	Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc2_clkenff/dout_reg[0]2default:default"?
Qswervolf/swerv_eh1/swerv/lsu/dccm_ctl/Gen_dccm_enable.dccm_rden_dc2ff/dout_reg[0]	Qswervolf/swerv_eh1/swerv/lsu/dccm_ctl/Gen_dccm_enable.dccm_rden_dc2ff/dout_reg[0]2default:default"?
;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc2ff/dout_reg[0]	;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc2ff/dout_reg[0]2default:default"?
Sswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addrcheck/is_sideeffects_dc2ff/dout_reg[0]	Sswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/addrcheck/is_sideeffects_dc2ff/dout_reg[0]2default:default"?
Eswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc2ff/dout_reg[0]	Eswervolf/swerv_eh1/swerv/lsu/lsu_lsc_ctl/lsu_pkt_vlddc2ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 2 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__136	clk_gen/dout[0]_i_2__1362default:default2default:default2?
 "?
Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc4_clkenff/dout_reg[0]	Lswervolf/swerv_eh1/swerv/lsu/clkdomain/lsu_freeze_c1_dc4_clkenff/dout_reg[0]2default:default"?
;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc4ff/dout_reg[0]	;swervolf/swerv_eh1/swerv/lsu/lsu_i0_valid_dc4ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 9 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__300	clk_gen/dout[0]_i_2__3002default:default2default:default2?

 "?
Dswervolf/swerv_eh1/swerv/ifu/mem_ctl/ifu_iccm_reg_acc_ff/dout_reg[0]	Dswervolf/swerv_eh1/swerv/ifu/mem_ctl/ifu_iccm_reg_acc_ff/dout_reg[0]2default:default"?
@swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[0]	@swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[0]2default:default"?
@swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[1]	@swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[1]2default:default"?
@swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[2]	@swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_rep_wayf2_ff/dout_reg[2]2default:default"?
;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[0]	;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[0]2default:default"?
;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[1]	;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[1]2default:default"?
;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[2]	;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[2]2default:default"?
;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[3]	;swervolf/swerv_eh1/swerv/ifu/mem_ctl/mb_tagv_ff/dout_reg[3]2default:default"?
<swervolf/swerv_eh1/swerv/ifu/mem_ctl/unc_miss_ff/dout_reg[0]	<swervolf/swerv_eh1/swerv/ifu/mem_ctl/unc_miss_ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__301	clk_gen/dout[0]_i_2__3012default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way0_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way0_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__302	clk_gen/dout[0]_i_2__3022default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way1_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way1_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__303	clk_gen/dout[0]_i_2__3032default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way2_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way2_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__304	clk_gen/dout[0]_i_2__3042default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way3_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[0].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[10].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[11].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[12].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[13].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[14].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[15].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[16].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[17].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[18].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[19].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way3_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[1].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[20].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[21].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[0].TAG_VALID[22].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__305	clk_gen/dout[0]_i_2__3052default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way0_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way0_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way0_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way0_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__306	clk_gen/dout[0]_i_2__3062default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way1_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way1_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way1_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way1_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__307	clk_gen/dout[0]_i_2__3072default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way2_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way2_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way2_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way2_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
? 
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[0]_i_2__308	clk_gen/dout[0]_i_2__3082default:default2default:default2?
 "?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way3_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[0].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[10].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[11].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[12].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[13].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[14].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[15].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[16].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[17].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[18].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[19].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way3_tagvalid_dup/dffs/dout_reg[0]	lswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[1].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[20].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[21].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:default"?
mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way3_tagvalid_dup/dffs/dout_reg[0]	mswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_TAG_VALID[1].TAG_VALID[22].ic_way3_tagvalid_dup/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 5 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2\
 "F
clk_gen/dout[0]_i_2__46	clk_gen/dout[0]_i_2__462default:default2default:default2?
 "?
@swervolf/swerv_eh1/swerv/exu/mul_e1/ld_rs1_byp_e1_ff/dout_reg[0]	@swervolf/swerv_eh1/swerv/exu/mul_e1/ld_rs1_byp_e1_ff/dout_reg[0]2default:default"?
@swervolf/swerv_eh1/swerv/exu/mul_e1/ld_rs2_byp_e1_ff/dout_reg[0]	@swervolf/swerv_eh1/swerv/exu/mul_e1/ld_rs2_byp_e1_ff/dout_reg[0]2default:default"?
9swervolf/swerv_eh1/swerv/exu/mul_e1/low_e1_ff/dout_reg[0]	9swervolf/swerv_eh1/swerv/exu/mul_e1/low_e1_ff/dout_reg[0]2default:default"?
>swervolf/swerv_eh1/swerv/exu/mul_e1/rs1_sign_e1_ff/dout_reg[0]	>swervolf/swerv_eh1/swerv/exu/mul_e1/rs1_sign_e1_ff/dout_reg[0]2default:default"?
>swervolf/swerv_eh1/swerv/exu/mul_e1/rs2_sign_e1_ff/dout_reg[0]	>swervolf/swerv_eh1/swerv/exu/mul_e1/rs2_sign_e1_ff/dout_reg[0]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[1]_i_2__220	clk_gen/dout[1]_i_2__2202default:default2default:default2?
 "?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[0].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[1]_i_2__221	clk_gen/dout[1]_i_2__2212default:default2default:default2?
 "?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[1].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[1]_i_2__222	clk_gen/dout[1]_i_2__2222default:default2default:default2?
 "?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[3].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[1]_i_2__223	clk_gen/dout[1]_i_2__2232default:default2default:default2?
 "?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[5].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[1]_i_2__224	clk_gen/dout[1]_i_2__2242default:default2default:default2?
 "?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[6].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[1]_i_2__225	clk_gen/dout[1]_i_2__2252default:default2default:default2?
 "?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[0]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[0].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[10].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[11].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[12].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[13].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[14].bht_bank/dffs/dout_reg[1]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[0]2default:default"?
aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]	aswervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[15].bht_bank/dffs/dout_reg[1]2default:default"?
`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]	`swervolf/swerv_eh1/swerv/ifu/bp/BANKS[7].BHT_CLK_GROUP[0].BHT_FLOPS[1].bht_bank/dffs/dout_reg[0]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 2 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2\
 "F
clk_gen/dout[1]_i_2__94	clk_gen/dout[1]_i_2__942default:default2default:default2?
 "?
5swervolf/swerv_eh1/swerv/dbg/axi_bresp_ff/dout_reg[1]	5swervolf/swerv_eh1/swerv/dbg/axi_bresp_ff/dout_reg[1]2default:default"?
5swervolf/swerv_eh1/swerv/dbg/axi_rresp_ff/dout_reg[1]	5swervolf/swerv_eh1/swerv/dbg/axi_rresp_ff/dout_reg[1]2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__105	clk_gen/dout[2]_i_2__1052default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[0].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__106	clk_gen/dout[2]_i_2__1062default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[1].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__107	clk_gen/dout[2]_i_2__1072default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[2].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__108	clk_gen/dout[2]_i_2__1082default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[3].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__109	clk_gen/dout[2]_i_2__1092default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[4].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__110	clk_gen/dout[2]_i_2__1102default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[5].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__111	clk_gen/dout[2]_i_2__1112default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[6].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 24 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/dout[2]_i_2__112	clk_gen/dout[2]_i_2__1122default:default2default:default2?
 "?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[0].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[1].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[2].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[2].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[2].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[3].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[3].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[3].ic_way_status/dffs/dout_reg[2]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[4].ic_way_status/dffs/dout_reg[0]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[4].ic_way_status/dffs/dout_reg[1]2default:default"?
gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]	gswervolf/swerv_eh1/swerv/ifu/mem_ctl/CLK_GRP_WAY_STATUS[7].WAY_STATUS[4].ic_way_status/dffs/dout_reg[2]2default:..."/
(the first 15 of 24 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2^
 "H
clk_gen/rptc_hrc[31]_i_3	clk_gen/rptc_hrc[31]_i_32default:default2default:default2?
 "\
"swervolf/timer_ptc/rptc_hrc_reg[0]	"swervolf/timer_ptc/rptc_hrc_reg[0]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[10]	#swervolf/timer_ptc/rptc_hrc_reg[10]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[11]	#swervolf/timer_ptc/rptc_hrc_reg[11]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[12]	#swervolf/timer_ptc/rptc_hrc_reg[12]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[13]	#swervolf/timer_ptc/rptc_hrc_reg[13]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[14]	#swervolf/timer_ptc/rptc_hrc_reg[14]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[15]	#swervolf/timer_ptc/rptc_hrc_reg[15]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[16]	#swervolf/timer_ptc/rptc_hrc_reg[16]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[17]	#swervolf/timer_ptc/rptc_hrc_reg[17]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[18]	#swervolf/timer_ptc/rptc_hrc_reg[18]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[19]	#swervolf/timer_ptc/rptc_hrc_reg[19]2default:default"\
"swervolf/timer_ptc/rptc_hrc_reg[1]	"swervolf/timer_ptc/rptc_hrc_reg[1]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[20]	#swervolf/timer_ptc/rptc_hrc_reg[20]2default:default"^
#swervolf/timer_ptc/rptc_hrc_reg[21]	#swervolf/timer_ptc/rptc_hrc_reg[21]2default:default"Z
#swervolf/timer_ptc/rptc_hrc_reg[22]	#swervolf/timer_ptc/rptc_hrc_reg[22]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "j
)swervolf/swerv_eh1/mem/ram_core_reg_0_i_1	)swervolf/swerv_eh1/mem/ram_core_reg_0_i_12default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[0].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__0	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__02default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[1].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__1	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__12default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[2].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__2	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__22default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[3].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__3	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__32default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[4].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__4	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__42default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[5].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__5	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__52default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[6].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 3 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "p
,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__6	,swervolf/swerv_eh1/mem/ram_core_reg_0_i_1__62default:default2default:default2?
 "?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_0	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_02default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_1	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_12default:default"?
Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_2	Pswervolf/swerv_eh1/mem/Gen_dccm_enable.dccm/mem_bank[7].dccm_bank/ram_core_reg_22default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 1 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__15	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__152default:default2default:default2?
 "?
Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[0].ICACHE_SZ_16.ic_way_tag/ram_core_reg	Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[0].ICACHE_SZ_16.ic_way_tag/ram_core_reg2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 1 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__16	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__162default:default2default:default2?
 "?
Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[1].ICACHE_SZ_16.ic_way_tag/ram_core_reg	Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[1].ICACHE_SZ_16.ic_way_tag/ram_core_reg2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 1 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__17	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__172default:default2default:default2?
 "?
Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[2].ICACHE_SZ_16.ic_way_tag/ram_core_reg	Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[2].ICACHE_SZ_16.ic_way_tag/ram_core_reg2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 1 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2?
 "n
+swervolf/swerv_eh1/mem/ram_core_reg_i_1__18	+swervolf/swerv_eh1/mem/ram_core_reg_i_1__182default:default2default:default2?
 "?
Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[3].ICACHE_SZ_16.ic_way_tag/ram_core_reg	Sswervolf/swerv_eh1/mem/icm/ic_tag_inst/WAYS[3].ICACHE_SZ_16.ic_way_tag/ram_core_reg2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2v
 "`
$swervolf/timer_ptc/rptc_cntr[31]_i_3	$swervolf/timer_ptc/rptc_cntr[31]_i_32default:default2default:default2?
 "^
#swervolf/timer_ptc/rptc_cntr_reg[0]	#swervolf/timer_ptc/rptc_cntr_reg[0]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[10]	$swervolf/timer_ptc/rptc_cntr_reg[10]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[11]	$swervolf/timer_ptc/rptc_cntr_reg[11]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[12]	$swervolf/timer_ptc/rptc_cntr_reg[12]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[13]	$swervolf/timer_ptc/rptc_cntr_reg[13]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[14]	$swervolf/timer_ptc/rptc_cntr_reg[14]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[15]	$swervolf/timer_ptc/rptc_cntr_reg[15]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[16]	$swervolf/timer_ptc/rptc_cntr_reg[16]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[17]	$swervolf/timer_ptc/rptc_cntr_reg[17]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[18]	$swervolf/timer_ptc/rptc_cntr_reg[18]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[19]	$swervolf/timer_ptc/rptc_cntr_reg[19]2default:default"^
#swervolf/timer_ptc/rptc_cntr_reg[1]	#swervolf/timer_ptc/rptc_cntr_reg[1]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[20]	$swervolf/timer_ptc/rptc_cntr_reg[20]2default:default"`
$swervolf/timer_ptc/rptc_cntr_reg[21]	$swervolf/timer_ptc/rptc_cntr_reg[21]2default:default"\
$swervolf/timer_ptc/rptc_cntr_reg[22]	$swervolf/timer_ptc/rptc_cntr_reg[22]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 32 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2t
 "^
#swervolf/timer_ptc/rptc_lrc[31]_i_3	#swervolf/timer_ptc/rptc_lrc[31]_i_32default:default2default:default2?
 "\
"swervolf/timer_ptc/rptc_lrc_reg[0]	"swervolf/timer_ptc/rptc_lrc_reg[0]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[10]	#swervolf/timer_ptc/rptc_lrc_reg[10]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[11]	#swervolf/timer_ptc/rptc_lrc_reg[11]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[12]	#swervolf/timer_ptc/rptc_lrc_reg[12]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[13]	#swervolf/timer_ptc/rptc_lrc_reg[13]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[14]	#swervolf/timer_ptc/rptc_lrc_reg[14]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[15]	#swervolf/timer_ptc/rptc_lrc_reg[15]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[16]	#swervolf/timer_ptc/rptc_lrc_reg[16]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[17]	#swervolf/timer_ptc/rptc_lrc_reg[17]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[18]	#swervolf/timer_ptc/rptc_lrc_reg[18]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[19]	#swervolf/timer_ptc/rptc_lrc_reg[19]2default:default"\
"swervolf/timer_ptc/rptc_lrc_reg[1]	"swervolf/timer_ptc/rptc_lrc_reg[1]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[20]	#swervolf/timer_ptc/rptc_lrc_reg[20]2default:default"^
#swervolf/timer_ptc/rptc_lrc_reg[21]	#swervolf/timer_ptc/rptc_lrc_reg[21]2default:default"Z
#swervolf/timer_ptc/rptc_lrc_reg[22]	#swervolf/timer_ptc/rptc_lrc_reg[22]2default:..."/
(the first 15 of 32 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
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
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[17]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[17]2default:default2default:default2B
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
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[21]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[21]2default:default2default:default2B
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
Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[23]	Kswervolf/swerv_eh1/swerv/lsu/bus_intf/bus_buffer/ld_bus_dataff/dout_reg[23]2default:default2default:default2B
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
h
DRC finished with %s
1905*	planAhead2*
0 Errors, 175 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
]
Writing bitstream %s...
11*	bitstream2 
./rvfpga.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px? 
?
?'%s' has been successfully sent to Xilinx on %s. For additional details about this file, please refer to the Webtalk help file at %s.
186*common2?
yC:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.runs/impl_3/usage_statistics_webtalk.xml2default:default2,
Mon Mar  8 21:40:28 20212default:default2I
5C:/Xilinx/Vivado/2019.2/doc/webtalk_introduction.html2default:defaultZ17-186h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1502default:default2
2732default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:582default:default2
00:00:392default:default2
3215.1682default:default2
356.5352default:defaultZ17-268h px? 


End Record