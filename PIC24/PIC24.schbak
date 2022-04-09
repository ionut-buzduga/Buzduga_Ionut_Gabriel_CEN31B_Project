VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL New_PC(5:0)
        SIGNAL PC(5:0)
        SIGNAL Clk
        SIGNAL PC(5:1)
        SIGNAL Instr(23:0)
        SIGNAL RegDest
        SIGNAL Instr(3:0)
        SIGNAL WrReg(3:0)
        SIGNAL Instr(4:0)
        SIGNAL Branch(2:0)
        SIGNAL RegWr
        SIGNAL Instr(10:7)
        SIGNAL RdData1(15:0)
        SIGNAL ALUOP(3:0)
        SIGNAL CE_CF
        SIGNAL CE_OVF
        SIGNAL CE_ZF
        SIGNAL CE_NF
        SIGNAL ZF
        SIGNAL OV
        SIGNAL N
        SIGNAL Instr(23:16)
        SIGNAL RdData2(15:0)
        SIGNAL Instr(8:4)
        SIGNAL INW0(15:0)
        SIGNAL INW1(15:0)
        SIGNAL MemWr
        SIGNAL OUTW0(15:0)
        SIGNAL MemOut(15:0)
        SIGNAL Mem2Reg
        SIGNAL WRData(15:0)
        SIGNAL Y(15:0)
        SIGNAL Instr(15:12)
        SIGNAL XLXN_2(3:0)
        SIGNAL Instr(18:15)
        SIGNAL Instr(14:11)
        SIGNAL WbReg
        SIGNAL C
        PORT Input Clk
        PORT Output ZF
        PORT Output OV
        PORT Output N
        PORT Input INW0(15:0)
        PORT Input INW1(15:0)
        PORT Output OUTW0(15:0)
        PORT Output C
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2022 1 6 13 41 19
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2022 1 6 13 51 35
            RECTANGLE N 64 -212 320 272 
            RECTANGLE N 320 -140 384 -116 
            LINE N 320 -128 384 -128 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -176 0 -176 
            LINE N 64 -16 0 -16 
            LINE N 64 48 0 48 
            LINE N 64 112 0 112 
            LINE N 64 176 0 176 
            RECTANGLE N 0 212 64 236 
            LINE N 64 224 0 224 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x24
            TIMESTAMP 2022 1 9 12 37 42
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2022 1 10 13 28 20
            RECTANGLE N 64 -472 384 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 64 -432 0 -432 
            LINE N 64 -368 0 -368 
            RECTANGLE N 0 -268 64 -244 
            LINE N 64 -256 0 -256 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 384 -332 448 -308 
            LINE N 384 -320 448 -320 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V4
            TIMESTAMP 2022 1 10 13 45 18
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -124 64 -100 
            LINE N 64 -112 0 -112 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2022 1 13 17 34 43
            RECTANGLE N 0 4 64 28 
            LINE N 64 16 0 16 
            LINE N 320 -608 384 -608 
            LINE N 320 -464 384 -464 
            LINE N 320 -320 384 -320 
            LINE N 320 -176 384 -176 
            RECTANGLE N 0 -604 64 -580 
            LINE N 64 -592 0 -592 
            RECTANGLE N 0 -540 64 -516 
            LINE N 64 -528 0 -528 
            LINE N 64 -80 0 -80 
            LINE N 64 -400 0 -400 
            LINE N 64 -336 0 -336 
            LINE N 64 -272 0 -272 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -476 64 -452 
            LINE N 64 -464 0 -464 
            RECTANGLE N 320 -92 384 -68 
            LINE N 320 -80 384 -80 
            RECTANGLE N 64 -640 320 48 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2022 1 12 17 28 13
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -704 320 64 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2022 1 11 10 33 25
            RECTANGLE N 64 -384 368 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 368 -364 432 -340 
            LINE N 368 -352 432 -352 
            RECTANGLE N 368 -44 432 -20 
            LINE N 368 -32 432 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V16
            TIMESTAMP 2022 1 11 12 4 38
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(5:0) New_PC(5:0)
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN New_PC(5:0) New_PC(5:0)
            PIN Offset(4:0) Instr(4:0)
            PIN Branch(2:0) Branch(2:0)
            PIN ZF ZF
            PIN OVF OV
            PIN CF C
            PIN NF N
            PIN PC(5:0) PC(5:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x24
            PIN Addr(4:0) PC(5:1)
            PIN Data(23:0) Instr(23:0)
        END BLOCK
        BEGIN BLOCK U_File_Regs File_Regs
            PIN WrReg(3:0) WrReg(3:0)
            PIN WRData(15:0) WRData(15:0)
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdReg1(3:0) XLXN_2(3:0)
            PIN RdReg2(3:0) Instr(3:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN RdData1(15:0) RdData1(15:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V4
            PIN Y(3:0) WrReg(3:0)
            PIN I0(3:0) Instr(3:0)
            PIN I1(3:0) Instr(10:7)
            PIN Sel RegDest
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN CE_N CE_NF
            PIN CE_Z CE_ZF
            PIN CE_OV CE_OVF
            PIN CE_C CE_CF
            PIN Clk Clk
            PIN RdData1(15:0) RdData1(15:0)
            PIN RdData2(15:0) RdData2(15:0)
            PIN ALUOP(3:0) ALUOP(3:0)
            PIN bit4(3:0) Instr(15:12)
            PIN ZF ZF
            PIN C C
            PIN OV OV
            PIN N N
            PIN Y(15:0) Y(15:0)
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN Wr MemWr
            PIN INW0(15:0) INW0(15:0)
            PIN INW1(15:0) INW1(15:0)
            PIN Addr(4:0) Instr(8:4)
            PIN DataIn(15:0) RdData2(15:0)
            PIN OUTW0(15:0) OUTW0(15:0)
            PIN DataOut(15:0) MemOut(15:0)
        END BLOCK
        BEGIN BLOCK MUX_Mem MUX2V16
            PIN Sel Mem2Reg
            PIN Y(15:0) WRData(15:0)
            PIN I1(15:0) MemOut(15:0)
            PIN I0(15:0) Y(15:0)
        END BLOCK
        BEGIN BLOCK U_ctrl ctrl
            PIN OP(7:0) Instr(23:16)
            PIN CE_ZF CE_ZF
            PIN CE_CF CE_CF
            PIN CE_OVF CE_OVF
            PIN CE_NF CE_NF
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN Branch(2:0) Branch(2:0)
            PIN ALUOP(3:0) ALUOP(3:0)
            PIN WbReg WbReg
        END BLOCK
        BEGIN BLOCK U_MUXBReg MUX2V4
            PIN Y(3:0) XLXN_2(3:0)
            PIN I0(3:0) Instr(14:11)
            PIN I1(3:0) Instr(18:15)
            PIN Sel WbReg
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_New_PC 608 400 M0
            BEGIN DISPLAY 0 -308 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN INSTANCE U_PC 208 960 R0
            BEGIN DISPLAY 0 -248 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH New_PC(5:0)
            WIRE 80 272 224 272
            WIRE 80 272 80 592
            WIRE 80 592 80 928
            WIRE 80 928 208 928
            BEGIN DISPLAY 80 592 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(5:0)
            WIRE 592 864 704 864
            WIRE 704 864 704 992
            WIRE 704 992 704 1072
            WIRE 608 624 704 624
            WIRE 704 624 704 704
            WIRE 704 704 704 864
            BEGIN DISPLAY 704 704 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 192 864 208 864
        END BRANCH
        IOMARKER 192 864 Clk R180 28
        BUSTAP 704 992 800 992
        BEGIN BRANCH PC(5:1)
            WIRE 800 992 848 992
            WIRE 848 992 896 992
            BEGIN DISPLAY 848 992 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 896 1024 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(23:0)
            WIRE 1280 992 1328 992
            WIRE 1328 992 1328 1024
            WIRE 1328 1024 1328 1072
            WIRE 1328 1072 1328 1136
            WIRE 1328 1136 1328 1232
            WIRE 1328 1232 1328 1408
            WIRE 1328 1408 1328 1504
            WIRE 1328 1504 1328 1648
            WIRE 1328 1648 1328 1824
            WIRE 1328 1824 1328 2480
            BEGIN DISPLAY 1328 1648 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MUXRegD 1584 1344 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1328 1136 1424 1136
        BEGIN BRANCH RegDest
            WIRE 1456 1312 1584 1312
            BEGIN DISPLAY 1456 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(3:0)
            WIRE 1424 1136 1488 1136
            WIRE 1488 1136 1488 1184
            WIRE 1488 1184 1584 1184
            WIRE 1488 1088 1488 1136
            WIRE 1488 1088 1600 1088
            WIRE 1600 1088 2064 1088
            BEGIN DISPLAY 1600 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_File_Regs 2064 1280 R0
            BEGIN DISPLAY 0 -620 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH WrReg(3:0)
            WIRE 1968 1184 2016 1184
            WIRE 2016 1184 2064 1184
            BEGIN DISPLAY 2016 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH N
            WIRE 608 576 640 576
            WIRE 640 576 704 576
            BEGIN DISPLAY 640 576 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OV
            WIRE 608 448 640 448
            WIRE 640 448 704 448
            BEGIN DISPLAY 640 448 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 608 384 640 384
            WIRE 640 384 704 384
            BEGIN DISPLAY 640 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(4:0)
            WIRE 608 320 640 320
            WIRE 640 320 704 320
            BEGIN DISPLAY 640 320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch(2:0)
            WIRE 608 224 656 224
            WIRE 656 224 704 224
            BEGIN DISPLAY 656 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 1984 848 2032 848
            WIRE 2032 848 2064 848
            BEGIN DISPLAY 2032 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 1984 912 2016 912
            WIRE 2016 912 2064 912
            BEGIN DISPLAY 2016 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1328 1232 1424 1232
        BEGIN BRANCH Instr(10:7)
            WIRE 1424 1232 1488 1232
            WIRE 1488 1232 1584 1232
            BEGIN DISPLAY 1488 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 2752 1664 R0
            BEGIN DISPLAY 0 -760 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData1(15:0)
            WIRE 2512 960 2576 960
            WIRE 2576 960 2624 960
            WIRE 2624 960 2624 1072
            WIRE 2624 1072 2752 1072
            BEGIN DISPLAY 2576 960 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(3:0)
            WIRE 2624 1200 2672 1200
            WIRE 2672 1200 2752 1200
            BEGIN DISPLAY 2672 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2656 1456 2704 1456
            WIRE 2704 1456 2752 1456
            BEGIN DISPLAY 2704 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2656 1392 2704 1392
            WIRE 2704 1392 2752 1392
            BEGIN DISPLAY 2704 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2624 1328 2672 1328
            WIRE 2672 1328 2752 1328
            BEGIN DISPLAY 2672 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2640 1264 2704 1264
            WIRE 2704 1264 2752 1264
            BEGIN DISPLAY 2704 1264 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ZF
            WIRE 3136 1056 3232 1056
        END BRANCH
        BEGIN BRANCH OV
            WIRE 3136 1344 3232 1344
        END BRANCH
        BEGIN BRANCH N
            WIRE 3136 1488 3232 1488
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 2640 1584 2704 1584
            WIRE 2704 1584 2752 1584
            BEGIN DISPLAY 2704 1584 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1328 1824 1424 1824
        BEGIN BRANCH Instr(23:16)
            WIRE 1424 1824 1520 1824
            WIRE 1520 1824 1648 1824
            BEGIN DISPLAY 1520 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(3:0)
            WIRE 2032 2464 2096 2464
            WIRE 2096 2464 2176 2464
            BEGIN DISPLAY 2096 2464 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch(2:0)
            WIRE 2032 2400 2080 2400
            WIRE 2080 2400 2176 2400
            BEGIN DISPLAY 2080 2400 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2032 2336 2096 2336
            WIRE 2096 2336 2192 2336
            BEGIN DISPLAY 2096 2336 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2032 2208 2096 2208
            WIRE 2096 2208 2192 2208
            BEGIN DISPLAY 2096 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2032 2144 2080 2144
            WIRE 2080 2144 2192 2144
            BEGIN DISPLAY 2080 2144 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2032 2080 2112 2080
            WIRE 2112 2080 2208 2080
            BEGIN DISPLAY 2112 2080 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_NF
            WIRE 2032 2016 2096 2016
            WIRE 2096 2016 2208 2016
            BEGIN DISPLAY 2096 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_OVF
            WIRE 2032 1952 2080 1952
            WIRE 2080 1952 2192 1952
            BEGIN DISPLAY 2080 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_CF
            WIRE 2032 1888 2096 1888
            WIRE 2096 1888 2176 1888
            BEGIN DISPLAY 2096 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CE_ZF
            WIRE 2032 1824 2096 1824
            WIRE 2096 1824 2176 1824
            BEGIN DISPLAY 2096 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 3664 1488 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData2(15:0)
            WIRE 2368 1376 2368 1840
            WIRE 2368 1840 3552 1840
            WIRE 2368 1376 2528 1376
            WIRE 2512 1136 2528 1136
            WIRE 2528 1136 2528 1376
            WIRE 2528 1136 2576 1136
            WIRE 2576 1136 2752 1136
            WIRE 3552 1456 3664 1456
            WIRE 3552 1456 3552 1840
            BEGIN DISPLAY 2576 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3232 1056 ZF R0 28
        IOMARKER 3232 1344 OV R0 28
        IOMARKER 3232 1488 N R0 28
        BEGIN BRANCH Instr(8:4)
            WIRE 3504 1392 3584 1392
            WIRE 3584 1392 3664 1392
            BEGIN DISPLAY 3584 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(15:0)
            WIRE 3648 1264 3664 1264
        END BRANCH
        BEGIN BRANCH INW1(15:0)
            WIRE 3648 1328 3664 1328
        END BRANCH
        IOMARKER 3648 1264 INW0(15:0) R180 28
        IOMARKER 3648 1328 INW1(15:0) R180 28
        BEGIN BRANCH Clk
            WIRE 3568 1136 3600 1136
            WIRE 3600 1136 3664 1136
            BEGIN DISPLAY 3600 1136 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 3568 1200 3600 1200
            WIRE 3600 1200 3664 1200
            BEGIN DISPLAY 3600 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH OUTW0(15:0)
            WIRE 4096 1136 4128 1136
        END BRANCH
        IOMARKER 4128 1136 OUTW0(15:0) R0 28
        BEGIN INSTANCE MUX_Mem 4352 1808 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(15:0)
            WIRE 4096 1456 4224 1456
            WIRE 4224 1456 4224 1472
            WIRE 4224 1472 4224 1712
            WIRE 4224 1712 4352 1712
            BEGIN DISPLAY 4224 1472 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4192 1648 4288 1648
            WIRE 4288 1648 4352 1648
            BEGIN DISPLAY 4288 1648 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WRData(15:0)
            WIRE 2000 1248 2064 1248
            WIRE 2000 1248 2000 1632
            WIRE 2000 1632 2304 1632
            WIRE 2304 1632 2304 1952
            WIRE 2304 1952 3248 1952
            WIRE 3248 1952 4032 1952
            WIRE 4032 1952 4032 2192
            WIRE 4032 2192 4816 2192
            WIRE 4736 1648 4816 1648
            WIRE 4816 1648 4816 2192
            BEGIN DISPLAY 3248 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Y(15:0)
            WIRE 3136 1584 3744 1584
            WIRE 3744 1584 3744 1776
            WIRE 3744 1776 3888 1776
            WIRE 3888 1776 4000 1776
            WIRE 4000 1776 4352 1776
            BEGIN DISPLAY 4000 1776 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ctrl 1648 2496 R0
            BEGIN DISPLAY 0 -824 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(15:12)
            WIRE 2624 1680 2672 1680
            WIRE 2672 1680 2752 1680
            BEGIN DISPLAY 2672 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_2(3:0)
            WIRE 1872 496 1936 496
            WIRE 1936 496 1936 720
            WIRE 1872 720 1872 992
            WIRE 1872 992 1872 1024
            WIRE 1872 1024 2048 1024
            WIRE 2048 1024 2064 1024
            WIRE 1872 720 1936 720
        END BRANCH
        BEGIN INSTANCE U_MUXBReg 1488 656 R0
            BEGIN DISPLAY 0 -312 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1328 1408 1424 1408
        BUSTAP 1328 1504 1424 1504
        BEGIN BRANCH Instr(18:15)
            WIRE 1424 1408 1472 1408
            WIRE 1472 1408 1552 1408
            BEGIN DISPLAY 1472 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(14:11)
            WIRE 1424 1504 1456 1504
            WIRE 1456 1504 1552 1504
            BEGIN DISPLAY 1456 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(18:15)
            WIRE 1376 544 1424 544
            WIRE 1424 544 1488 544
            BEGIN DISPLAY 1424 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(14:11)
            WIRE 1376 496 1392 496
            WIRE 1392 496 1488 496
            BEGIN DISPLAY 1392 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WbReg
            WIRE 1360 624 1408 624
            WIRE 1408 624 1488 624
            BEGIN DISPLAY 1408 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WbReg
            WIRE 2032 2272 2096 2272
            WIRE 2096 2272 2192 2272
            BEGIN DISPLAY 2096 2272 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH C
            WIRE 3136 1200 3248 1200
        END BRANCH
        IOMARKER 3248 1200 C R0 28
        BEGIN BRANCH C
            WIRE 608 512 640 512
            WIRE 640 512 704 512
            BEGIN DISPLAY 640 512 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
