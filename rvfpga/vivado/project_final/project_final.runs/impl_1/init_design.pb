
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
462.4382default:default2
161.8442default:defaultZ17-268h px? 
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
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2'
update_ip_catalog: 2default:default2
00:00:022default:default2
00:00:062default:default2
488.0702default:default2
25.1052default:defaultZ17-268h px? 
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
?
-Reading design checkpoint '%s' for cell '%s'
275*project2?
rc:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/ila_0/ila_0.dcp2default:default2%
swervolf/ila_test2default:defaultZ1-454h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:052default:default2
00:00:052default:default2
1011.2622default:default2
11.3442default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
23542default:defaultZ29-17h px? 
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
?
Core: %s UUID: %s 
209*	chipscope2%
swervolf/ila_test2default:default28
$4e2d6309-a920-565b-968b-3b63876fddf62default:defaultZ16-324h px? 
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
00:00:272default:default2
00:00:262default:default2
1866.5942default:default2
621.9102default:defaultZ17-268h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
~c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/clk_gen_75M/clk_gen_75M.xdc2default:default2&
clk_gen_75M/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc2default:default2,
swervolf/ila_test/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila_impl.xdc2default:default2,
swervolf/ila_test/inst	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc2default:default2,
swervolf/ila_test/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/vivado/project_final/project_final.srcs/sources_1/ip/ila_0/ila_v6_2/constraints/ila.xdc2default:default2,
swervolf/ila_test/inst	2default:default8Z20-847h px? 
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
1732default:default8@Z38-2h px? 
?
No nets matched '%s'.
507*	planAhead2$
swervolf/up0_n_82default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1852default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1852default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_102default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1862default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1862default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_132default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1872default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1872default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_192default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1882default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1882default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_202default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1892default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1892default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_232default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1902default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1902default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_342default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1912default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1912default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2#
swervolf/tmp[3]2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1922default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1922default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2#
swervolf/tmp[2]2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1932default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1932default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2#
swervolf/tmp[0]2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1942default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1942default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2$
swervolf/up0_n_92default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1952default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1952default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_142default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1962default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1962default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_212default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1972default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1972default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_222default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1982default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1982default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_242default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1992default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
1992default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_292default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2002default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2002default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_312default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2012default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2012default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_112default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2022default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2022default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_122default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2032default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2032default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_162default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2042default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2042default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_172default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2052default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2052default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_302default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2062default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2062default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_322default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2072default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2072default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_332default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2082default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2082default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2$
swervolf/up0_n_72default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2092default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2092default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_152default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2102default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2102default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_182default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2112default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2112default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_252default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2122default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2122default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_262default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2132default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2132default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_272default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2142default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2142default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2%
swervolf/up0_n_282default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2152default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2152default:default8@Z17-55h px?
?
No nets matched '%s'.
507*	planAhead2#
swervolf/tmp[1]2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2162default:default8@Z12-507h px? 
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2R
<C:/Users/Chuck/ECE540/fnlproj-team-tbc/rvfpga/src/rvfpga.xdc2default:default2
2162default:default8@Z17-55h px?
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
00:00:012default:default2 
00:00:00.0772default:default2
1866.5942default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 510 instances were transformed.
  CFGLUT5 => CFGLUT5 (SRL16E, SRLC32E): 392 instances
  IOBUF => IOBUF (IBUF, OBUFT): 32 instances
  IOBUFDS => IOBUFDS (IBUFDS, INV, OBUFTDS(x2)): 2 instances
  OBUFDS => OBUFDS_DUAL_BUF (INV, OBUFDS(x2)): 1 instance 
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 51 instances
  RAM64M => RAM64M (RAMD64E(x4)): 32 instances
2default:defaultZ1-111h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
172default:default2
352default:default2
322default:default2
02default:defaultZ4-41h px? 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:01:222default:default2
00:01:262default:default2
1866.5942default:default2
1346.9532default:defaultZ17-268h px? 


End Record