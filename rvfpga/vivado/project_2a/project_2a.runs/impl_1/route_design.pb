
o
Command: %s
53*	vivadotcl2>
*route_design -directive NoTimingRelaxation2default:defaultZ4-113h px? 
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
route_design2default:defaultZ4-22h px? 
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
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
i
Using Router directive '%s'.
20*	routeflow2&
NoTimingRelaxation2default:defaultZ35-270h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 14deeb742
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:45 ; elapsed = 00:00:32 . Memory (MB): peak = 2419.348 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 14deeb742
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:46 ; elapsed = 00:00:33 . Memory (MB): peak = 2419.348 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 14deeb742
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:46 ; elapsed = 00:00:33 . Memory (MB): peak = 2419.348 ; gain = 0.0002default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 14deeb742
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:47 ; elapsed = 00:00:33 . Memory (MB): peak = 2419.348 ; gain = 0.0002default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 20fe44bab
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:16 ; elapsed = 00:00:54 . Memory (MB): peak = 2422.355 ; gain = 3.0082default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-2.718 | TNS=-55.010| WHS=-2.569 | THS=-1393.341|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 1a11cffeb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:31 ; elapsed = 00:01:03 . Memory (MB): peak = 2443.367 ; gain = 24.0202default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 129811a4a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:03:14 ; elapsed = 00:01:59 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
12default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|                 clk_core |                 clk_core |                                            swervolf/swerv_eh1/swerv/dec/tlu/flush_lower_ff/dout_reg[30]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-4.022 | TNS=-112.869| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1101ba70b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:11:01 ; elapsed = 00:06:39 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.956 | TNS=-84.461| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: f9624cf1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:12:02 ; elapsed = 00:07:29 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.920 | TNS=-80.108| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 25aebd3e3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:16 ; elapsed = 00:08:24 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
u

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.901 | TNS=-79.744| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.4 Global Iteration 3 | Checksum: 7c50e584
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:13:44 ; elapsed = 00:08:48 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
u

Phase %s%s
101*constraints2
4.5 2default:default2&
Global Iteration 42default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-4.072 | TNS=-83.027| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.5 Global Iteration 4 | Checksum: 1bd5718ba
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:12 ; elapsed = 00:09:11 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1bd5718ba
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:13 ; elapsed = 00:09:11 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1dbb3d343
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:19 ; elapsed = 00:09:15 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.813 | TNS=-77.816| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1fdccf6a8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:20 ; elapsed = 00:09:16 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1fdccf6a8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:20 ; elapsed = 00:09:16 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1fdccf6a8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:21 ; elapsed = 00:09:17 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1b3c07c3e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:28 ; elapsed = 00:09:22 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.797 | TNS=-77.366| WHS=-1.084 | THS=-2.340 |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 12712626d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:29 ; elapsed = 00:09:22 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
?
?The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack. Such pins are:
%s201*route2
22default:default2?
?	swervolf/swerv_eh1/swerv/dec/instbuff/bp1ff/genblock.dff/dffs/dout[7]_i_3__1/I1
	swervolf/swerv_eh1/swerv/dec/instbuff/bp1ff/genblock.dff/dffs/dout[7]_i_2__12/I3
2default:defaultZ35-468h px? 
A
,Phase 6 Post Hold Fix | Checksum: 151958ded
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:29 ; elapsed = 00:09:22 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
t

Phase %s%s
101*constraints2
7 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
7.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 7.1 Update Timing | Checksum: 1122aa85b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:41 ; elapsed = 00:09:30 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.797 | TNS=-77.366| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 7 Timing Verification | Checksum: 1122aa85b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:41 ; elapsed = 00:09:30 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
o

Phase %s%s
101*constraints2
8 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 8 Route finalize | Checksum: 1122aa85b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:42 ; elapsed = 00:09:30 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
v

Phase %s%s
101*constraints2
9 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 9 Verifying routed nets | Checksum: 1122aa85b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:42 ; elapsed = 00:09:31 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
s

Phase %s%s
101*constraints2
10 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 10 Depositing Routes | Checksum: 120e0611d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:14:48 ; elapsed = 00:09:37 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
w

Phase %s%s
101*constraints2
11 2default:default2)
Incr Placement Change2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0302default:default2
2552.6602default:default2
0.0002default:defaultZ17-268h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.4032default:defaultZ30-746h px? 
@
+Ending IncrPlace Task | Checksum: 65d2ad82
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:01:26 ; elapsed = 00:01:09 . Memory (MB): peak = 2552.660 ; gain = 0.0002default:defaulth px? 
J
5Phase 11 Incr Placement Change | Checksum: 120e0611d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:16 ; elapsed = 00:10:48 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
q

Phase %s%s
101*constraints2
12 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 12 Build RT Design | Checksum: fe81ecf2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:27 ; elapsed = 00:10:59 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
w

Phase %s%s
101*constraints2
13 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
13.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
C
.Phase 13.1 Create Timer | Checksum: 1098b675c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:30 ; elapsed = 00:11:03 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
|

Phase %s%s
101*constraints2
13.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
O
:Phase 13.2 Fix Topology Constraints | Checksum: 1098b675c
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:31 ; elapsed = 00:11:03 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
u

Phase %s%s
101*constraints2
13.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
H
3Phase 13.3 Pre Route Cleanup | Checksum: 121c011cf
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:16:31 ; elapsed = 00:11:03 . Memory (MB): peak = 2552.660 ; gain = 133.3122default:defaulth px? 
q

Phase %s%s
101*constraints2
13.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 13.4 Update Timing | Checksum: be5bdb31
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:17:06 ; elapsed = 00:11:27 . Memory (MB): peak = 2646.250 ; gain = 226.9022default:defaulth px? 
?
Intermediate Timing Summary %s164*route2L
8| WNS=-3.483 | TNS=-70.658| WHS=-2.569 | THS=-1407.879|
2default:defaultZ35-416h px? 
J
5Phase 13 Router Initialization | Checksum: 129226572
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:17:21 ; elapsed = 00:11:36 . Memory (MB): peak = 2729.234 ; gain = 309.8872default:defaulth px? 
q

Phase %s%s
101*constraints2
14 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
D
/Phase 14 Initial Routing | Checksum: 2190a9172
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:17:31 ; elapsed = 00:11:42 . Memory (MB): peak = 2768.988 ; gain = 349.6412default:defaulth px? 
?
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
202default:default2?
?The top 5 pins with tight setup and hold constraints:

+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       Launch Clock       |      Capture Clock       |                                                 Pin                                                      |
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+
|       soc_s7pll0_clkout0 |                 clk_core |                   cdc/i_axi_cdc/i_cdc_fifo_gray_r/i_dst/i_spill_register/gen_spill_reg.a_data_q_reg[38]/D|
|                 clk_core |                 clk_core |                      swervolf/swerv_eh1/swerv/lsu/stbuf/GenStBuf[0].stbuf_flush_vldff/dffsc/dout_reg[0]/D|
|                 clk_core |                 clk_core |                      swervolf/swerv_eh1/swerv/lsu/stbuf/GenStBuf[2].stbuf_flush_vldff/dffsc/dout_reg[0]/D|
|                 clk_core |                 clk_core |                      swervolf/swerv_eh1/swerv/lsu/stbuf/GenStBuf[1].stbuf_drain_vldff/dffsc/dout_reg[0]/D|
|                 clk_core |                 clk_core |                      swervolf/swerv_eh1/swerv/lsu/stbuf/GenStBuf[0].stbuf_drain_vldff/dffsc/dout_reg[0]/D|
+--------------------------+--------------------------+----------------------------------------------------------------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
2default:defaultZ35-580h px? 
t

Phase %s%s
101*constraints2
15 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
v

Phase %s%s
101*constraints2
15.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.821 | TNS=-77.939| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.1 Global Iteration 0 | Checksum: 1b057f43a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:19:08 ; elapsed = 00:12:53 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
v

Phase %s%s
101*constraints2
15.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.810 | TNS=-77.523| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.2 Global Iteration 1 | Checksum: 1bab086d7
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:20:01 ; elapsed = 00:13:37 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
v

Phase %s%s
101*constraints2
15.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.644 | TNS=-74.768| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.3 Global Iteration 2 | Checksum: 16ae343ab
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:20:46 ; elapsed = 00:14:13 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
v

Phase %s%s
101*constraints2
15.4 2default:default2&
Global Iteration 32default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.800 | TNS=-77.313| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
I
4Phase 15.4 Global Iteration 3 | Checksum: 119b56617
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:14 ; elapsed = 00:14:35 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
G
2Phase 15 Rip-up And Reroute | Checksum: 119b56617
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:14 ; elapsed = 00:14:35 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
}

Phase %s%s
101*constraints2
16 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
16.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
16.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 16.1.1 Update Timing | Checksum: 12d4e4da1
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:21 ; elapsed = 00:14:40 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.556 | TNS=-72.879| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
D
/Phase 16.1 Delay CleanUp | Checksum: 152ca963b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:22 ; elapsed = 00:14:41 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
{

Phase %s%s
101*constraints2
16.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
N
9Phase 16.2 Clock Skew Optimization | Checksum: 152ca963b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:22 ; elapsed = 00:14:41 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
P
;Phase 16 Delay and Skew Optimization | Checksum: 152ca963b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:23 ; elapsed = 00:14:41 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
o

Phase %s%s
101*constraints2
17 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
17.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
s

Phase %s%s
101*constraints2
17.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 17.1.1 Update Timing | Checksum: 1da5e3651
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:30 ; elapsed = 00:14:46 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.558 | TNS=-72.551| WHS=-0.016 | THS=-0.016 |
2default:defaultZ35-416h px? 
D
/Phase 17.1 Hold Fix Iter | Checksum: 19cf7638a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:31 ; elapsed = 00:14:46 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
B
-Phase 17 Post Hold Fix | Checksum: 1a43884ce
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:31 ; elapsed = 00:14:47 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
u

Phase %s%s
101*constraints2
18 2default:default2'
Timing Verification2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
18.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 18.1 Update Timing | Checksum: 18648403a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:43 ; elapsed = 00:14:54 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-3.558 | TNS=-72.551| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 18 Timing Verification | Checksum: 18648403a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:43 ; elapsed = 00:14:54 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
p

Phase %s%s
101*constraints2
19 2default:default2"
Route finalize2default:defaultZ18-101h px? 
C
.Phase 19 Route finalize | Checksum: 18648403a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:44 ; elapsed = 00:14:55 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
w

Phase %s%s
101*constraints2
20 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
J
5Phase 20 Verifying routed nets | Checksum: 18648403a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:44 ; elapsed = 00:14:55 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
s

Phase %s%s
101*constraints2
21 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
F
1Phase 21 Depositing Routes | Checksum: 1a2a15cdc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:21:50 ; elapsed = 00:15:02 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
t

Phase %s%s
101*constraints2
22 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Post Routing Timing Summary %s
20*route2J
6| WNS=-3.560 | TNS=-72.575| WHS=0.051  | THS=0.000  |
2default:defaultZ35-20h px? 
?
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39h px? 
?
?TNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253h px? 
G
2Phase 22 Post Router Timing | Checksum: 1af383d00
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:22:20 ; elapsed = 00:15:18 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:22:20 ; elapsed = 00:15:18 . Memory (MB): peak = 2769.188 ; gain = 349.8402default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
14102default:default2
932default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:22:292default:default2
00:15:232default:default2
2769.1882default:default2
349.8402default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0312default:default2
2769.1882default:default2
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
00:00:232default:default2
00:00:082default:default2
2769.1882default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2d
PC:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.runs/impl_1/rvfpga_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:322default:default2
00:00:172default:default2
2769.1882default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2{
gExecuting : report_drc -file rvfpga_drc_routed.rpt -pb rvfpga_drc_routed.pb -rpx rvfpga_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2n
Zreport_drc -file rvfpga_drc_routed.rpt -pb rvfpga_drc_routed.pb -rpx rvfpga_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
TC:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.runs/impl_1/rvfpga_drc_routed.rptTC:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.runs/impl_1/rvfpga_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:172default:default2
00:00:092default:default2
2769.1882default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file rvfpga_methodology_drc_routed.rpt -pb rvfpga_methodology_drc_routed.pb -rpx rvfpga_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file rvfpga_methodology_drc_routed.rpt -pb rvfpga_methodology_drc_routed.pb -rpx rvfpga_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
`C:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.runs/impl_1/rvfpga_methodology_drc_routed.rpt`C:/Users/Chuck/RVfpga/vivado/project_2a/project_2a.runs/impl_1/rvfpga_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:502default:default2
00:00:272default:default2
2806.7772default:default2
37.5902default:defaultZ17-268h px? 
?
%s4*runtcl2?
wExecuting : report_power -file rvfpga_power_routed.rpt -pb rvfpga_power_summary_routed.pb -rpx rvfpga_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2~
jreport_power -file rvfpga_power_routed.rpt -pb rvfpga_power_summary_routed.pb -rpx rvfpga_power_routed.rpx2default:defaultZ4-113h px? 
q
$Power model is not available for %s
23*power2*
	STARTUPE2		STARTUPE22default:default8Z33-23h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
?Detected over-assertion of set/reset/preset/clear net with high fanouts, power estimation might not be accurate. Please run Tool - Power Constraint Wizard to set proper switching activities for control signals.282*powerZ33-332h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
14232default:default2
942default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:502default:default2
00:00:312default:default2
2806.7772default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2m
YExecuting : report_route_status -file rvfpga_route_status.rpt -pb rvfpga_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file rvfpga_timing_summary_routed.rpt -pb rvfpga_timing_summary_routed.pb -rpx rvfpga_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 

%s4*runtcl2c
OExecuting : report_incremental_reuse -file rvfpga_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 

%s4*runtcl2c
OExecuting : report_clock_utilization -file rvfpga_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file rvfpga_bus_skew_routed.rpt -pb rvfpga_bus_skew_routed.pb -rpx rvfpga_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record