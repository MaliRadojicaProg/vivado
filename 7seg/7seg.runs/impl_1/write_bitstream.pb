
l
Command: %s
1870*	planAhead27
#open_checkpoint sevenseg_routed.dcp2default:defaultZ12-2866h px� 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.14 . Memory (MB): peak = 1437.461 ; gain = 0.000 ; free physical = 4469 ; free virtual = 265012default:defaulth px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1580.9532default:default2
0.0002default:default2
42332default:default2
262332default:defaultZ17-722h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
?
Reading XDEF placement.
206*designutilsZ20-206h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
=
Reading XDEF routing.
207*designutilsZ20-207h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2$
Read XDEF File: 2default:default2
00:00:00.112default:default2
00:00:00.252default:default2
2197.1802default:default2
20.8122default:default2
36782default:default2
256752default:defaultZ17-722h px� 
�
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
0.2500002default:default2
1.1294102default:defaultZ20-1924h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common20
Finished XDEF File Restore: 2default:default2
00:00:00.112default:default2
00:00:00.252default:default2
2197.1802default:default2
20.8122default:default2
36782default:default2
256752default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2197.1802default:default2
0.0002default:default2
36772default:default2
256732default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
'Checkpoint was created with %s build %s378*project2+
Vivado v2019.2 (64-bit)2default:default2
27088762default:defaultZ1-604h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
open_checkpoint: 2default:default2
00:00:132default:default2
00:00:302default:default2
2197.1802default:default2
759.7192default:default2
36772default:default2
256732default:defaultZ17-722h px� 
h
Command: %s
53*	vivadotcl27
#write_bitstream -force sevenseg.bit2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen2<
(/home/marko/Xilinx/Vivado/2019.2/data/ip2default:defaultZ19-2313h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2j
 "T
count1/nx_state[0]_LDC_i_1_n_0count1/nx_state[0]_LDC_i_1_n_02default:default2default:default2f
 "P
count1/nx_state[0]_LDC_i_1/Ocount1/nx_state[0]_LDC_i_1/O2default:default2default:default2b
 "L
count1/nx_state[0]_LDC_i_1	count1/nx_state[0]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2j
 "T
count1/nx_state[1]_LDC_i_1_n_0count1/nx_state[1]_LDC_i_1_n_02default:default2default:default2f
 "P
count1/nx_state[1]_LDC_i_1/Ocount1/nx_state[1]_LDC_i_1/O2default:default2default:default2b
 "L
count1/nx_state[1]_LDC_i_1	count1/nx_state[1]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2j
 "T
count1/nx_state[2]_LDC_i_1_n_0count1/nx_state[2]_LDC_i_1_n_02default:default2default:default2f
 "P
count1/nx_state[2]_LDC_i_1/Ocount1/nx_state[2]_LDC_i_1/O2default:default2default:default2b
 "L
count1/nx_state[2]_LDC_i_1	count1/nx_state[2]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
�
�Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2j
 "T
count1/nx_state[3]_LDC_i_1_n_0count1/nx_state[3]_LDC_i_1_n_02default:default2default:default2f
 "P
count1/nx_state[3]_LDC_i_1/Ocount1/nx_state[3]_LDC_i_1/O2default:default2default:default2b
 "L
count1/nx_state[3]_LDC_i_1	count1/nx_state[3]_LDC_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px� 
f
DRC finished with %s
1905*	planAhead2(
0 Errors, 4 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
i
)Running write_bitstream with %s threads.
1750*designutils2
82default:defaultZ20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
_
Writing bitstream %s...
11*	bitstream2"
./sevenseg.bit2default:defaultZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
�
�WebTalk data collection is mandatory when using a WebPACK part without a full Vivado license. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.
120*projectZ1-120h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
202default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px� 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2%
write_bitstream: 2default:default2
00:00:112default:default2
00:00:242default:default2
2624.0702default:default2
426.8912default:default2
33562default:default2
253872default:defaultZ17-722h px� 


End Record