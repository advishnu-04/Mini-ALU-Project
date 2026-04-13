PS C:\Users\adivi\Desktop\Logic Gates> iverilog module.v testbench.v
PS C:\Users\adivi\Desktop\Logic Gates> vvp a.out
VCD info: dumpfile alu.vcd opened for output.
Time=0 | A= 6 B= 3 sel=00 | Y= 9 carry=0
Time=10 | A= 6 B= 3 sel=01 | Y= 3 carry=0
Time=20 | A= 6 B= 3 sel=10 | Y= 2 carry=0
Time=30 | A= 6 B= 3 sel=11 | Y= 7 carry=0
Time=40 | A=15 B= 1 sel=00 | Y= 0 carry=1
Time=50 | A=15 B= 1 sel=01 | Y=14 carry=0
Time=60 | A=15 B= 1 sel=10 | Y= 1 carry=0
Time=70 | A=15 B= 1 sel=11 | Y=15 carry=0
testbench.v:41: $finish called at 80 (1s)
PS C:\Users\adivi\Desktop\Logic Gates> gtkwave alu.vcd

GTKWave Analyzer v3.3.100 (w)1999-2019 BSI

[0] start time.
[80] end time.
GTKWAVE | Reloading waveform...
[0] start time.
[80] end time.
GTKWAVE | ...waveform reloaded
