
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2a
Mc:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/OtherSources/ece540_ip_repo2default:defaultZ19-1700h px? 
x
 Loaded user IP repository '%s'.
1135*coregen21
c:/Users/Chuck/vivado-library2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2019.2/data/ip2default:defaultZ19-2313h px? 
?
?The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2m
YC:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.cache/ip2default:defaultZ19-4995h px? 
s
Command: %s
53*	vivadotcl2B
.link_design -top rvfpga -part xc7a100tcsg324-12default:defaultZ4-113h px? 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px? 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
~c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.dcp2default:default2
clk_gen_75M2default:defaultZ1-454h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:022default:default2
00:00:022default:default2
973.5702default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
16582default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
?
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt21
clk_gen_75M/inst/clkin1_ibufg2default:default2
clk2default:defaultZ31-35h px? 
?
?Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2,
clk_gen_75M/i_clk_100M2default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M_board.xdc2default:default2&
clk_gen_75M/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M_board.xdc2default:default2&
clk_gen_75M/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
~c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc2default:default2&
clk_gen_75M/inst	2default:default8Z20-848h px? 
?
%Done setting XDC timing constraints.
35*timing2?
~c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc2default:default2
572default:default8@Z38-35h px? 
?
Deriving generated clocks
2*timing2?
~c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc2default:default2
572default:default8@Z38-2h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:132default:default2
00:00:122default:default2
1789.4182default:default2
611.6452default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
~c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc2default:default2&
clk_gen_75M/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2T
>C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/liteDRAM.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2T
>C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/liteDRAM.xdc2default:default8Z20-178h px? 
?
Parsing XDC File [%s]
179*designutils2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default8Z20-179h px? 
?
Deriving generated clocks
2*timing2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1772default:default8@Z38-2h px? 
?
Finished Parsing XDC File [%s]
178*designutils2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default8Z20-178h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0302default:default2
1789.4182default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 91 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 37 instances
  IOBUFDS => IOBUFDS (IBUFDS, INV, OBUFTDS(x2)): 2 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 51 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
152default:default2
32default:default2
02default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:352default:default2
00:00:342default:default2
1789.4182default:default2
1283.2072default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 


End Record