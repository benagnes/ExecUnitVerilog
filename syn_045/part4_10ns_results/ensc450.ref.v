/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP5
// Date      : Sat Apr 17 15:36:10 2021
/////////////////////////////////////////////////////////////



    module ubus_32_32_40001000_400017ff_20000000_200000ff_a0000000_a000000f_b0000000_b00000ff ( 
        clk, reset, M1_BUSY, M1_MR, M1_MW, M1_NREADY, M1_ADDRBUS, M1_RDATABUS, 
        M1_WDATABUS, M2_BUSY, M2_MR, M2_MW, M2_NREADY, M2_ADDRBUS, M2_RDATABUS, 
        M2_WDATABUS, S1_BUSY, S1_MR, S1_MW, S1_NREADY, S1_ADDRBUS, S1_RDATABUS, 
        S1_WDATABUS, S2_BUSY, S2_MR, S2_MW, S2_NREADY, S2_ADDRBUS, S2_RDATABUS, 
        S2_WDATABUS, S3_BUSY, S3_MR, S3_MW, S3_NREADY, S3_ADDRBUS, S3_RDATABUS, 
        S3_WDATABUS, S4_BUSY, S4_MR, S4_MW, S4_NREADY, S4_ADDRBUS, S4_RDATABUS, 
        S4_WDATABUS );
  input [31:0] M1_ADDRBUS;
  output [31:0] M1_RDATABUS;
  input [31:0] M1_WDATABUS;
  input [31:0] M2_ADDRBUS;
  output [31:0] M2_RDATABUS;
  input [31:0] M2_WDATABUS;
  output [31:0] S1_ADDRBUS;
  input [31:0] S1_RDATABUS;
  output [31:0] S1_WDATABUS;
  output [31:0] S2_ADDRBUS;
  input [31:0] S2_RDATABUS;
  output [31:0] S2_WDATABUS;
  output [31:0] S3_ADDRBUS;
  input [31:0] S3_RDATABUS;
  output [31:0] S3_WDATABUS;
  output [31:0] S4_ADDRBUS;
  input [31:0] S4_RDATABUS;
  output [31:0] S4_WDATABUS;
  input clk, reset, M1_BUSY, M1_MR, M1_MW, M2_BUSY, M2_MR, M2_MW, S1_NREADY,
         S2_NREADY, S3_NREADY, S4_NREADY;
  output M1_NREADY, M2_NREADY, S1_BUSY, S1_MR, S1_MW, S2_BUSY, S2_MR, S2_MW,
         S3_BUSY, S3_MR, S3_MW, S4_BUSY, S4_MR, S4_MW;
  wire   n352, n22, n25, n28, n30, n34, n250, n251, n252, n253, n254, n255,
         n256, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n23, n24, n26, n27, n29, n31, n32,
         n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305, n306, n307, n308,
         n309, n310, n311, n312, n313, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351;
  assign S1_ADDRBUS[12] = S1_ADDRBUS[30];
  assign S3_ADDRBUS[29] = S3_ADDRBUS[31];
  assign S4_ADDRBUS[29] = S4_ADDRBUS[31];
  assign S4_ADDRBUS[28] = S4_ADDRBUS[31];

  DFF_X1 \c2_op_reg[OP][0]  ( .D(n256), .CK(clk), .QN(n34) );
  DFF_X1 \c2_op_reg[MASTER][1]  ( .D(n250), .CK(clk), .Q(n350) );
  DFF_X1 \c2_op_reg[SLAVE][2]  ( .D(n252), .CK(clk), .QN(n25) );
  DFF_X1 \c2_op_reg[MASTER][0]  ( .D(n251), .CK(clk), .QN(n22) );
  DFF_X1 \c2_op_reg[SLAVE][1]  ( .D(n253), .CK(clk), .QN(n28) );
  DFF_X1 \c2_op_reg[SLAVE][0]  ( .D(n254), .CK(clk), .QN(n30) );
  DFF_X1 \c2_op_reg[OP][1]  ( .D(n255), .CK(clk), .Q(n351) );
  AND2_X2 U3 ( .A1(n257), .A2(n301), .ZN(n269) );
  NAND2_X2 U4 ( .A1(n260), .A2(n258), .ZN(n152) );
  INV_X1 U5 ( .A(n266), .ZN(n1) );
  INV_X2 U6 ( .A(n1), .ZN(n2) );
  INV_X2 U7 ( .A(n12), .ZN(n145) );
  AND2_X2 U8 ( .A1(n257), .A2(n258), .ZN(n156) );
  NAND2_X2 U9 ( .A1(n261), .A2(n301), .ZN(n265) );
  AND2_X2 U10 ( .A1(n259), .A2(n258), .ZN(n155) );
  NAND2_X2 U11 ( .A1(n261), .A2(n258), .ZN(n150) );
  AND2_X2 U12 ( .A1(n259), .A2(n301), .ZN(n268) );
  INV_X4 U13 ( .A(S4_ADDRBUS[31]), .ZN(n73) );
  INV_X4 U14 ( .A(S3_ADDRBUS[31]), .ZN(n137) );
  INV_X1 U15 ( .A(n143), .ZN(n3) );
  INV_X4 U16 ( .A(n3), .ZN(n4) );
  NOR2_X1 U17 ( .A1(n319), .A2(n49), .ZN(n338) );
  NAND2_X2 U18 ( .A1(n326), .A2(n41), .ZN(n309) );
  INV_X2 U19 ( .A(n352), .ZN(n140) );
  NOR2_X1 U20 ( .A1(n308), .A2(n17), .ZN(n352) );
  AOI211_X2 U21 ( .C1(n344), .C2(M2_MR), .A(M1_MR), .B(n146), .ZN(n61) );
  AOI21_X2 U22 ( .B1(n345), .B2(n346), .A(n23), .ZN(n64) );
  OR2_X2 U23 ( .A1(n39), .A2(n5), .ZN(n20) );
  NAND2_X1 U24 ( .A1(n71), .A2(n52), .ZN(n5) );
  NOR2_X2 U25 ( .A1(n347), .A2(n29), .ZN(n21) );
  INV_X2 U26 ( .A(n140), .ZN(n6) );
  INV_X1 U27 ( .A(n6), .ZN(n7) );
  INV_X1 U28 ( .A(n6), .ZN(n8) );
  INV_X8 U29 ( .A(n6), .ZN(n9) );
  OR2_X2 U30 ( .A1(n105), .A2(n26), .ZN(n13) );
  CLKBUF_X1 U31 ( .A(n106), .Z(n10) );
  OR3_X4 U32 ( .A1(M1_MR), .A2(M1_MW), .A3(n264), .ZN(n11) );
  OR2_X2 U33 ( .A1(n105), .A2(n26), .ZN(n12) );
  INV_X1 U34 ( .A(n324), .ZN(n14) );
  NAND2_X2 U35 ( .A1(n71), .A2(n11), .ZN(n15) );
  CLKBUF_X1 U36 ( .A(n117), .Z(n16) );
  AND2_X2 U37 ( .A1(n309), .A2(n312), .ZN(n17) );
  OAI21_X2 U38 ( .B1(n106), .B2(n24), .A(n13), .ZN(n148) );
  AND2_X2 U39 ( .A1(n18), .A2(n19), .ZN(n129) );
  NAND2_X1 U40 ( .A1(M1_ADDRBUS[16]), .A2(n147), .ZN(n18) );
  NAND2_X1 U41 ( .A1(M2_ADDRBUS[16]), .A2(n42), .ZN(n19) );
  OR2_X1 U42 ( .A1(n39), .A2(n15), .ZN(n50) );
  INV_X2 U43 ( .A(n50), .ZN(n144) );
  INV_X2 U44 ( .A(n64), .ZN(n106) );
  NOR2_X1 U45 ( .A1(n347), .A2(n29), .ZN(n23) );
  NOR2_X1 U46 ( .A1(n347), .A2(n29), .ZN(n146) );
  OR3_X4 U47 ( .A1(M1_MR), .A2(M1_MW), .A3(n264), .ZN(n24) );
  OR3_X4 U48 ( .A1(M1_MR), .A2(M1_MW), .A3(n264), .ZN(n26) );
  NOR2_X1 U49 ( .A1(n34), .A2(n351), .ZN(n27) );
  INV_X1 U50 ( .A(n27), .ZN(n29) );
  INV_X1 U51 ( .A(n64), .ZN(n31) );
  CLKBUF_X1 U52 ( .A(n310), .Z(n32) );
  AOI211_X1 U53 ( .C1(n344), .C2(M2_MR), .A(n21), .B(M1_MR), .ZN(n33) );
  INV_X1 U54 ( .A(n10), .ZN(n35) );
  CLKBUF_X1 U55 ( .A(n119), .Z(n36) );
  CLKBUF_X1 U56 ( .A(n120), .Z(n37) );
  CLKBUF_X1 U57 ( .A(n118), .Z(n38) );
  INV_X1 U58 ( .A(n61), .ZN(n39) );
  INV_X1 U59 ( .A(n33), .ZN(n105) );
  AND4_X2 U60 ( .A1(n338), .A2(n121), .A3(n123), .A4(n339), .ZN(n326) );
  NAND2_X1 U61 ( .A1(n335), .A2(n337), .ZN(n40) );
  INV_X1 U62 ( .A(n40), .ZN(n41) );
  OAI21_X2 U63 ( .B1(n106), .B2(n26), .A(n12), .ZN(n42) );
  OAI21_X2 U64 ( .B1(n106), .B2(n24), .A(n13), .ZN(n43) );
  NOR2_X2 U65 ( .A1(n325), .A2(n142), .ZN(n335) );
  CLKBUF_X1 U66 ( .A(n352), .Z(S2_ADDRBUS[29]) );
  NAND2_X1 U67 ( .A1(n309), .A2(n310), .ZN(n308) );
  CLKBUF_X1 U68 ( .A(n36), .Z(n45) );
  CLKBUF_X1 U69 ( .A(n37), .Z(n46) );
  INV_X1 U70 ( .A(n51), .ZN(n47) );
  NOR4_X2 U71 ( .A1(n333), .A2(n334), .A3(n321), .A4(n322), .ZN(n332) );
  NOR2_X1 U72 ( .A1(n336), .A2(n340), .ZN(n48) );
  INV_X1 U73 ( .A(n48), .ZN(n49) );
  AOI22_X4 U74 ( .A1(M2_BUSY), .A2(n258), .B1(M1_BUSY), .B2(n301), .ZN(n347)
         );
  CLKBUF_X1 U75 ( .A(n17), .Z(n51) );
  AND4_X2 U76 ( .A1(n131), .A2(n130), .A3(n129), .A4(n133), .ZN(n341) );
  OR3_X4 U77 ( .A1(M1_MR), .A2(M1_MW), .A3(n264), .ZN(n52) );
  NOR2_X2 U78 ( .A1(M2_MW), .A2(M2_MR), .ZN(n264) );
  CLKBUF_X1 U79 ( .A(n308), .Z(n53) );
  AOI221_X4 U80 ( .B1(S4_NREADY), .B2(S4_ADDRBUS[31]), .C1(S3_NREADY), .C2(
        S3_ADDRBUS[31]), .A(n21), .ZN(n307) );
  INV_X1 U81 ( .A(n58), .ZN(n54) );
  CLKBUF_X1 U82 ( .A(n54), .Z(n59) );
  CLKBUF_X1 U83 ( .A(n309), .Z(n55) );
  CLKBUF_X1 U84 ( .A(n319), .Z(n56) );
  CLKBUF_X1 U85 ( .A(n312), .Z(n57) );
  CLKBUF_X1 U86 ( .A(n105), .Z(n58) );
  AND4_X2 U87 ( .A1(n128), .A2(n127), .A3(n126), .A4(n132), .ZN(n342) );
  OAI21_X4 U88 ( .B1(n31), .B2(n15), .A(n20), .ZN(n147) );
  OAI22_X1 U89 ( .A1(n34), .A2(n60), .B1(n59), .B2(n62), .ZN(n256) );
  OAI22_X1 U90 ( .A1(n60), .A2(n63), .B1(n35), .B2(n62), .ZN(n255) );
  INV_X1 U91 ( .A(n351), .ZN(n63) );
  OAI22_X1 U92 ( .A1(n30), .A2(n60), .B1(n51), .B2(n62), .ZN(n254) );
  OAI22_X1 U93 ( .A1(n28), .A2(n60), .B1(n65), .B2(n62), .ZN(n253) );
  MUX2_X1 U94 ( .A(n66), .B(n67), .S(n60), .Z(n252) );
  NAND2_X1 U95 ( .A1(reset), .A2(n68), .ZN(n67) );
  OAI22_X1 U96 ( .A1(n22), .A2(n60), .B1(n24), .B2(n62), .ZN(n251) );
  NAND2_X1 U97 ( .A1(reset), .A2(n60), .ZN(n62) );
  MUX2_X1 U98 ( .A(n350), .B(n69), .S(n60), .Z(n250) );
  NAND2_X1 U99 ( .A1(reset), .A2(n70), .ZN(n60) );
  NAND2_X1 U100 ( .A1(reset), .A2(n71), .ZN(n69) );
  NOR2_X1 U101 ( .A1(n72), .A2(n73), .ZN(S4_WDATABUS[9]) );
  NOR2_X1 U102 ( .A1(n74), .A2(n73), .ZN(S4_WDATABUS[8]) );
  NOR2_X1 U103 ( .A1(n75), .A2(n73), .ZN(S4_WDATABUS[7]) );
  NOR2_X1 U104 ( .A1(n76), .A2(n73), .ZN(S4_WDATABUS[6]) );
  NOR2_X1 U105 ( .A1(n77), .A2(n73), .ZN(S4_WDATABUS[5]) );
  NOR2_X1 U106 ( .A1(n78), .A2(n73), .ZN(S4_WDATABUS[4]) );
  NOR2_X1 U107 ( .A1(n79), .A2(n73), .ZN(S4_WDATABUS[3]) );
  NOR2_X1 U108 ( .A1(n80), .A2(n73), .ZN(S4_WDATABUS[31]) );
  NOR2_X1 U109 ( .A1(n81), .A2(n73), .ZN(S4_WDATABUS[30]) );
  NOR2_X1 U110 ( .A1(n82), .A2(n73), .ZN(S4_WDATABUS[2]) );
  NOR2_X1 U111 ( .A1(n83), .A2(n73), .ZN(S4_WDATABUS[29]) );
  NOR2_X1 U112 ( .A1(n84), .A2(n73), .ZN(S4_WDATABUS[28]) );
  NOR2_X1 U113 ( .A1(n85), .A2(n73), .ZN(S4_WDATABUS[27]) );
  NOR2_X1 U114 ( .A1(n86), .A2(n73), .ZN(S4_WDATABUS[26]) );
  NOR2_X1 U115 ( .A1(n87), .A2(n73), .ZN(S4_WDATABUS[25]) );
  NOR2_X1 U116 ( .A1(n88), .A2(n73), .ZN(S4_WDATABUS[24]) );
  NOR2_X1 U117 ( .A1(n89), .A2(n73), .ZN(S4_WDATABUS[23]) );
  NOR2_X1 U118 ( .A1(n90), .A2(n73), .ZN(S4_WDATABUS[22]) );
  NOR2_X1 U119 ( .A1(n91), .A2(n73), .ZN(S4_WDATABUS[21]) );
  NOR2_X1 U120 ( .A1(n92), .A2(n73), .ZN(S4_WDATABUS[20]) );
  NOR2_X1 U121 ( .A1(n93), .A2(n73), .ZN(S4_WDATABUS[1]) );
  NOR2_X1 U122 ( .A1(n94), .A2(n73), .ZN(S4_WDATABUS[19]) );
  NOR2_X1 U123 ( .A1(n95), .A2(n73), .ZN(S4_WDATABUS[18]) );
  NOR2_X1 U124 ( .A1(n96), .A2(n73), .ZN(S4_WDATABUS[17]) );
  NOR2_X1 U125 ( .A1(n97), .A2(n73), .ZN(S4_WDATABUS[16]) );
  NOR2_X1 U126 ( .A1(n98), .A2(n73), .ZN(S4_WDATABUS[15]) );
  NOR2_X1 U127 ( .A1(n99), .A2(n73), .ZN(S4_WDATABUS[14]) );
  NOR2_X1 U128 ( .A1(n100), .A2(n73), .ZN(S4_WDATABUS[13]) );
  NOR2_X1 U129 ( .A1(n101), .A2(n73), .ZN(S4_WDATABUS[12]) );
  NOR2_X1 U130 ( .A1(n102), .A2(n73), .ZN(S4_WDATABUS[11]) );
  NOR2_X1 U131 ( .A1(n103), .A2(n73), .ZN(S4_WDATABUS[10]) );
  NOR2_X1 U132 ( .A1(n104), .A2(n73), .ZN(S4_WDATABUS[0]) );
  NOR2_X1 U133 ( .A1(n58), .A2(n73), .ZN(S4_MW) );
  NOR2_X1 U134 ( .A1(n10), .A2(n73), .ZN(S4_MR) );
  NOR3_X1 U135 ( .A1(n107), .A2(n30), .A3(n28), .ZN(S4_BUSY) );
  NOR2_X1 U136 ( .A1(n108), .A2(n73), .ZN(S4_ADDRBUS[9]) );
  NOR2_X1 U137 ( .A1(n109), .A2(n73), .ZN(S4_ADDRBUS[8]) );
  NOR2_X1 U138 ( .A1(n110), .A2(n73), .ZN(S4_ADDRBUS[7]) );
  NOR2_X1 U139 ( .A1(n111), .A2(n73), .ZN(S4_ADDRBUS[6]) );
  NOR2_X1 U140 ( .A1(n112), .A2(n73), .ZN(S4_ADDRBUS[5]) );
  NOR2_X1 U141 ( .A1(n113), .A2(n73), .ZN(S4_ADDRBUS[4]) );
  NOR2_X1 U142 ( .A1(n114), .A2(n73), .ZN(S4_ADDRBUS[3]) );
  NOR2_X1 U143 ( .A1(n115), .A2(n73), .ZN(S4_ADDRBUS[30]) );
  NOR2_X1 U144 ( .A1(n116), .A2(n73), .ZN(S4_ADDRBUS[2]) );
  NOR2_X1 U145 ( .A1(n16), .A2(n73), .ZN(S4_ADDRBUS[27]) );
  NOR2_X1 U146 ( .A1(n38), .A2(n73), .ZN(S4_ADDRBUS[26]) );
  NOR2_X1 U147 ( .A1(n45), .A2(n73), .ZN(S4_ADDRBUS[25]) );
  NOR2_X1 U148 ( .A1(n46), .A2(n73), .ZN(S4_ADDRBUS[24]) );
  NOR2_X1 U149 ( .A1(n121), .A2(n73), .ZN(S4_ADDRBUS[23]) );
  NOR2_X1 U150 ( .A1(n122), .A2(n73), .ZN(S4_ADDRBUS[22]) );
  NOR2_X1 U151 ( .A1(n123), .A2(n73), .ZN(S4_ADDRBUS[21]) );
  NOR2_X1 U152 ( .A1(n124), .A2(n73), .ZN(S4_ADDRBUS[20]) );
  NOR2_X1 U153 ( .A1(n125), .A2(n73), .ZN(S4_ADDRBUS[1]) );
  NOR2_X1 U154 ( .A1(n126), .A2(n73), .ZN(S4_ADDRBUS[19]) );
  NOR2_X1 U155 ( .A1(n127), .A2(n73), .ZN(S4_ADDRBUS[18]) );
  NOR2_X1 U156 ( .A1(n128), .A2(n73), .ZN(S4_ADDRBUS[17]) );
  NOR2_X1 U157 ( .A1(n129), .A2(n73), .ZN(S4_ADDRBUS[16]) );
  NOR2_X1 U158 ( .A1(n130), .A2(n73), .ZN(S4_ADDRBUS[15]) );
  NOR2_X1 U159 ( .A1(n131), .A2(n73), .ZN(S4_ADDRBUS[14]) );
  NOR2_X1 U160 ( .A1(n132), .A2(n73), .ZN(S4_ADDRBUS[13]) );
  NOR2_X1 U161 ( .A1(n133), .A2(n73), .ZN(S4_ADDRBUS[12]) );
  NOR2_X1 U162 ( .A1(n134), .A2(n73), .ZN(S4_ADDRBUS[11]) );
  NOR2_X1 U163 ( .A1(n135), .A2(n73), .ZN(S4_ADDRBUS[10]) );
  NOR2_X1 U164 ( .A1(n136), .A2(n73), .ZN(S4_ADDRBUS[0]) );
  NOR2_X1 U165 ( .A1(n72), .A2(n137), .ZN(S3_WDATABUS[9]) );
  NOR2_X1 U166 ( .A1(n74), .A2(n137), .ZN(S3_WDATABUS[8]) );
  NOR2_X1 U167 ( .A1(n75), .A2(n137), .ZN(S3_WDATABUS[7]) );
  NOR2_X1 U168 ( .A1(n76), .A2(n137), .ZN(S3_WDATABUS[6]) );
  NOR2_X1 U169 ( .A1(n77), .A2(n137), .ZN(S3_WDATABUS[5]) );
  NOR2_X1 U170 ( .A1(n78), .A2(n137), .ZN(S3_WDATABUS[4]) );
  NOR2_X1 U171 ( .A1(n79), .A2(n137), .ZN(S3_WDATABUS[3]) );
  NOR2_X1 U172 ( .A1(n80), .A2(n137), .ZN(S3_WDATABUS[31]) );
  NOR2_X1 U173 ( .A1(n81), .A2(n137), .ZN(S3_WDATABUS[30]) );
  NOR2_X1 U174 ( .A1(n82), .A2(n137), .ZN(S3_WDATABUS[2]) );
  NOR2_X1 U175 ( .A1(n83), .A2(n137), .ZN(S3_WDATABUS[29]) );
  NOR2_X1 U176 ( .A1(n84), .A2(n137), .ZN(S3_WDATABUS[28]) );
  NOR2_X1 U177 ( .A1(n85), .A2(n137), .ZN(S3_WDATABUS[27]) );
  NOR2_X1 U178 ( .A1(n86), .A2(n137), .ZN(S3_WDATABUS[26]) );
  NOR2_X1 U179 ( .A1(n87), .A2(n137), .ZN(S3_WDATABUS[25]) );
  NOR2_X1 U180 ( .A1(n88), .A2(n137), .ZN(S3_WDATABUS[24]) );
  NOR2_X1 U181 ( .A1(n89), .A2(n137), .ZN(S3_WDATABUS[23]) );
  NOR2_X1 U182 ( .A1(n90), .A2(n137), .ZN(S3_WDATABUS[22]) );
  NOR2_X1 U183 ( .A1(n91), .A2(n137), .ZN(S3_WDATABUS[21]) );
  NOR2_X1 U184 ( .A1(n92), .A2(n137), .ZN(S3_WDATABUS[20]) );
  NOR2_X1 U185 ( .A1(n93), .A2(n137), .ZN(S3_WDATABUS[1]) );
  NOR2_X1 U186 ( .A1(n94), .A2(n137), .ZN(S3_WDATABUS[19]) );
  NOR2_X1 U187 ( .A1(n95), .A2(n137), .ZN(S3_WDATABUS[18]) );
  NOR2_X1 U188 ( .A1(n96), .A2(n137), .ZN(S3_WDATABUS[17]) );
  NOR2_X1 U189 ( .A1(n97), .A2(n137), .ZN(S3_WDATABUS[16]) );
  NOR2_X1 U190 ( .A1(n98), .A2(n137), .ZN(S3_WDATABUS[15]) );
  NOR2_X1 U191 ( .A1(n99), .A2(n137), .ZN(S3_WDATABUS[14]) );
  NOR2_X1 U192 ( .A1(n100), .A2(n137), .ZN(S3_WDATABUS[13]) );
  NOR2_X1 U193 ( .A1(n101), .A2(n137), .ZN(S3_WDATABUS[12]) );
  NOR2_X1 U194 ( .A1(n102), .A2(n137), .ZN(S3_WDATABUS[11]) );
  NOR2_X1 U195 ( .A1(n103), .A2(n137), .ZN(S3_WDATABUS[10]) );
  NOR2_X1 U196 ( .A1(n104), .A2(n137), .ZN(S3_WDATABUS[0]) );
  NOR2_X1 U197 ( .A1(n58), .A2(n137), .ZN(S3_MW) );
  NOR2_X1 U198 ( .A1(n10), .A2(n137), .ZN(S3_MR) );
  NOR3_X1 U199 ( .A1(n138), .A2(n28), .A3(n107), .ZN(S3_BUSY) );
  NOR2_X1 U200 ( .A1(n108), .A2(n137), .ZN(S3_ADDRBUS[9]) );
  NOR2_X1 U201 ( .A1(n109), .A2(n137), .ZN(S3_ADDRBUS[8]) );
  NOR2_X1 U202 ( .A1(n110), .A2(n137), .ZN(S3_ADDRBUS[7]) );
  NOR2_X1 U203 ( .A1(n111), .A2(n137), .ZN(S3_ADDRBUS[6]) );
  NOR2_X1 U204 ( .A1(n112), .A2(n137), .ZN(S3_ADDRBUS[5]) );
  NOR2_X1 U205 ( .A1(n113), .A2(n137), .ZN(S3_ADDRBUS[4]) );
  NOR2_X1 U206 ( .A1(n114), .A2(n137), .ZN(S3_ADDRBUS[3]) );
  NOR2_X1 U207 ( .A1(n115), .A2(n137), .ZN(S3_ADDRBUS[30]) );
  NOR2_X1 U208 ( .A1(n116), .A2(n137), .ZN(S3_ADDRBUS[2]) );
  NOR2_X1 U209 ( .A1(n14), .A2(n137), .ZN(S3_ADDRBUS[28]) );
  NOR2_X1 U210 ( .A1(n16), .A2(n137), .ZN(S3_ADDRBUS[27]) );
  NOR2_X1 U211 ( .A1(n38), .A2(n137), .ZN(S3_ADDRBUS[26]) );
  NOR2_X1 U212 ( .A1(n36), .A2(n137), .ZN(S3_ADDRBUS[25]) );
  NOR2_X1 U213 ( .A1(n37), .A2(n137), .ZN(S3_ADDRBUS[24]) );
  NOR2_X1 U214 ( .A1(n121), .A2(n137), .ZN(S3_ADDRBUS[23]) );
  NOR2_X1 U215 ( .A1(n122), .A2(n137), .ZN(S3_ADDRBUS[22]) );
  NOR2_X1 U216 ( .A1(n123), .A2(n137), .ZN(S3_ADDRBUS[21]) );
  NOR2_X1 U217 ( .A1(n124), .A2(n137), .ZN(S3_ADDRBUS[20]) );
  NOR2_X1 U218 ( .A1(n125), .A2(n137), .ZN(S3_ADDRBUS[1]) );
  NOR2_X1 U219 ( .A1(n126), .A2(n137), .ZN(S3_ADDRBUS[19]) );
  NOR2_X1 U220 ( .A1(n127), .A2(n137), .ZN(S3_ADDRBUS[18]) );
  NOR2_X1 U221 ( .A1(n128), .A2(n137), .ZN(S3_ADDRBUS[17]) );
  NOR2_X1 U222 ( .A1(n129), .A2(n137), .ZN(S3_ADDRBUS[16]) );
  NOR2_X1 U223 ( .A1(n130), .A2(n137), .ZN(S3_ADDRBUS[15]) );
  NOR2_X1 U224 ( .A1(n131), .A2(n137), .ZN(S3_ADDRBUS[14]) );
  NOR2_X1 U225 ( .A1(n132), .A2(n137), .ZN(S3_ADDRBUS[13]) );
  NOR2_X1 U226 ( .A1(n133), .A2(n137), .ZN(S3_ADDRBUS[12]) );
  NOR2_X1 U227 ( .A1(n134), .A2(n137), .ZN(S3_ADDRBUS[11]) );
  NOR2_X1 U228 ( .A1(n135), .A2(n137), .ZN(S3_ADDRBUS[10]) );
  NOR2_X1 U229 ( .A1(n136), .A2(n137), .ZN(S3_ADDRBUS[0]) );
  NOR2_X1 U230 ( .A1(n72), .A2(n9), .ZN(S2_WDATABUS[9]) );
  NOR2_X1 U231 ( .A1(n74), .A2(n9), .ZN(S2_WDATABUS[8]) );
  NOR2_X1 U232 ( .A1(n75), .A2(n9), .ZN(S2_WDATABUS[7]) );
  NOR2_X1 U233 ( .A1(n76), .A2(n9), .ZN(S2_WDATABUS[6]) );
  NOR2_X1 U234 ( .A1(n77), .A2(n9), .ZN(S2_WDATABUS[5]) );
  NOR2_X1 U235 ( .A1(n78), .A2(n9), .ZN(S2_WDATABUS[4]) );
  NOR2_X1 U236 ( .A1(n79), .A2(n9), .ZN(S2_WDATABUS[3]) );
  NOR2_X1 U237 ( .A1(n80), .A2(n9), .ZN(S2_WDATABUS[31]) );
  NOR2_X1 U238 ( .A1(n81), .A2(n9), .ZN(S2_WDATABUS[30]) );
  NOR2_X1 U239 ( .A1(n82), .A2(n9), .ZN(S2_WDATABUS[2]) );
  NOR2_X1 U240 ( .A1(n83), .A2(n9), .ZN(S2_WDATABUS[29]) );
  NOR2_X1 U241 ( .A1(n84), .A2(n9), .ZN(S2_WDATABUS[28]) );
  NOR2_X1 U242 ( .A1(n85), .A2(n9), .ZN(S2_WDATABUS[27]) );
  NOR2_X1 U243 ( .A1(n86), .A2(n9), .ZN(S2_WDATABUS[26]) );
  NOR2_X1 U244 ( .A1(n87), .A2(n9), .ZN(S2_WDATABUS[25]) );
  NOR2_X1 U245 ( .A1(n88), .A2(n9), .ZN(S2_WDATABUS[24]) );
  NOR2_X1 U246 ( .A1(n89), .A2(n9), .ZN(S2_WDATABUS[23]) );
  NOR2_X1 U247 ( .A1(n90), .A2(n9), .ZN(S2_WDATABUS[22]) );
  NOR2_X1 U248 ( .A1(n91), .A2(n9), .ZN(S2_WDATABUS[21]) );
  NOR2_X1 U249 ( .A1(n92), .A2(n9), .ZN(S2_WDATABUS[20]) );
  NOR2_X1 U250 ( .A1(n93), .A2(n9), .ZN(S2_WDATABUS[1]) );
  NOR2_X1 U251 ( .A1(n94), .A2(n9), .ZN(S2_WDATABUS[19]) );
  NOR2_X1 U252 ( .A1(n95), .A2(n9), .ZN(S2_WDATABUS[18]) );
  NOR2_X1 U253 ( .A1(n96), .A2(n9), .ZN(S2_WDATABUS[17]) );
  NOR2_X1 U254 ( .A1(n97), .A2(n9), .ZN(S2_WDATABUS[16]) );
  NOR2_X1 U255 ( .A1(n98), .A2(n9), .ZN(S2_WDATABUS[15]) );
  NOR2_X1 U256 ( .A1(n99), .A2(n9), .ZN(S2_WDATABUS[14]) );
  NOR2_X1 U257 ( .A1(n100), .A2(n9), .ZN(S2_WDATABUS[13]) );
  NOR2_X1 U258 ( .A1(n101), .A2(n9), .ZN(S2_WDATABUS[12]) );
  NOR2_X1 U259 ( .A1(n102), .A2(n9), .ZN(S2_WDATABUS[11]) );
  NOR2_X1 U260 ( .A1(n103), .A2(n9), .ZN(S2_WDATABUS[10]) );
  NOR2_X1 U261 ( .A1(n104), .A2(n9), .ZN(S2_WDATABUS[0]) );
  NOR2_X1 U262 ( .A1(n58), .A2(n9), .ZN(S2_MW) );
  NOR2_X1 U263 ( .A1(n10), .A2(n9), .ZN(S2_MR) );
  NOR3_X1 U264 ( .A1(n141), .A2(n30), .A3(n107), .ZN(S2_BUSY) );
  NOR2_X1 U265 ( .A1(n108), .A2(n9), .ZN(S2_ADDRBUS[9]) );
  NOR2_X1 U266 ( .A1(n109), .A2(n9), .ZN(S2_ADDRBUS[8]) );
  NOR2_X1 U267 ( .A1(n110), .A2(n9), .ZN(S2_ADDRBUS[7]) );
  NOR2_X1 U268 ( .A1(n111), .A2(n9), .ZN(S2_ADDRBUS[6]) );
  NOR2_X1 U269 ( .A1(n112), .A2(n9), .ZN(S2_ADDRBUS[5]) );
  NOR2_X1 U270 ( .A1(n113), .A2(n9), .ZN(S2_ADDRBUS[4]) );
  NOR2_X1 U271 ( .A1(n114), .A2(n9), .ZN(S2_ADDRBUS[3]) );
  NOR2_X1 U272 ( .A1(n142), .A2(n7), .ZN(S2_ADDRBUS[31]) );
  NOR2_X1 U273 ( .A1(n115), .A2(n8), .ZN(S2_ADDRBUS[30]) );
  NOR2_X1 U274 ( .A1(n116), .A2(n9), .ZN(S2_ADDRBUS[2]) );
  NOR2_X1 U275 ( .A1(n139), .A2(n9), .ZN(S2_ADDRBUS[28]) );
  NOR2_X1 U276 ( .A1(n16), .A2(n9), .ZN(S2_ADDRBUS[27]) );
  NOR2_X1 U277 ( .A1(n118), .A2(n9), .ZN(S2_ADDRBUS[26]) );
  NOR2_X1 U278 ( .A1(n119), .A2(n9), .ZN(S2_ADDRBUS[25]) );
  NOR2_X1 U279 ( .A1(n120), .A2(n9), .ZN(S2_ADDRBUS[24]) );
  NOR2_X1 U280 ( .A1(n121), .A2(n9), .ZN(S2_ADDRBUS[23]) );
  NOR2_X1 U281 ( .A1(n122), .A2(n9), .ZN(S2_ADDRBUS[22]) );
  NOR2_X1 U282 ( .A1(n123), .A2(n9), .ZN(S2_ADDRBUS[21]) );
  NOR2_X1 U283 ( .A1(n124), .A2(n9), .ZN(S2_ADDRBUS[20]) );
  NOR2_X1 U284 ( .A1(n125), .A2(n9), .ZN(S2_ADDRBUS[1]) );
  NOR2_X1 U285 ( .A1(n126), .A2(n9), .ZN(S2_ADDRBUS[19]) );
  NOR2_X1 U286 ( .A1(n127), .A2(n9), .ZN(S2_ADDRBUS[18]) );
  NOR2_X1 U287 ( .A1(n128), .A2(n9), .ZN(S2_ADDRBUS[17]) );
  NOR2_X1 U288 ( .A1(n129), .A2(n9), .ZN(S2_ADDRBUS[16]) );
  NOR2_X1 U289 ( .A1(n130), .A2(n9), .ZN(S2_ADDRBUS[15]) );
  NOR2_X1 U290 ( .A1(n131), .A2(n9), .ZN(S2_ADDRBUS[14]) );
  NOR2_X1 U291 ( .A1(n132), .A2(n9), .ZN(S2_ADDRBUS[13]) );
  NOR2_X1 U292 ( .A1(n133), .A2(n9), .ZN(S2_ADDRBUS[12]) );
  NOR2_X1 U293 ( .A1(n134), .A2(n9), .ZN(S2_ADDRBUS[11]) );
  NOR2_X1 U294 ( .A1(n135), .A2(n9), .ZN(S2_ADDRBUS[10]) );
  NOR2_X1 U295 ( .A1(n136), .A2(n9), .ZN(S2_ADDRBUS[0]) );
  NOR2_X1 U296 ( .A1(n72), .A2(n4), .ZN(S1_WDATABUS[9]) );
  AOI22_X1 U297 ( .A1(M1_WDATABUS[9]), .A2(n144), .B1(M2_WDATABUS[9]), .B2(
        n145), .ZN(n72) );
  NOR2_X1 U298 ( .A1(n74), .A2(n4), .ZN(S1_WDATABUS[8]) );
  AOI22_X1 U299 ( .A1(M1_WDATABUS[8]), .A2(n144), .B1(M2_WDATABUS[8]), .B2(
        n145), .ZN(n74) );
  NOR2_X1 U300 ( .A1(n75), .A2(n4), .ZN(S1_WDATABUS[7]) );
  AOI22_X1 U301 ( .A1(M1_WDATABUS[7]), .A2(n144), .B1(M2_WDATABUS[7]), .B2(
        n145), .ZN(n75) );
  NOR2_X1 U302 ( .A1(n76), .A2(n4), .ZN(S1_WDATABUS[6]) );
  AOI22_X1 U303 ( .A1(M1_WDATABUS[6]), .A2(n144), .B1(M2_WDATABUS[6]), .B2(
        n145), .ZN(n76) );
  NOR2_X1 U304 ( .A1(n77), .A2(n4), .ZN(S1_WDATABUS[5]) );
  AOI22_X1 U305 ( .A1(M1_WDATABUS[5]), .A2(n144), .B1(M2_WDATABUS[5]), .B2(
        n145), .ZN(n77) );
  NOR2_X1 U306 ( .A1(n78), .A2(n4), .ZN(S1_WDATABUS[4]) );
  AOI22_X1 U307 ( .A1(M1_WDATABUS[4]), .A2(n144), .B1(M2_WDATABUS[4]), .B2(
        n145), .ZN(n78) );
  NOR2_X1 U308 ( .A1(n79), .A2(n4), .ZN(S1_WDATABUS[3]) );
  AOI22_X1 U309 ( .A1(M1_WDATABUS[3]), .A2(n144), .B1(M2_WDATABUS[3]), .B2(
        n145), .ZN(n79) );
  NOR2_X1 U310 ( .A1(n80), .A2(n4), .ZN(S1_WDATABUS[31]) );
  AOI22_X1 U311 ( .A1(M1_WDATABUS[31]), .A2(n144), .B1(M2_WDATABUS[31]), .B2(
        n145), .ZN(n80) );
  NOR2_X1 U312 ( .A1(n81), .A2(n4), .ZN(S1_WDATABUS[30]) );
  AOI22_X1 U313 ( .A1(M1_WDATABUS[30]), .A2(n144), .B1(M2_WDATABUS[30]), .B2(
        n145), .ZN(n81) );
  NOR2_X1 U314 ( .A1(n82), .A2(n4), .ZN(S1_WDATABUS[2]) );
  AOI22_X1 U315 ( .A1(M1_WDATABUS[2]), .A2(n144), .B1(M2_WDATABUS[2]), .B2(
        n145), .ZN(n82) );
  NOR2_X1 U316 ( .A1(n83), .A2(n4), .ZN(S1_WDATABUS[29]) );
  AOI22_X1 U317 ( .A1(M1_WDATABUS[29]), .A2(n144), .B1(M2_WDATABUS[29]), .B2(
        n145), .ZN(n83) );
  NOR2_X1 U318 ( .A1(n84), .A2(n4), .ZN(S1_WDATABUS[28]) );
  AOI22_X1 U319 ( .A1(M1_WDATABUS[28]), .A2(n144), .B1(M2_WDATABUS[28]), .B2(
        n145), .ZN(n84) );
  NOR2_X1 U320 ( .A1(n85), .A2(n4), .ZN(S1_WDATABUS[27]) );
  AOI22_X1 U321 ( .A1(M1_WDATABUS[27]), .A2(n144), .B1(M2_WDATABUS[27]), .B2(
        n145), .ZN(n85) );
  NOR2_X1 U322 ( .A1(n86), .A2(n4), .ZN(S1_WDATABUS[26]) );
  AOI22_X1 U323 ( .A1(M1_WDATABUS[26]), .A2(n144), .B1(M2_WDATABUS[26]), .B2(
        n145), .ZN(n86) );
  NOR2_X1 U324 ( .A1(n87), .A2(n4), .ZN(S1_WDATABUS[25]) );
  AOI22_X1 U325 ( .A1(M1_WDATABUS[25]), .A2(n144), .B1(M2_WDATABUS[25]), .B2(
        n145), .ZN(n87) );
  NOR2_X1 U326 ( .A1(n88), .A2(n4), .ZN(S1_WDATABUS[24]) );
  AOI22_X1 U327 ( .A1(M1_WDATABUS[24]), .A2(n144), .B1(M2_WDATABUS[24]), .B2(
        n145), .ZN(n88) );
  NOR2_X1 U328 ( .A1(n89), .A2(n4), .ZN(S1_WDATABUS[23]) );
  AOI22_X1 U329 ( .A1(M1_WDATABUS[23]), .A2(n144), .B1(M2_WDATABUS[23]), .B2(
        n145), .ZN(n89) );
  NOR2_X1 U330 ( .A1(n90), .A2(n4), .ZN(S1_WDATABUS[22]) );
  AOI22_X1 U331 ( .A1(M1_WDATABUS[22]), .A2(n144), .B1(M2_WDATABUS[22]), .B2(
        n145), .ZN(n90) );
  NOR2_X1 U332 ( .A1(n91), .A2(n4), .ZN(S1_WDATABUS[21]) );
  AOI22_X1 U333 ( .A1(M1_WDATABUS[21]), .A2(n144), .B1(M2_WDATABUS[21]), .B2(
        n145), .ZN(n91) );
  NOR2_X1 U334 ( .A1(n92), .A2(n4), .ZN(S1_WDATABUS[20]) );
  AOI22_X1 U335 ( .A1(M1_WDATABUS[20]), .A2(n144), .B1(M2_WDATABUS[20]), .B2(
        n145), .ZN(n92) );
  NOR2_X1 U336 ( .A1(n93), .A2(n4), .ZN(S1_WDATABUS[1]) );
  AOI22_X1 U337 ( .A1(M1_WDATABUS[1]), .A2(n144), .B1(M2_WDATABUS[1]), .B2(
        n145), .ZN(n93) );
  NOR2_X1 U338 ( .A1(n94), .A2(n4), .ZN(S1_WDATABUS[19]) );
  AOI22_X1 U339 ( .A1(M1_WDATABUS[19]), .A2(n144), .B1(M2_WDATABUS[19]), .B2(
        n145), .ZN(n94) );
  NOR2_X1 U340 ( .A1(n95), .A2(n4), .ZN(S1_WDATABUS[18]) );
  AOI22_X1 U341 ( .A1(M1_WDATABUS[18]), .A2(n144), .B1(M2_WDATABUS[18]), .B2(
        n145), .ZN(n95) );
  NOR2_X1 U342 ( .A1(n96), .A2(n4), .ZN(S1_WDATABUS[17]) );
  AOI22_X1 U343 ( .A1(M1_WDATABUS[17]), .A2(n144), .B1(M2_WDATABUS[17]), .B2(
        n145), .ZN(n96) );
  NOR2_X1 U344 ( .A1(n97), .A2(n4), .ZN(S1_WDATABUS[16]) );
  AOI22_X1 U345 ( .A1(M1_WDATABUS[16]), .A2(n144), .B1(M2_WDATABUS[16]), .B2(
        n145), .ZN(n97) );
  NOR2_X1 U346 ( .A1(n98), .A2(n4), .ZN(S1_WDATABUS[15]) );
  AOI22_X1 U347 ( .A1(M1_WDATABUS[15]), .A2(n144), .B1(M2_WDATABUS[15]), .B2(
        n145), .ZN(n98) );
  NOR2_X1 U348 ( .A1(n99), .A2(n4), .ZN(S1_WDATABUS[14]) );
  AOI22_X1 U349 ( .A1(M1_WDATABUS[14]), .A2(n144), .B1(M2_WDATABUS[14]), .B2(
        n145), .ZN(n99) );
  NOR2_X1 U350 ( .A1(n100), .A2(n4), .ZN(S1_WDATABUS[13]) );
  AOI22_X1 U351 ( .A1(M1_WDATABUS[13]), .A2(n144), .B1(M2_WDATABUS[13]), .B2(
        n145), .ZN(n100) );
  NOR2_X1 U352 ( .A1(n101), .A2(n4), .ZN(S1_WDATABUS[12]) );
  AOI22_X1 U353 ( .A1(M1_WDATABUS[12]), .A2(n144), .B1(M2_WDATABUS[12]), .B2(
        n145), .ZN(n101) );
  NOR2_X1 U354 ( .A1(n102), .A2(n4), .ZN(S1_WDATABUS[11]) );
  AOI22_X1 U355 ( .A1(M1_WDATABUS[11]), .A2(n144), .B1(M2_WDATABUS[11]), .B2(
        n145), .ZN(n102) );
  NOR2_X1 U356 ( .A1(n103), .A2(n4), .ZN(S1_WDATABUS[10]) );
  AOI22_X1 U357 ( .A1(M1_WDATABUS[10]), .A2(n144), .B1(M2_WDATABUS[10]), .B2(
        n145), .ZN(n103) );
  NOR2_X1 U358 ( .A1(n104), .A2(n4), .ZN(S1_WDATABUS[0]) );
  AOI22_X1 U359 ( .A1(M1_WDATABUS[0]), .A2(n144), .B1(M2_WDATABUS[0]), .B2(
        n145), .ZN(n104) );
  NOR2_X1 U360 ( .A1(n58), .A2(n4), .ZN(S1_MW) );
  NOR2_X1 U361 ( .A1(n10), .A2(n4), .ZN(S1_MR) );
  NOR3_X1 U362 ( .A1(n141), .A2(n107), .A3(n138), .ZN(S1_BUSY) );
  NAND2_X1 U363 ( .A1(n25), .A2(n21), .ZN(n107) );
  NOR2_X1 U364 ( .A1(n108), .A2(n4), .ZN(S1_ADDRBUS[9]) );
  NOR2_X1 U365 ( .A1(n109), .A2(n4), .ZN(S1_ADDRBUS[8]) );
  NOR2_X1 U366 ( .A1(n110), .A2(n4), .ZN(S1_ADDRBUS[7]) );
  NOR2_X1 U367 ( .A1(n111), .A2(n4), .ZN(S1_ADDRBUS[6]) );
  NOR2_X1 U368 ( .A1(n112), .A2(n4), .ZN(S1_ADDRBUS[5]) );
  NOR2_X1 U369 ( .A1(n113), .A2(n4), .ZN(S1_ADDRBUS[4]) );
  NOR2_X1 U370 ( .A1(n114), .A2(n4), .ZN(S1_ADDRBUS[3]) );
  AOI22_X1 U371 ( .A1(M1_ADDRBUS[3]), .A2(n147), .B1(M2_ADDRBUS[3]), .B2(n148), 
        .ZN(n114) );
  NOR2_X1 U372 ( .A1(n142), .A2(n4), .ZN(S1_ADDRBUS[31]) );
  NOR2_X1 U373 ( .A1(n116), .A2(n4), .ZN(S1_ADDRBUS[2]) );
  AOI22_X1 U374 ( .A1(M1_ADDRBUS[2]), .A2(n147), .B1(M2_ADDRBUS[2]), .B2(n42), 
        .ZN(n116) );
  NOR2_X1 U375 ( .A1(n149), .A2(n4), .ZN(S1_ADDRBUS[29]) );
  NOR2_X1 U376 ( .A1(n14), .A2(n4), .ZN(S1_ADDRBUS[28]) );
  NOR2_X1 U377 ( .A1(n16), .A2(n4), .ZN(S1_ADDRBUS[27]) );
  NOR2_X1 U378 ( .A1(n118), .A2(n4), .ZN(S1_ADDRBUS[26]) );
  NOR2_X1 U379 ( .A1(n119), .A2(n4), .ZN(S1_ADDRBUS[25]) );
  NOR2_X1 U380 ( .A1(n120), .A2(n4), .ZN(S1_ADDRBUS[24]) );
  NOR2_X1 U381 ( .A1(n121), .A2(n4), .ZN(S1_ADDRBUS[23]) );
  NOR2_X1 U382 ( .A1(n122), .A2(n4), .ZN(S1_ADDRBUS[22]) );
  NOR2_X1 U383 ( .A1(n123), .A2(n4), .ZN(S1_ADDRBUS[21]) );
  NOR2_X1 U384 ( .A1(n124), .A2(n4), .ZN(S1_ADDRBUS[20]) );
  NOR2_X1 U385 ( .A1(n125), .A2(n4), .ZN(S1_ADDRBUS[1]) );
  AOI22_X1 U386 ( .A1(M1_ADDRBUS[1]), .A2(n147), .B1(M2_ADDRBUS[1]), .B2(n42), 
        .ZN(n125) );
  NOR2_X1 U387 ( .A1(n126), .A2(n4), .ZN(S1_ADDRBUS[19]) );
  NOR2_X1 U388 ( .A1(n127), .A2(n4), .ZN(S1_ADDRBUS[18]) );
  NOR2_X1 U389 ( .A1(n128), .A2(n4), .ZN(S1_ADDRBUS[17]) );
  NOR2_X1 U390 ( .A1(n129), .A2(n4), .ZN(S1_ADDRBUS[16]) );
  NOR2_X1 U391 ( .A1(n130), .A2(n4), .ZN(S1_ADDRBUS[15]) );
  NOR2_X1 U392 ( .A1(n131), .A2(n4), .ZN(S1_ADDRBUS[14]) );
  NOR2_X1 U393 ( .A1(n132), .A2(n4), .ZN(S1_ADDRBUS[13]) );
  NOR2_X1 U394 ( .A1(n134), .A2(n4), .ZN(S1_ADDRBUS[11]) );
  NOR2_X1 U395 ( .A1(n135), .A2(n4), .ZN(S1_ADDRBUS[10]) );
  NOR2_X1 U396 ( .A1(n136), .A2(n4), .ZN(S1_ADDRBUS[0]) );
  AOI22_X1 U397 ( .A1(M1_ADDRBUS[0]), .A2(n147), .B1(M2_ADDRBUS[0]), .B2(n43), 
        .ZN(n136) );
  OAI221_X1 U398 ( .B1(n150), .B2(n151), .C1(n152), .C2(n153), .A(n154), .ZN(
        M2_RDATABUS[9]) );
  AOI22_X1 U399 ( .A1(S2_RDATABUS[9]), .A2(n155), .B1(S1_RDATABUS[9]), .B2(
        n156), .ZN(n154) );
  OAI221_X1 U400 ( .B1(n150), .B2(n157), .C1(n152), .C2(n158), .A(n159), .ZN(
        M2_RDATABUS[8]) );
  AOI22_X1 U401 ( .A1(S2_RDATABUS[8]), .A2(n155), .B1(S1_RDATABUS[8]), .B2(
        n156), .ZN(n159) );
  OAI221_X1 U402 ( .B1(n150), .B2(n160), .C1(n152), .C2(n161), .A(n162), .ZN(
        M2_RDATABUS[7]) );
  AOI22_X1 U403 ( .A1(S2_RDATABUS[7]), .A2(n155), .B1(S1_RDATABUS[7]), .B2(
        n156), .ZN(n162) );
  OAI221_X1 U404 ( .B1(n150), .B2(n163), .C1(n152), .C2(n164), .A(n165), .ZN(
        M2_RDATABUS[6]) );
  AOI22_X1 U405 ( .A1(S2_RDATABUS[6]), .A2(n155), .B1(S1_RDATABUS[6]), .B2(
        n156), .ZN(n165) );
  OAI221_X1 U406 ( .B1(n150), .B2(n166), .C1(n152), .C2(n167), .A(n168), .ZN(
        M2_RDATABUS[5]) );
  AOI22_X1 U407 ( .A1(S2_RDATABUS[5]), .A2(n155), .B1(S1_RDATABUS[5]), .B2(
        n156), .ZN(n168) );
  OAI221_X1 U408 ( .B1(n150), .B2(n169), .C1(n152), .C2(n170), .A(n171), .ZN(
        M2_RDATABUS[4]) );
  AOI22_X1 U409 ( .A1(S2_RDATABUS[4]), .A2(n155), .B1(S1_RDATABUS[4]), .B2(
        n156), .ZN(n171) );
  OAI221_X1 U410 ( .B1(n150), .B2(n172), .C1(n152), .C2(n173), .A(n174), .ZN(
        M2_RDATABUS[3]) );
  AOI22_X1 U411 ( .A1(S2_RDATABUS[3]), .A2(n155), .B1(S1_RDATABUS[3]), .B2(
        n156), .ZN(n174) );
  OAI221_X1 U412 ( .B1(n150), .B2(n175), .C1(n152), .C2(n176), .A(n177), .ZN(
        M2_RDATABUS[31]) );
  AOI22_X1 U413 ( .A1(S2_RDATABUS[31]), .A2(n155), .B1(S1_RDATABUS[31]), .B2(
        n156), .ZN(n177) );
  OAI221_X1 U414 ( .B1(n150), .B2(n178), .C1(n152), .C2(n179), .A(n180), .ZN(
        M2_RDATABUS[30]) );
  AOI22_X1 U415 ( .A1(S2_RDATABUS[30]), .A2(n155), .B1(S1_RDATABUS[30]), .B2(
        n156), .ZN(n180) );
  OAI221_X1 U416 ( .B1(n150), .B2(n181), .C1(n152), .C2(n182), .A(n183), .ZN(
        M2_RDATABUS[2]) );
  AOI22_X1 U417 ( .A1(S2_RDATABUS[2]), .A2(n155), .B1(S1_RDATABUS[2]), .B2(
        n156), .ZN(n183) );
  OAI221_X1 U418 ( .B1(n150), .B2(n184), .C1(n152), .C2(n185), .A(n186), .ZN(
        M2_RDATABUS[29]) );
  AOI22_X1 U419 ( .A1(S2_RDATABUS[29]), .A2(n155), .B1(S1_RDATABUS[29]), .B2(
        n156), .ZN(n186) );
  OAI221_X1 U420 ( .B1(n150), .B2(n187), .C1(n152), .C2(n188), .A(n189), .ZN(
        M2_RDATABUS[28]) );
  AOI22_X1 U421 ( .A1(S2_RDATABUS[28]), .A2(n155), .B1(S1_RDATABUS[28]), .B2(
        n156), .ZN(n189) );
  OAI221_X1 U422 ( .B1(n150), .B2(n190), .C1(n152), .C2(n191), .A(n192), .ZN(
        M2_RDATABUS[27]) );
  AOI22_X1 U423 ( .A1(S2_RDATABUS[27]), .A2(n155), .B1(S1_RDATABUS[27]), .B2(
        n156), .ZN(n192) );
  OAI221_X1 U424 ( .B1(n150), .B2(n193), .C1(n152), .C2(n194), .A(n195), .ZN(
        M2_RDATABUS[26]) );
  AOI22_X1 U425 ( .A1(S2_RDATABUS[26]), .A2(n155), .B1(S1_RDATABUS[26]), .B2(
        n156), .ZN(n195) );
  OAI221_X1 U426 ( .B1(n150), .B2(n196), .C1(n152), .C2(n197), .A(n198), .ZN(
        M2_RDATABUS[25]) );
  AOI22_X1 U427 ( .A1(S2_RDATABUS[25]), .A2(n155), .B1(S1_RDATABUS[25]), .B2(
        n156), .ZN(n198) );
  OAI221_X1 U428 ( .B1(n150), .B2(n199), .C1(n152), .C2(n200), .A(n201), .ZN(
        M2_RDATABUS[24]) );
  AOI22_X1 U429 ( .A1(S2_RDATABUS[24]), .A2(n155), .B1(S1_RDATABUS[24]), .B2(
        n156), .ZN(n201) );
  OAI221_X1 U430 ( .B1(n150), .B2(n202), .C1(n152), .C2(n203), .A(n204), .ZN(
        M2_RDATABUS[23]) );
  AOI22_X1 U431 ( .A1(S2_RDATABUS[23]), .A2(n155), .B1(S1_RDATABUS[23]), .B2(
        n156), .ZN(n204) );
  OAI221_X1 U432 ( .B1(n150), .B2(n205), .C1(n152), .C2(n206), .A(n207), .ZN(
        M2_RDATABUS[22]) );
  AOI22_X1 U433 ( .A1(S2_RDATABUS[22]), .A2(n155), .B1(S1_RDATABUS[22]), .B2(
        n156), .ZN(n207) );
  OAI221_X1 U434 ( .B1(n150), .B2(n208), .C1(n152), .C2(n209), .A(n210), .ZN(
        M2_RDATABUS[21]) );
  AOI22_X1 U435 ( .A1(S2_RDATABUS[21]), .A2(n155), .B1(S1_RDATABUS[21]), .B2(
        n156), .ZN(n210) );
  OAI221_X1 U436 ( .B1(n150), .B2(n211), .C1(n152), .C2(n212), .A(n213), .ZN(
        M2_RDATABUS[20]) );
  AOI22_X1 U437 ( .A1(S2_RDATABUS[20]), .A2(n155), .B1(S1_RDATABUS[20]), .B2(
        n156), .ZN(n213) );
  OAI221_X1 U438 ( .B1(n150), .B2(n214), .C1(n152), .C2(n215), .A(n216), .ZN(
        M2_RDATABUS[1]) );
  AOI22_X1 U439 ( .A1(S2_RDATABUS[1]), .A2(n155), .B1(S1_RDATABUS[1]), .B2(
        n156), .ZN(n216) );
  OAI221_X1 U440 ( .B1(n150), .B2(n217), .C1(n152), .C2(n218), .A(n219), .ZN(
        M2_RDATABUS[19]) );
  AOI22_X1 U441 ( .A1(S2_RDATABUS[19]), .A2(n155), .B1(S1_RDATABUS[19]), .B2(
        n156), .ZN(n219) );
  OAI221_X1 U442 ( .B1(n150), .B2(n220), .C1(n152), .C2(n221), .A(n222), .ZN(
        M2_RDATABUS[18]) );
  AOI22_X1 U443 ( .A1(S2_RDATABUS[18]), .A2(n155), .B1(S1_RDATABUS[18]), .B2(
        n156), .ZN(n222) );
  OAI221_X1 U444 ( .B1(n150), .B2(n223), .C1(n152), .C2(n224), .A(n225), .ZN(
        M2_RDATABUS[17]) );
  AOI22_X1 U445 ( .A1(S2_RDATABUS[17]), .A2(n155), .B1(S1_RDATABUS[17]), .B2(
        n156), .ZN(n225) );
  OAI221_X1 U446 ( .B1(n150), .B2(n226), .C1(n152), .C2(n227), .A(n228), .ZN(
        M2_RDATABUS[16]) );
  AOI22_X1 U447 ( .A1(S2_RDATABUS[16]), .A2(n155), .B1(S1_RDATABUS[16]), .B2(
        n156), .ZN(n228) );
  OAI221_X1 U448 ( .B1(n150), .B2(n229), .C1(n152), .C2(n230), .A(n231), .ZN(
        M2_RDATABUS[15]) );
  AOI22_X1 U449 ( .A1(S2_RDATABUS[15]), .A2(n155), .B1(S1_RDATABUS[15]), .B2(
        n156), .ZN(n231) );
  OAI221_X1 U450 ( .B1(n150), .B2(n232), .C1(n152), .C2(n233), .A(n234), .ZN(
        M2_RDATABUS[14]) );
  AOI22_X1 U451 ( .A1(S2_RDATABUS[14]), .A2(n155), .B1(S1_RDATABUS[14]), .B2(
        n156), .ZN(n234) );
  OAI221_X1 U452 ( .B1(n150), .B2(n235), .C1(n152), .C2(n236), .A(n237), .ZN(
        M2_RDATABUS[13]) );
  AOI22_X1 U453 ( .A1(S2_RDATABUS[13]), .A2(n155), .B1(S1_RDATABUS[13]), .B2(
        n156), .ZN(n237) );
  OAI221_X1 U454 ( .B1(n150), .B2(n238), .C1(n152), .C2(n239), .A(n240), .ZN(
        M2_RDATABUS[12]) );
  AOI22_X1 U455 ( .A1(S2_RDATABUS[12]), .A2(n155), .B1(S1_RDATABUS[12]), .B2(
        n156), .ZN(n240) );
  OAI221_X1 U456 ( .B1(n150), .B2(n241), .C1(n152), .C2(n242), .A(n243), .ZN(
        M2_RDATABUS[11]) );
  AOI22_X1 U457 ( .A1(S2_RDATABUS[11]), .A2(n155), .B1(S1_RDATABUS[11]), .B2(
        n156), .ZN(n243) );
  OAI221_X1 U458 ( .B1(n150), .B2(n244), .C1(n152), .C2(n245), .A(n246), .ZN(
        M2_RDATABUS[10]) );
  AOI22_X1 U459 ( .A1(S2_RDATABUS[10]), .A2(n155), .B1(S1_RDATABUS[10]), .B2(
        n156), .ZN(n246) );
  OAI221_X1 U460 ( .B1(n150), .B2(n247), .C1(n152), .C2(n248), .A(n249), .ZN(
        M2_RDATABUS[0]) );
  AOI22_X1 U461 ( .A1(S2_RDATABUS[0]), .A2(n155), .B1(S1_RDATABUS[0]), .B2(
        n156), .ZN(n249) );
  INV_X1 U462 ( .A(n262), .ZN(M2_NREADY) );
  MUX2_X1 U463 ( .A(n263), .B(n264), .S(n26), .Z(n262) );
  OAI221_X1 U464 ( .B1(n151), .B2(n265), .C1(n153), .C2(n2), .A(n267), .ZN(
        M1_RDATABUS[9]) );
  AOI22_X1 U465 ( .A1(n268), .A2(S2_RDATABUS[9]), .B1(n269), .B2(
        S1_RDATABUS[9]), .ZN(n267) );
  INV_X1 U466 ( .A(S3_RDATABUS[9]), .ZN(n153) );
  INV_X1 U467 ( .A(S4_RDATABUS[9]), .ZN(n151) );
  OAI221_X1 U468 ( .B1(n157), .B2(n265), .C1(n158), .C2(n2), .A(n270), .ZN(
        M1_RDATABUS[8]) );
  AOI22_X1 U469 ( .A1(n268), .A2(S2_RDATABUS[8]), .B1(n269), .B2(
        S1_RDATABUS[8]), .ZN(n270) );
  INV_X1 U470 ( .A(S3_RDATABUS[8]), .ZN(n158) );
  INV_X1 U471 ( .A(S4_RDATABUS[8]), .ZN(n157) );
  OAI221_X1 U472 ( .B1(n160), .B2(n265), .C1(n161), .C2(n2), .A(n271), .ZN(
        M1_RDATABUS[7]) );
  AOI22_X1 U473 ( .A1(n268), .A2(S2_RDATABUS[7]), .B1(n269), .B2(
        S1_RDATABUS[7]), .ZN(n271) );
  INV_X1 U474 ( .A(S3_RDATABUS[7]), .ZN(n161) );
  INV_X1 U475 ( .A(S4_RDATABUS[7]), .ZN(n160) );
  OAI221_X1 U476 ( .B1(n163), .B2(n265), .C1(n164), .C2(n2), .A(n272), .ZN(
        M1_RDATABUS[6]) );
  AOI22_X1 U477 ( .A1(n268), .A2(S2_RDATABUS[6]), .B1(n269), .B2(
        S1_RDATABUS[6]), .ZN(n272) );
  INV_X1 U478 ( .A(S3_RDATABUS[6]), .ZN(n164) );
  INV_X1 U479 ( .A(S4_RDATABUS[6]), .ZN(n163) );
  OAI221_X1 U480 ( .B1(n166), .B2(n265), .C1(n167), .C2(n2), .A(n273), .ZN(
        M1_RDATABUS[5]) );
  AOI22_X1 U481 ( .A1(n268), .A2(S2_RDATABUS[5]), .B1(n269), .B2(
        S1_RDATABUS[5]), .ZN(n273) );
  INV_X1 U482 ( .A(S3_RDATABUS[5]), .ZN(n167) );
  INV_X1 U483 ( .A(S4_RDATABUS[5]), .ZN(n166) );
  OAI221_X1 U484 ( .B1(n169), .B2(n265), .C1(n170), .C2(n2), .A(n274), .ZN(
        M1_RDATABUS[4]) );
  AOI22_X1 U485 ( .A1(n268), .A2(S2_RDATABUS[4]), .B1(n269), .B2(
        S1_RDATABUS[4]), .ZN(n274) );
  INV_X1 U486 ( .A(S3_RDATABUS[4]), .ZN(n170) );
  INV_X1 U487 ( .A(S4_RDATABUS[4]), .ZN(n169) );
  OAI221_X1 U488 ( .B1(n172), .B2(n265), .C1(n173), .C2(n2), .A(n275), .ZN(
        M1_RDATABUS[3]) );
  AOI22_X1 U489 ( .A1(n268), .A2(S2_RDATABUS[3]), .B1(n269), .B2(
        S1_RDATABUS[3]), .ZN(n275) );
  INV_X1 U490 ( .A(S3_RDATABUS[3]), .ZN(n173) );
  INV_X1 U491 ( .A(S4_RDATABUS[3]), .ZN(n172) );
  OAI221_X1 U492 ( .B1(n175), .B2(n265), .C1(n176), .C2(n2), .A(n276), .ZN(
        M1_RDATABUS[31]) );
  AOI22_X1 U493 ( .A1(n268), .A2(S2_RDATABUS[31]), .B1(n269), .B2(
        S1_RDATABUS[31]), .ZN(n276) );
  INV_X1 U494 ( .A(S3_RDATABUS[31]), .ZN(n176) );
  INV_X1 U495 ( .A(S4_RDATABUS[31]), .ZN(n175) );
  OAI221_X1 U496 ( .B1(n178), .B2(n265), .C1(n179), .C2(n2), .A(n277), .ZN(
        M1_RDATABUS[30]) );
  AOI22_X1 U497 ( .A1(n268), .A2(S2_RDATABUS[30]), .B1(n269), .B2(
        S1_RDATABUS[30]), .ZN(n277) );
  INV_X1 U498 ( .A(S3_RDATABUS[30]), .ZN(n179) );
  INV_X1 U499 ( .A(S4_RDATABUS[30]), .ZN(n178) );
  OAI221_X1 U500 ( .B1(n181), .B2(n265), .C1(n182), .C2(n2), .A(n278), .ZN(
        M1_RDATABUS[2]) );
  AOI22_X1 U501 ( .A1(n268), .A2(S2_RDATABUS[2]), .B1(n269), .B2(
        S1_RDATABUS[2]), .ZN(n278) );
  INV_X1 U502 ( .A(S3_RDATABUS[2]), .ZN(n182) );
  INV_X1 U503 ( .A(S4_RDATABUS[2]), .ZN(n181) );
  OAI221_X1 U504 ( .B1(n184), .B2(n265), .C1(n185), .C2(n2), .A(n279), .ZN(
        M1_RDATABUS[29]) );
  AOI22_X1 U505 ( .A1(n268), .A2(S2_RDATABUS[29]), .B1(n269), .B2(
        S1_RDATABUS[29]), .ZN(n279) );
  INV_X1 U506 ( .A(S3_RDATABUS[29]), .ZN(n185) );
  INV_X1 U507 ( .A(S4_RDATABUS[29]), .ZN(n184) );
  OAI221_X1 U508 ( .B1(n187), .B2(n265), .C1(n188), .C2(n2), .A(n280), .ZN(
        M1_RDATABUS[28]) );
  AOI22_X1 U509 ( .A1(n268), .A2(S2_RDATABUS[28]), .B1(n269), .B2(
        S1_RDATABUS[28]), .ZN(n280) );
  INV_X1 U510 ( .A(S3_RDATABUS[28]), .ZN(n188) );
  INV_X1 U511 ( .A(S4_RDATABUS[28]), .ZN(n187) );
  OAI221_X1 U512 ( .B1(n190), .B2(n265), .C1(n191), .C2(n2), .A(n281), .ZN(
        M1_RDATABUS[27]) );
  AOI22_X1 U513 ( .A1(n268), .A2(S2_RDATABUS[27]), .B1(n269), .B2(
        S1_RDATABUS[27]), .ZN(n281) );
  INV_X1 U514 ( .A(S3_RDATABUS[27]), .ZN(n191) );
  INV_X1 U515 ( .A(S4_RDATABUS[27]), .ZN(n190) );
  OAI221_X1 U516 ( .B1(n193), .B2(n265), .C1(n194), .C2(n2), .A(n282), .ZN(
        M1_RDATABUS[26]) );
  AOI22_X1 U517 ( .A1(n268), .A2(S2_RDATABUS[26]), .B1(n269), .B2(
        S1_RDATABUS[26]), .ZN(n282) );
  INV_X1 U518 ( .A(S3_RDATABUS[26]), .ZN(n194) );
  INV_X1 U519 ( .A(S4_RDATABUS[26]), .ZN(n193) );
  OAI221_X1 U520 ( .B1(n196), .B2(n265), .C1(n197), .C2(n2), .A(n283), .ZN(
        M1_RDATABUS[25]) );
  AOI22_X1 U521 ( .A1(n268), .A2(S2_RDATABUS[25]), .B1(n269), .B2(
        S1_RDATABUS[25]), .ZN(n283) );
  INV_X1 U522 ( .A(S3_RDATABUS[25]), .ZN(n197) );
  INV_X1 U523 ( .A(S4_RDATABUS[25]), .ZN(n196) );
  OAI221_X1 U524 ( .B1(n199), .B2(n265), .C1(n200), .C2(n2), .A(n284), .ZN(
        M1_RDATABUS[24]) );
  AOI22_X1 U525 ( .A1(n268), .A2(S2_RDATABUS[24]), .B1(n269), .B2(
        S1_RDATABUS[24]), .ZN(n284) );
  INV_X1 U526 ( .A(S3_RDATABUS[24]), .ZN(n200) );
  INV_X1 U527 ( .A(S4_RDATABUS[24]), .ZN(n199) );
  OAI221_X1 U528 ( .B1(n202), .B2(n265), .C1(n203), .C2(n2), .A(n285), .ZN(
        M1_RDATABUS[23]) );
  AOI22_X1 U529 ( .A1(n268), .A2(S2_RDATABUS[23]), .B1(n269), .B2(
        S1_RDATABUS[23]), .ZN(n285) );
  INV_X1 U530 ( .A(S3_RDATABUS[23]), .ZN(n203) );
  INV_X1 U531 ( .A(S4_RDATABUS[23]), .ZN(n202) );
  OAI221_X1 U532 ( .B1(n205), .B2(n265), .C1(n206), .C2(n2), .A(n286), .ZN(
        M1_RDATABUS[22]) );
  AOI22_X1 U533 ( .A1(n268), .A2(S2_RDATABUS[22]), .B1(n269), .B2(
        S1_RDATABUS[22]), .ZN(n286) );
  INV_X1 U534 ( .A(S3_RDATABUS[22]), .ZN(n206) );
  INV_X1 U535 ( .A(S4_RDATABUS[22]), .ZN(n205) );
  OAI221_X1 U536 ( .B1(n208), .B2(n265), .C1(n209), .C2(n2), .A(n287), .ZN(
        M1_RDATABUS[21]) );
  AOI22_X1 U537 ( .A1(n268), .A2(S2_RDATABUS[21]), .B1(n269), .B2(
        S1_RDATABUS[21]), .ZN(n287) );
  INV_X1 U538 ( .A(S3_RDATABUS[21]), .ZN(n209) );
  INV_X1 U539 ( .A(S4_RDATABUS[21]), .ZN(n208) );
  OAI221_X1 U540 ( .B1(n211), .B2(n265), .C1(n212), .C2(n2), .A(n288), .ZN(
        M1_RDATABUS[20]) );
  AOI22_X1 U541 ( .A1(n268), .A2(S2_RDATABUS[20]), .B1(n269), .B2(
        S1_RDATABUS[20]), .ZN(n288) );
  INV_X1 U542 ( .A(S3_RDATABUS[20]), .ZN(n212) );
  INV_X1 U543 ( .A(S4_RDATABUS[20]), .ZN(n211) );
  OAI221_X1 U544 ( .B1(n214), .B2(n265), .C1(n215), .C2(n2), .A(n289), .ZN(
        M1_RDATABUS[1]) );
  AOI22_X1 U545 ( .A1(n268), .A2(S2_RDATABUS[1]), .B1(n269), .B2(
        S1_RDATABUS[1]), .ZN(n289) );
  INV_X1 U546 ( .A(S3_RDATABUS[1]), .ZN(n215) );
  INV_X1 U547 ( .A(S4_RDATABUS[1]), .ZN(n214) );
  OAI221_X1 U548 ( .B1(n217), .B2(n265), .C1(n218), .C2(n2), .A(n290), .ZN(
        M1_RDATABUS[19]) );
  AOI22_X1 U549 ( .A1(n268), .A2(S2_RDATABUS[19]), .B1(n269), .B2(
        S1_RDATABUS[19]), .ZN(n290) );
  INV_X1 U550 ( .A(S3_RDATABUS[19]), .ZN(n218) );
  INV_X1 U551 ( .A(S4_RDATABUS[19]), .ZN(n217) );
  OAI221_X1 U552 ( .B1(n220), .B2(n265), .C1(n221), .C2(n2), .A(n291), .ZN(
        M1_RDATABUS[18]) );
  AOI22_X1 U553 ( .A1(n268), .A2(S2_RDATABUS[18]), .B1(n269), .B2(
        S1_RDATABUS[18]), .ZN(n291) );
  INV_X1 U554 ( .A(S3_RDATABUS[18]), .ZN(n221) );
  INV_X1 U555 ( .A(S4_RDATABUS[18]), .ZN(n220) );
  OAI221_X1 U556 ( .B1(n223), .B2(n265), .C1(n224), .C2(n2), .A(n292), .ZN(
        M1_RDATABUS[17]) );
  AOI22_X1 U557 ( .A1(n268), .A2(S2_RDATABUS[17]), .B1(n269), .B2(
        S1_RDATABUS[17]), .ZN(n292) );
  INV_X1 U558 ( .A(S3_RDATABUS[17]), .ZN(n224) );
  INV_X1 U559 ( .A(S4_RDATABUS[17]), .ZN(n223) );
  OAI221_X1 U560 ( .B1(n226), .B2(n265), .C1(n227), .C2(n2), .A(n293), .ZN(
        M1_RDATABUS[16]) );
  AOI22_X1 U561 ( .A1(n268), .A2(S2_RDATABUS[16]), .B1(n269), .B2(
        S1_RDATABUS[16]), .ZN(n293) );
  INV_X1 U562 ( .A(S3_RDATABUS[16]), .ZN(n227) );
  INV_X1 U563 ( .A(S4_RDATABUS[16]), .ZN(n226) );
  OAI221_X1 U564 ( .B1(n229), .B2(n265), .C1(n230), .C2(n2), .A(n294), .ZN(
        M1_RDATABUS[15]) );
  AOI22_X1 U565 ( .A1(n268), .A2(S2_RDATABUS[15]), .B1(n269), .B2(
        S1_RDATABUS[15]), .ZN(n294) );
  INV_X1 U566 ( .A(S3_RDATABUS[15]), .ZN(n230) );
  INV_X1 U567 ( .A(S4_RDATABUS[15]), .ZN(n229) );
  OAI221_X1 U568 ( .B1(n232), .B2(n265), .C1(n233), .C2(n2), .A(n295), .ZN(
        M1_RDATABUS[14]) );
  AOI22_X1 U569 ( .A1(n268), .A2(S2_RDATABUS[14]), .B1(n269), .B2(
        S1_RDATABUS[14]), .ZN(n295) );
  INV_X1 U570 ( .A(S3_RDATABUS[14]), .ZN(n233) );
  INV_X1 U571 ( .A(S4_RDATABUS[14]), .ZN(n232) );
  OAI221_X1 U572 ( .B1(n235), .B2(n265), .C1(n236), .C2(n2), .A(n296), .ZN(
        M1_RDATABUS[13]) );
  AOI22_X1 U573 ( .A1(n268), .A2(S2_RDATABUS[13]), .B1(n269), .B2(
        S1_RDATABUS[13]), .ZN(n296) );
  INV_X1 U574 ( .A(S3_RDATABUS[13]), .ZN(n236) );
  INV_X1 U575 ( .A(S4_RDATABUS[13]), .ZN(n235) );
  OAI221_X1 U576 ( .B1(n238), .B2(n265), .C1(n239), .C2(n2), .A(n297), .ZN(
        M1_RDATABUS[12]) );
  AOI22_X1 U577 ( .A1(n268), .A2(S2_RDATABUS[12]), .B1(n269), .B2(
        S1_RDATABUS[12]), .ZN(n297) );
  INV_X1 U578 ( .A(S3_RDATABUS[12]), .ZN(n239) );
  INV_X1 U579 ( .A(S4_RDATABUS[12]), .ZN(n238) );
  OAI221_X1 U580 ( .B1(n241), .B2(n265), .C1(n242), .C2(n2), .A(n298), .ZN(
        M1_RDATABUS[11]) );
  AOI22_X1 U581 ( .A1(n268), .A2(S2_RDATABUS[11]), .B1(n269), .B2(
        S1_RDATABUS[11]), .ZN(n298) );
  INV_X1 U582 ( .A(S3_RDATABUS[11]), .ZN(n242) );
  INV_X1 U583 ( .A(S4_RDATABUS[11]), .ZN(n241) );
  OAI221_X1 U584 ( .B1(n244), .B2(n265), .C1(n245), .C2(n2), .A(n299), .ZN(
        M1_RDATABUS[10]) );
  AOI22_X1 U585 ( .A1(n268), .A2(S2_RDATABUS[10]), .B1(n269), .B2(
        S1_RDATABUS[10]), .ZN(n299) );
  INV_X1 U586 ( .A(S3_RDATABUS[10]), .ZN(n245) );
  INV_X1 U587 ( .A(S4_RDATABUS[10]), .ZN(n244) );
  OAI221_X1 U588 ( .B1(n247), .B2(n265), .C1(n248), .C2(n2), .A(n300), .ZN(
        M1_RDATABUS[0]) );
  AOI22_X1 U589 ( .A1(n268), .A2(S2_RDATABUS[0]), .B1(n269), .B2(
        S1_RDATABUS[0]), .ZN(n300) );
  INV_X1 U590 ( .A(n302), .ZN(n257) );
  INV_X1 U591 ( .A(n303), .ZN(n259) );
  NAND2_X1 U592 ( .A1(n260), .A2(n301), .ZN(n266) );
  INV_X1 U593 ( .A(n304), .ZN(n260) );
  INV_X1 U594 ( .A(S3_RDATABUS[0]), .ZN(n248) );
  AND4_X1 U595 ( .A1(n305), .A2(n304), .A3(n303), .A4(n302), .ZN(n261) );
  NAND3_X1 U596 ( .A1(n28), .A2(n30), .A3(n305), .ZN(n302) );
  NAND3_X1 U597 ( .A1(n28), .A2(n138), .A3(n305), .ZN(n303) );
  INV_X1 U598 ( .A(n30), .ZN(n138) );
  NAND3_X1 U599 ( .A1(n30), .A2(n141), .A3(n305), .ZN(n304) );
  INV_X1 U600 ( .A(n28), .ZN(n141) );
  NOR3_X1 U601 ( .A1(n34), .A2(n351), .A3(n66), .ZN(n305) );
  INV_X1 U602 ( .A(n25), .ZN(n66) );
  INV_X1 U603 ( .A(S4_RDATABUS[0]), .ZN(n247) );
  NOR2_X1 U604 ( .A1(n263), .A2(n15), .ZN(M1_NREADY) );
  INV_X1 U605 ( .A(n70), .ZN(n263) );
  NAND2_X1 U606 ( .A1(n306), .A2(n307), .ZN(n70) );
  NOR2_X1 U607 ( .A1(n47), .A2(n65), .ZN(S3_ADDRBUS[31]) );
  NOR2_X1 U608 ( .A1(n65), .A2(n51), .ZN(S4_ADDRBUS[31]) );
  AOI22_X1 U609 ( .A1(S2_NREADY), .A2(S2_ADDRBUS[29]), .B1(S1_NREADY), .B2(
        S1_ADDRBUS[30]), .ZN(n306) );
  INV_X1 U610 ( .A(n4), .ZN(S1_ADDRBUS[30]) );
  NAND3_X1 U611 ( .A1(n51), .A2(n68), .A3(n65), .ZN(n143) );
  INV_X1 U612 ( .A(n53), .ZN(n65) );
  NAND4_X1 U613 ( .A1(n55), .A2(n32), .A3(n311), .A4(n57), .ZN(n68) );
  NAND4_X1 U614 ( .A1(n313), .A2(n314), .A3(n315), .A4(n316), .ZN(n311) );
  AND4_X1 U615 ( .A1(n317), .A2(n128), .A3(n318), .A4(n56), .ZN(n316) );
  AND2_X1 U616 ( .A1(n126), .A2(n127), .ZN(n317) );
  AND4_X1 U617 ( .A1(n132), .A2(n131), .A3(n130), .A4(n129), .ZN(n315) );
  AND3_X1 U618 ( .A1(n320), .A2(n124), .A3(n134), .ZN(n314) );
  AND3_X1 U619 ( .A1(n123), .A2(n121), .A3(n122), .ZN(n320) );
  NOR4_X1 U620 ( .A1(n321), .A2(n322), .A3(n323), .A4(n324), .ZN(n313) );
  INV_X1 U621 ( .A(n139), .ZN(n324) );
  NAND4_X1 U622 ( .A1(n326), .A2(n16), .A3(n325), .A4(n327), .ZN(n312) );
  AND3_X1 U623 ( .A1(n328), .A2(n323), .A3(n142), .ZN(n327) );
  NAND2_X1 U624 ( .A1(n142), .A2(n149), .ZN(n323) );
  INV_X1 U625 ( .A(n321), .ZN(n328) );
  NAND4_X1 U626 ( .A1(n329), .A2(n330), .A3(n331), .A4(n332), .ZN(n310) );
  NAND3_X1 U627 ( .A1(n135), .A2(n124), .A3(n134), .ZN(n334) );
  NAND4_X1 U628 ( .A1(n113), .A2(n111), .A3(n112), .A4(n110), .ZN(n333) );
  AOI22_X1 U629 ( .A1(M1_ADDRBUS[7]), .A2(n147), .B1(M2_ADDRBUS[7]), .B2(n43), 
        .ZN(n110) );
  AOI22_X1 U630 ( .A1(M1_ADDRBUS[5]), .A2(n147), .B1(M2_ADDRBUS[5]), .B2(n43), 
        .ZN(n112) );
  AOI22_X1 U631 ( .A1(M1_ADDRBUS[6]), .A2(n147), .B1(M2_ADDRBUS[6]), .B2(n43), 
        .ZN(n111) );
  AOI22_X1 U632 ( .A1(M1_ADDRBUS[4]), .A2(n147), .B1(M2_ADDRBUS[4]), .B2(n43), 
        .ZN(n113) );
  AND4_X1 U633 ( .A1(n108), .A2(n121), .A3(n123), .A4(n122), .ZN(n331) );
  NOR3_X1 U634 ( .A1(n335), .A2(n142), .A3(n149), .ZN(n330) );
  NOR2_X1 U635 ( .A1(n56), .A2(n336), .ZN(n329) );
  NOR3_X1 U636 ( .A1(n322), .A2(n318), .A3(n321), .ZN(n337) );
  NAND3_X1 U637 ( .A1(n119), .A2(n120), .A3(n118), .ZN(n321) );
  AOI22_X1 U638 ( .A1(M1_ADDRBUS[26]), .A2(n147), .B1(M2_ADDRBUS[26]), .B2(
        n148), .ZN(n118) );
  AOI22_X1 U639 ( .A1(M1_ADDRBUS[24]), .A2(n147), .B1(M2_ADDRBUS[24]), .B2(
        n148), .ZN(n120) );
  AOI22_X1 U640 ( .A1(M1_ADDRBUS[25]), .A2(n147), .B1(M2_ADDRBUS[25]), .B2(n42), .ZN(n119) );
  INV_X1 U641 ( .A(n115), .ZN(n318) );
  INV_X1 U642 ( .A(n117), .ZN(n322) );
  AOI22_X1 U643 ( .A1(M1_ADDRBUS[27]), .A2(n147), .B1(M2_ADDRBUS[27]), .B2(n42), .ZN(n117) );
  AND4_X1 U644 ( .A1(n122), .A2(n124), .A3(n135), .A4(n134), .ZN(n339) );
  AOI22_X1 U645 ( .A1(M1_ADDRBUS[11]), .A2(n147), .B1(M2_ADDRBUS[11]), .B2(n42), .ZN(n134) );
  AOI22_X1 U646 ( .A1(M1_ADDRBUS[10]), .A2(n147), .B1(M2_ADDRBUS[10]), .B2(n43), .ZN(n135) );
  AOI22_X1 U647 ( .A1(M1_ADDRBUS[20]), .A2(n147), .B1(M2_ADDRBUS[20]), .B2(n43), .ZN(n124) );
  AOI22_X1 U648 ( .A1(M1_ADDRBUS[22]), .A2(n147), .B1(M2_ADDRBUS[22]), .B2(n42), .ZN(n122) );
  INV_X1 U649 ( .A(n109), .ZN(n336) );
  AOI22_X1 U650 ( .A1(M1_ADDRBUS[8]), .A2(n147), .B1(M2_ADDRBUS[8]), .B2(n42), 
        .ZN(n109) );
  NAND2_X1 U651 ( .A1(n342), .A2(n341), .ZN(n319) );
  AOI22_X1 U652 ( .A1(M1_ADDRBUS[13]), .A2(n147), .B1(M2_ADDRBUS[13]), .B2(n43), .ZN(n132) );
  AOI22_X1 U653 ( .A1(M1_ADDRBUS[19]), .A2(n147), .B1(M2_ADDRBUS[19]), .B2(
        n148), .ZN(n126) );
  AOI22_X1 U654 ( .A1(M1_ADDRBUS[18]), .A2(n147), .B1(M2_ADDRBUS[18]), .B2(
        n148), .ZN(n127) );
  AOI22_X1 U655 ( .A1(M1_ADDRBUS[17]), .A2(n147), .B1(M2_ADDRBUS[17]), .B2(
        n148), .ZN(n128) );
  AOI22_X1 U656 ( .A1(M1_ADDRBUS[12]), .A2(n147), .B1(M2_ADDRBUS[12]), .B2(n43), .ZN(n133) );
  AOI22_X1 U657 ( .A1(M1_ADDRBUS[15]), .A2(n147), .B1(M2_ADDRBUS[15]), .B2(
        n148), .ZN(n130) );
  AOI22_X1 U658 ( .A1(M1_ADDRBUS[14]), .A2(n147), .B1(M2_ADDRBUS[14]), .B2(
        n148), .ZN(n131) );
  INV_X1 U659 ( .A(n108), .ZN(n340) );
  AOI22_X1 U660 ( .A1(M1_ADDRBUS[9]), .A2(n147), .B1(M2_ADDRBUS[9]), .B2(n42), 
        .ZN(n108) );
  AOI22_X1 U661 ( .A1(M1_ADDRBUS[23]), .A2(n147), .B1(M2_ADDRBUS[23]), .B2(n43), .ZN(n121) );
  AOI22_X1 U662 ( .A1(M1_ADDRBUS[21]), .A2(n147), .B1(M2_ADDRBUS[21]), .B2(n42), .ZN(n123) );
  AOI22_X1 U663 ( .A1(M1_ADDRBUS[31]), .A2(n147), .B1(M2_ADDRBUS[31]), .B2(n42), .ZN(n142) );
  INV_X1 U664 ( .A(n343), .ZN(n325) );
  OAI21_X1 U665 ( .B1(n149), .B2(n139), .A(n115), .ZN(n343) );
  AOI22_X1 U666 ( .A1(M1_ADDRBUS[30]), .A2(n147), .B1(M2_ADDRBUS[30]), .B2(n43), .ZN(n115) );
  AOI22_X1 U667 ( .A1(M1_ADDRBUS[28]), .A2(n147), .B1(M2_ADDRBUS[28]), .B2(n42), .ZN(n139) );
  AOI22_X1 U668 ( .A1(M1_ADDRBUS[29]), .A2(n147), .B1(M2_ADDRBUS[29]), .B2(n42), .ZN(n149) );
  NAND3_X1 U669 ( .A1(n345), .A2(n344), .A3(n264), .ZN(n71) );
  NOR2_X1 U670 ( .A1(n348), .A2(n350), .ZN(n301) );
  INV_X1 U671 ( .A(n22), .ZN(n348) );
  NOR2_X1 U672 ( .A1(n350), .A2(n22), .ZN(n258) );
  OAI21_X1 U673 ( .B1(n349), .B2(M2_MR), .A(n344), .ZN(n346) );
  INV_X1 U674 ( .A(M1_MW), .ZN(n344) );
  INV_X1 U675 ( .A(M2_MW), .ZN(n349) );
  INV_X1 U676 ( .A(M1_MR), .ZN(n345) );
endmodule


module DMA_1_32_32_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \B_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62;
  wire   [32:0] carry;

  NAND2_X2 U1 ( .A1(n1), .A2(n2), .ZN(carry[11]) );
  XNOR2_X2 U2 ( .A(A[10]), .B(carry[10]), .ZN(DIFF[10]) );
  INV_X2 U3 ( .A(A[10]), .ZN(n1) );
  INV_X2 U4 ( .A(carry[10]), .ZN(n2) );
  NAND2_X2 U5 ( .A1(n3), .A2(n4), .ZN(carry[12]) );
  XNOR2_X2 U6 ( .A(A[11]), .B(carry[11]), .ZN(DIFF[11]) );
  INV_X2 U7 ( .A(A[11]), .ZN(n3) );
  INV_X2 U8 ( .A(carry[11]), .ZN(n4) );
  NAND2_X2 U9 ( .A1(n5), .A2(n6), .ZN(carry[13]) );
  XNOR2_X2 U10 ( .A(A[12]), .B(carry[12]), .ZN(DIFF[12]) );
  INV_X2 U11 ( .A(A[12]), .ZN(n5) );
  INV_X2 U12 ( .A(carry[12]), .ZN(n6) );
  NAND2_X2 U13 ( .A1(n7), .A2(n8), .ZN(carry[14]) );
  XNOR2_X2 U14 ( .A(A[13]), .B(carry[13]), .ZN(DIFF[13]) );
  INV_X2 U15 ( .A(A[13]), .ZN(n7) );
  INV_X2 U16 ( .A(carry[13]), .ZN(n8) );
  NAND2_X2 U17 ( .A1(n9), .A2(n10), .ZN(carry[15]) );
  XNOR2_X2 U18 ( .A(A[14]), .B(carry[14]), .ZN(DIFF[14]) );
  INV_X2 U19 ( .A(A[14]), .ZN(n9) );
  INV_X2 U20 ( .A(carry[14]), .ZN(n10) );
  NAND2_X2 U21 ( .A1(n11), .A2(n12), .ZN(carry[16]) );
  XNOR2_X2 U22 ( .A(A[15]), .B(carry[15]), .ZN(DIFF[15]) );
  INV_X2 U23 ( .A(A[15]), .ZN(n11) );
  INV_X2 U24 ( .A(carry[15]), .ZN(n12) );
  NAND2_X2 U25 ( .A1(n13), .A2(n14), .ZN(carry[17]) );
  XNOR2_X2 U26 ( .A(A[16]), .B(carry[16]), .ZN(DIFF[16]) );
  INV_X2 U27 ( .A(A[16]), .ZN(n13) );
  INV_X2 U28 ( .A(carry[16]), .ZN(n14) );
  NAND2_X2 U29 ( .A1(n15), .A2(n16), .ZN(carry[18]) );
  XNOR2_X2 U30 ( .A(A[17]), .B(carry[17]), .ZN(DIFF[17]) );
  INV_X2 U31 ( .A(A[17]), .ZN(n15) );
  INV_X2 U32 ( .A(carry[17]), .ZN(n16) );
  NAND2_X2 U33 ( .A1(n17), .A2(n18), .ZN(carry[19]) );
  XNOR2_X2 U34 ( .A(A[18]), .B(carry[18]), .ZN(DIFF[18]) );
  INV_X2 U35 ( .A(A[18]), .ZN(n17) );
  INV_X2 U36 ( .A(carry[18]), .ZN(n18) );
  NAND2_X2 U37 ( .A1(n19), .A2(n20), .ZN(carry[20]) );
  XNOR2_X2 U38 ( .A(A[19]), .B(carry[19]), .ZN(DIFF[19]) );
  INV_X2 U39 ( .A(A[19]), .ZN(n19) );
  INV_X2 U40 ( .A(carry[19]), .ZN(n20) );
  NAND2_X2 U41 ( .A1(n21), .A2(n22), .ZN(carry[2]) );
  XNOR2_X2 U42 ( .A(A[1]), .B(carry[1]), .ZN(DIFF[1]) );
  INV_X2 U43 ( .A(A[1]), .ZN(n21) );
  INV_X2 U44 ( .A(carry[1]), .ZN(n22) );
  NAND2_X2 U45 ( .A1(n23), .A2(n24), .ZN(carry[21]) );
  XNOR2_X2 U46 ( .A(A[20]), .B(carry[20]), .ZN(DIFF[20]) );
  INV_X2 U47 ( .A(A[20]), .ZN(n23) );
  INV_X2 U48 ( .A(carry[20]), .ZN(n24) );
  NAND2_X2 U49 ( .A1(n25), .A2(n26), .ZN(carry[22]) );
  XNOR2_X2 U50 ( .A(A[21]), .B(carry[21]), .ZN(DIFF[21]) );
  INV_X2 U51 ( .A(A[21]), .ZN(n25) );
  INV_X2 U52 ( .A(carry[21]), .ZN(n26) );
  NAND2_X2 U53 ( .A1(n27), .A2(n28), .ZN(carry[23]) );
  XNOR2_X2 U54 ( .A(A[22]), .B(carry[22]), .ZN(DIFF[22]) );
  INV_X2 U55 ( .A(A[22]), .ZN(n27) );
  INV_X2 U56 ( .A(carry[22]), .ZN(n28) );
  NAND2_X2 U57 ( .A1(n29), .A2(n30), .ZN(carry[24]) );
  XNOR2_X2 U58 ( .A(A[23]), .B(carry[23]), .ZN(DIFF[23]) );
  INV_X2 U59 ( .A(A[23]), .ZN(n29) );
  INV_X2 U60 ( .A(carry[23]), .ZN(n30) );
  NAND2_X2 U61 ( .A1(n31), .A2(n32), .ZN(carry[25]) );
  XNOR2_X2 U62 ( .A(A[24]), .B(carry[24]), .ZN(DIFF[24]) );
  INV_X2 U63 ( .A(A[24]), .ZN(n31) );
  INV_X2 U64 ( .A(carry[24]), .ZN(n32) );
  NAND2_X2 U65 ( .A1(n33), .A2(n34), .ZN(carry[26]) );
  XNOR2_X2 U66 ( .A(A[25]), .B(carry[25]), .ZN(DIFF[25]) );
  INV_X2 U67 ( .A(A[25]), .ZN(n33) );
  INV_X2 U68 ( .A(carry[25]), .ZN(n34) );
  NAND2_X2 U69 ( .A1(n35), .A2(n36), .ZN(carry[27]) );
  XNOR2_X2 U70 ( .A(A[26]), .B(carry[26]), .ZN(DIFF[26]) );
  INV_X2 U71 ( .A(A[26]), .ZN(n35) );
  INV_X2 U72 ( .A(carry[26]), .ZN(n36) );
  NAND2_X2 U73 ( .A1(n37), .A2(n38), .ZN(carry[28]) );
  XNOR2_X2 U74 ( .A(A[27]), .B(carry[27]), .ZN(DIFF[27]) );
  INV_X2 U75 ( .A(A[27]), .ZN(n37) );
  INV_X2 U76 ( .A(carry[27]), .ZN(n38) );
  NAND2_X2 U77 ( .A1(n39), .A2(n40), .ZN(carry[29]) );
  XNOR2_X2 U78 ( .A(A[28]), .B(carry[28]), .ZN(DIFF[28]) );
  INV_X2 U79 ( .A(A[28]), .ZN(n39) );
  INV_X2 U80 ( .A(carry[28]), .ZN(n40) );
  NAND2_X2 U81 ( .A1(n41), .A2(n42), .ZN(carry[30]) );
  XNOR2_X2 U82 ( .A(A[29]), .B(carry[29]), .ZN(DIFF[29]) );
  INV_X2 U83 ( .A(A[29]), .ZN(n41) );
  INV_X2 U84 ( .A(carry[29]), .ZN(n42) );
  NAND2_X2 U85 ( .A1(n43), .A2(n44), .ZN(carry[3]) );
  XNOR2_X2 U86 ( .A(A[2]), .B(carry[2]), .ZN(DIFF[2]) );
  INV_X2 U87 ( .A(A[2]), .ZN(n43) );
  INV_X2 U88 ( .A(carry[2]), .ZN(n44) );
  NAND2_X2 U89 ( .A1(n45), .A2(n46), .ZN(carry[31]) );
  XNOR2_X2 U90 ( .A(A[30]), .B(carry[30]), .ZN(DIFF[30]) );
  INV_X2 U91 ( .A(A[30]), .ZN(n45) );
  INV_X2 U92 ( .A(carry[30]), .ZN(n46) );
  XNOR2_X2 U93 ( .A(A[31]), .B(carry[31]), .ZN(DIFF[31]) );
  NAND2_X2 U94 ( .A1(n47), .A2(n48), .ZN(carry[4]) );
  XNOR2_X2 U95 ( .A(A[3]), .B(carry[3]), .ZN(DIFF[3]) );
  INV_X2 U96 ( .A(A[3]), .ZN(n47) );
  INV_X2 U97 ( .A(carry[3]), .ZN(n48) );
  NAND2_X2 U98 ( .A1(n49), .A2(n50), .ZN(carry[5]) );
  XNOR2_X2 U99 ( .A(A[4]), .B(carry[4]), .ZN(DIFF[4]) );
  INV_X2 U100 ( .A(A[4]), .ZN(n49) );
  INV_X2 U101 ( .A(carry[4]), .ZN(n50) );
  NAND2_X2 U102 ( .A1(n51), .A2(n52), .ZN(carry[6]) );
  XNOR2_X2 U103 ( .A(A[5]), .B(carry[5]), .ZN(DIFF[5]) );
  INV_X2 U104 ( .A(A[5]), .ZN(n51) );
  INV_X2 U105 ( .A(carry[5]), .ZN(n52) );
  NAND2_X2 U106 ( .A1(n53), .A2(n54), .ZN(carry[7]) );
  XNOR2_X2 U107 ( .A(A[6]), .B(carry[6]), .ZN(DIFF[6]) );
  INV_X2 U108 ( .A(A[6]), .ZN(n53) );
  INV_X2 U109 ( .A(carry[6]), .ZN(n54) );
  NAND2_X2 U110 ( .A1(n55), .A2(n56), .ZN(carry[8]) );
  XNOR2_X2 U111 ( .A(A[7]), .B(carry[7]), .ZN(DIFF[7]) );
  INV_X2 U112 ( .A(A[7]), .ZN(n55) );
  INV_X2 U113 ( .A(carry[7]), .ZN(n56) );
  NAND2_X2 U114 ( .A1(n57), .A2(n58), .ZN(carry[9]) );
  XNOR2_X2 U115 ( .A(A[8]), .B(carry[8]), .ZN(DIFF[8]) );
  INV_X2 U116 ( .A(A[8]), .ZN(n57) );
  INV_X2 U117 ( .A(carry[8]), .ZN(n58) );
  NAND2_X2 U118 ( .A1(n59), .A2(n60), .ZN(carry[10]) );
  XNOR2_X2 U119 ( .A(A[9]), .B(carry[9]), .ZN(DIFF[9]) );
  INV_X2 U120 ( .A(A[9]), .ZN(n59) );
  INV_X2 U121 ( .A(carry[9]), .ZN(n60) );
  NAND2_X2 U122 ( .A1(n61), .A2(n62), .ZN(carry[1]) );
  XNOR2_X2 U123 ( .A(\B_not[0] ), .B(A[0]), .ZN(DIFF[0]) );
  INV_X2 U124 ( .A(\B_not[0] ), .ZN(n61) );
  INV_X2 U125 ( .A(A[0]), .ZN(n62) );
  INV_X1 U126 ( .A(B[0]), .ZN(\B_not[0] ) );
endmodule


module DMA_1_32_32_DW01_add_0 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [31:1] carry;

  FA_X1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .S(SUM[31]) );
  FA_X1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FA_X1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FA_X1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FA_X1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA_X1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA_X1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA_X1 U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  FA_X1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA_X1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  XOR2_X1 U1 ( .A(B[15]), .B(A[15]), .Z(n1) );
  XOR2_X1 U2 ( .A(carry[15]), .B(n1), .Z(SUM[15]) );
  NAND2_X1 U3 ( .A1(carry[15]), .A2(B[15]), .ZN(n2) );
  NAND2_X1 U4 ( .A1(carry[15]), .A2(A[15]), .ZN(n3) );
  NAND2_X1 U5 ( .A1(B[15]), .A2(A[15]), .ZN(n4) );
  NAND3_X1 U6 ( .A1(n2), .A2(n4), .A3(n3), .ZN(carry[16]) );
  XOR2_X1 U7 ( .A(B[1]), .B(A[1]), .Z(n5) );
  XOR2_X1 U8 ( .A(carry[1]), .B(n5), .Z(SUM[1]) );
  NAND2_X1 U9 ( .A1(carry[1]), .A2(B[1]), .ZN(n6) );
  NAND2_X1 U10 ( .A1(carry[1]), .A2(A[1]), .ZN(n7) );
  NAND2_X1 U11 ( .A1(B[1]), .A2(A[1]), .ZN(n8) );
  NAND3_X1 U12 ( .A1(n6), .A2(n8), .A3(n7), .ZN(carry[2]) );
  XNOR2_X1 U13 ( .A(B[0]), .B(A[0]), .ZN(n10) );
  NAND2_X1 U14 ( .A1(B[0]), .A2(A[0]), .ZN(n9) );
  INV_X1 U15 ( .A(n9), .ZN(carry[1]) );
  INV_X2 U16 ( .A(n10), .ZN(SUM[0]) );
endmodule


module DMA_1_32_32_DW01_add_1 ( A, B, CI, SUM, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [31:1] carry;

  FA_X1 U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .S(SUM[31]) );
  FA_X1 U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(
        SUM[30]) );
  FA_X1 U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(
        SUM[29]) );
  FA_X1 U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(
        SUM[28]) );
  FA_X1 U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(
        SUM[27]) );
  FA_X1 U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(
        SUM[26]) );
  FA_X1 U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  FA_X1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  FA_X1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FA_X1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FA_X1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA_X1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA_X1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FA_X1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA_X1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA_X1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA_X1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA_X1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FA_X1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA_X1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FA_X1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA_X1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  FA_X1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  FA_X1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  FA_X1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  FA_X1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  FA_X1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  FA_X1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  FA_X1 U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(A[24]), .B(B[24]), .Z(n1) );
  XOR2_X1 U2 ( .A(carry[24]), .B(n1), .Z(SUM[24]) );
  NAND2_X1 U3 ( .A1(carry[24]), .A2(A[24]), .ZN(n2) );
  NAND2_X1 U4 ( .A1(carry[24]), .A2(B[24]), .ZN(n3) );
  NAND2_X1 U5 ( .A1(A[24]), .A2(B[24]), .ZN(n4) );
  NAND3_X1 U6 ( .A1(n2), .A2(n4), .A3(n3), .ZN(carry[25]) );
  XOR2_X1 U7 ( .A(A[14]), .B(B[14]), .Z(n5) );
  XOR2_X1 U8 ( .A(carry[14]), .B(n5), .Z(SUM[14]) );
  NAND2_X1 U9 ( .A1(carry[14]), .A2(A[14]), .ZN(n6) );
  NAND2_X1 U10 ( .A1(carry[14]), .A2(B[14]), .ZN(n7) );
  NAND2_X1 U11 ( .A1(A[14]), .A2(B[14]), .ZN(n8) );
  NAND3_X1 U12 ( .A1(n6), .A2(n8), .A3(n7), .ZN(carry[15]) );
  INV_X1 U13 ( .A(n9), .ZN(carry[1]) );
  NAND2_X2 U14 ( .A1(B[0]), .A2(A[0]), .ZN(n9) );
  XNOR2_X2 U15 ( .A(B[0]), .B(A[0]), .ZN(n10) );
  INV_X2 U16 ( .A(n10), .ZN(SUM[0]) );
endmodule


module DMA_1_32_32 ( CLK, reset, M1_BUSY, M1_MR, M1_MW, M1_NREADY, M1_ADDRBUS, 
        M1_RDATABUS, M1_WDATABUS, S1_BUSY, S1_MR, S1_MW, S1_NREADY, S1_ADDRBUS, 
        S1_RDATABUS, S1_WDATABUS );
  output [31:0] M1_ADDRBUS;
  input [31:0] M1_RDATABUS;
  output [31:0] M1_WDATABUS;
  input [3:0] S1_ADDRBUS;
  output [31:0] S1_RDATABUS;
  input [31:0] S1_WDATABUS;
  input CLK, reset, M1_NREADY, S1_BUSY, S1_MR, S1_MW;
  output M1_BUSY, M1_MR, M1_MW, S1_NREADY;
  wire   N34, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, N52,
         N53, N54, N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66,
         N67, N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80,
         N81, N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94,
         N95, N96, N97, N98, N99, N100, N101, N102, N103, N105, N106, N107,
         N108, N109, N110, N111, N112, N113, N114, N115, N116, N117, N118,
         N119, N120, N121, N122, N123, N124, N125, N126, N127, N128, N129,
         N130, N131, N132, N133, N134, N135, N136, N277, N278, N724, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n4, n5, n6, n7, n8, n9, n10, n836, n838, n840, n841, n842, n843,
         n844, n845, n846, n847, n848, n849;
  wire   [31:0] raddr_reg;
  wire   [31:0] waddr_reg;
  wire   [31:0] count_reg;
  wire   [1:0] DMA_State;
  wire   [31:0] rstart_reg;
  wire   [31:0] wstart_reg;
  wire   [31:0] rstep_reg;
  wire   [31:0] wstep_reg;
  wire   [3:0] ck_S1_ADDRBUS;
  assign S1_NREADY = 1'b0;
  assign M1_BUSY = 1'b0;

  DFF_X1 \count_reg_reg[0]  ( .D(n835), .CK(CLK), .Q(count_reg[0]), .QN(n467)
         );
  DFF_X1 \count_reg_reg[31]  ( .D(n834), .CK(CLK), .Q(count_reg[31]), .QN(n465) );
  DFF_X1 \DMA_State_reg[1]  ( .D(N278), .CK(CLK), .Q(DMA_State[1]), .QN(n564)
         );
  DFF_X1 \data_reg_reg[31]  ( .D(n772), .CK(CLK), .QN(n336) );
  DFF_X1 \data_reg_reg[30]  ( .D(n773), .CK(CLK), .QN(n339) );
  DFF_X1 \data_reg_reg[29]  ( .D(n774), .CK(CLK), .QN(n341) );
  DFF_X1 \data_reg_reg[28]  ( .D(n775), .CK(CLK), .QN(n343) );
  DFF_X1 \data_reg_reg[27]  ( .D(n776), .CK(CLK), .QN(n345) );
  DFF_X1 \data_reg_reg[26]  ( .D(n777), .CK(CLK), .QN(n347) );
  DFF_X1 \data_reg_reg[25]  ( .D(n778), .CK(CLK), .QN(n349) );
  DFF_X1 \data_reg_reg[24]  ( .D(n779), .CK(CLK), .QN(n351) );
  DFF_X1 \data_reg_reg[23]  ( .D(n780), .CK(CLK), .QN(n353) );
  DFF_X1 \data_reg_reg[22]  ( .D(n781), .CK(CLK), .QN(n355) );
  DFF_X1 \data_reg_reg[21]  ( .D(n782), .CK(CLK), .QN(n357) );
  DFF_X1 \data_reg_reg[20]  ( .D(n783), .CK(CLK), .QN(n359) );
  DFF_X1 \data_reg_reg[19]  ( .D(n784), .CK(CLK), .QN(n361) );
  DFF_X1 \data_reg_reg[18]  ( .D(n785), .CK(CLK), .QN(n363) );
  DFF_X1 \data_reg_reg[17]  ( .D(n786), .CK(CLK), .QN(n365) );
  DFF_X1 \data_reg_reg[16]  ( .D(n787), .CK(CLK), .QN(n367) );
  DFF_X1 \data_reg_reg[15]  ( .D(n788), .CK(CLK), .QN(n369) );
  DFF_X1 \data_reg_reg[14]  ( .D(n789), .CK(CLK), .QN(n371) );
  DFF_X1 \data_reg_reg[13]  ( .D(n790), .CK(CLK), .QN(n373) );
  DFF_X1 \data_reg_reg[12]  ( .D(n791), .CK(CLK), .QN(n375) );
  DFF_X1 \data_reg_reg[11]  ( .D(n792), .CK(CLK), .QN(n377) );
  DFF_X1 \data_reg_reg[10]  ( .D(n793), .CK(CLK), .QN(n379) );
  DFF_X1 \data_reg_reg[9]  ( .D(n794), .CK(CLK), .QN(n381) );
  DFF_X1 \data_reg_reg[8]  ( .D(n795), .CK(CLK), .QN(n383) );
  DFF_X1 \data_reg_reg[7]  ( .D(n796), .CK(CLK), .QN(n385) );
  DFF_X1 \data_reg_reg[6]  ( .D(n797), .CK(CLK), .QN(n387) );
  DFF_X1 \data_reg_reg[5]  ( .D(n798), .CK(CLK), .QN(n389) );
  DFF_X1 \data_reg_reg[4]  ( .D(n799), .CK(CLK), .QN(n391) );
  DFF_X1 \data_reg_reg[3]  ( .D(n800), .CK(CLK), .QN(n393) );
  DFF_X1 \data_reg_reg[2]  ( .D(n801), .CK(CLK), .QN(n395) );
  DFF_X1 \data_reg_reg[1]  ( .D(n802), .CK(CLK), .QN(n397) );
  DFF_X1 \data_reg_reg[0]  ( .D(n803), .CK(CLK), .QN(n399) );
  DFF_X1 \count_reg_reg[1]  ( .D(n804), .CK(CLK), .Q(count_reg[1]), .QN(n404)
         );
  DFF_X1 \count_reg_reg[2]  ( .D(n805), .CK(CLK), .Q(count_reg[2]), .QN(n407)
         );
  DFF_X1 \count_reg_reg[3]  ( .D(n806), .CK(CLK), .Q(count_reg[3]), .QN(n409)
         );
  DFF_X1 \count_reg_reg[4]  ( .D(n807), .CK(CLK), .Q(count_reg[4]), .QN(n411)
         );
  DFF_X1 \count_reg_reg[5]  ( .D(n808), .CK(CLK), .Q(count_reg[5]), .QN(n413)
         );
  DFF_X1 \count_reg_reg[6]  ( .D(n809), .CK(CLK), .Q(count_reg[6]), .QN(n415)
         );
  DFF_X1 \count_reg_reg[7]  ( .D(n810), .CK(CLK), .Q(count_reg[7]), .QN(n417)
         );
  DFF_X1 \count_reg_reg[8]  ( .D(n811), .CK(CLK), .Q(count_reg[8]), .QN(n419)
         );
  DFF_X1 \count_reg_reg[9]  ( .D(n812), .CK(CLK), .Q(count_reg[9]), .QN(n421)
         );
  DFF_X1 \count_reg_reg[10]  ( .D(n813), .CK(CLK), .Q(count_reg[10]), .QN(n423) );
  DFF_X1 \count_reg_reg[11]  ( .D(n814), .CK(CLK), .Q(count_reg[11]), .QN(n425) );
  DFF_X1 \count_reg_reg[12]  ( .D(n815), .CK(CLK), .Q(count_reg[12]), .QN(n427) );
  DFF_X1 \count_reg_reg[13]  ( .D(n816), .CK(CLK), .Q(count_reg[13]), .QN(n429) );
  DFF_X1 \count_reg_reg[14]  ( .D(n817), .CK(CLK), .Q(count_reg[14]), .QN(n431) );
  DFF_X1 \count_reg_reg[15]  ( .D(n818), .CK(CLK), .Q(count_reg[15]), .QN(n433) );
  DFF_X1 \count_reg_reg[16]  ( .D(n819), .CK(CLK), .Q(count_reg[16]), .QN(n435) );
  DFF_X1 \count_reg_reg[17]  ( .D(n820), .CK(CLK), .Q(count_reg[17]), .QN(n437) );
  DFF_X1 \count_reg_reg[18]  ( .D(n821), .CK(CLK), .Q(count_reg[18]), .QN(n439) );
  DFF_X1 \count_reg_reg[19]  ( .D(n822), .CK(CLK), .Q(count_reg[19]), .QN(n441) );
  DFF_X1 \count_reg_reg[20]  ( .D(n823), .CK(CLK), .Q(count_reg[20]), .QN(n443) );
  DFF_X1 \count_reg_reg[21]  ( .D(n824), .CK(CLK), .Q(count_reg[21]), .QN(n445) );
  DFF_X1 \count_reg_reg[22]  ( .D(n825), .CK(CLK), .Q(count_reg[22]), .QN(n447) );
  DFF_X1 \count_reg_reg[23]  ( .D(n826), .CK(CLK), .Q(count_reg[23]), .QN(n449) );
  DFF_X1 \count_reg_reg[24]  ( .D(n827), .CK(CLK), .Q(count_reg[24]), .QN(n451) );
  DFF_X1 \count_reg_reg[25]  ( .D(n828), .CK(CLK), .Q(count_reg[25]), .QN(n453) );
  DFF_X1 \count_reg_reg[26]  ( .D(n829), .CK(CLK), .Q(count_reg[26]), .QN(n455) );
  DFF_X1 \count_reg_reg[27]  ( .D(n830), .CK(CLK), .Q(count_reg[27]), .QN(n457) );
  DFF_X1 \count_reg_reg[28]  ( .D(n831), .CK(CLK), .Q(count_reg[28]), .QN(n459) );
  DFF_X1 \count_reg_reg[29]  ( .D(n832), .CK(CLK), .Q(count_reg[29]), .QN(n461) );
  DFF_X1 \count_reg_reg[30]  ( .D(n833), .CK(CLK), .Q(count_reg[30]), .QN(n463) );
  DFF_X1 \rstart_reg_reg[31]  ( .D(n771), .CK(CLK), .Q(rstart_reg[31]), .QN(
        n333) );
  DFF_X1 \rstart_reg_reg[30]  ( .D(n770), .CK(CLK), .Q(rstart_reg[30]), .QN(
        n332) );
  DFF_X1 \rstart_reg_reg[29]  ( .D(n769), .CK(CLK), .Q(rstart_reg[29]), .QN(
        n331) );
  DFF_X1 \rstart_reg_reg[28]  ( .D(n768), .CK(CLK), .Q(rstart_reg[28]), .QN(
        n330) );
  DFF_X1 \rstart_reg_reg[27]  ( .D(n767), .CK(CLK), .Q(rstart_reg[27]), .QN(
        n329) );
  DFF_X1 \rstart_reg_reg[26]  ( .D(n766), .CK(CLK), .Q(rstart_reg[26]), .QN(
        n328) );
  DFF_X1 \rstart_reg_reg[25]  ( .D(n765), .CK(CLK), .Q(rstart_reg[25]), .QN(
        n327) );
  DFF_X1 \rstart_reg_reg[24]  ( .D(n764), .CK(CLK), .Q(rstart_reg[24]), .QN(
        n326) );
  DFF_X1 \rstart_reg_reg[23]  ( .D(n763), .CK(CLK), .Q(rstart_reg[23]), .QN(
        n325) );
  DFF_X1 \rstart_reg_reg[22]  ( .D(n762), .CK(CLK), .Q(rstart_reg[22]), .QN(
        n324) );
  DFF_X1 \rstart_reg_reg[21]  ( .D(n761), .CK(CLK), .Q(rstart_reg[21]), .QN(
        n323) );
  DFF_X1 \rstart_reg_reg[20]  ( .D(n760), .CK(CLK), .Q(rstart_reg[20]), .QN(
        n322) );
  DFF_X1 \rstart_reg_reg[19]  ( .D(n759), .CK(CLK), .Q(rstart_reg[19]), .QN(
        n321) );
  DFF_X1 \rstart_reg_reg[18]  ( .D(n758), .CK(CLK), .Q(rstart_reg[18]), .QN(
        n320) );
  DFF_X1 \rstart_reg_reg[17]  ( .D(n757), .CK(CLK), .Q(rstart_reg[17]), .QN(
        n319) );
  DFF_X1 \rstart_reg_reg[16]  ( .D(n756), .CK(CLK), .Q(rstart_reg[16]), .QN(
        n318) );
  DFF_X1 \rstart_reg_reg[15]  ( .D(n755), .CK(CLK), .Q(rstart_reg[15]), .QN(
        n317) );
  DFF_X1 \rstart_reg_reg[14]  ( .D(n754), .CK(CLK), .Q(rstart_reg[14]), .QN(
        n316) );
  DFF_X1 \rstart_reg_reg[13]  ( .D(n753), .CK(CLK), .Q(rstart_reg[13]), .QN(
        n315) );
  DFF_X1 \rstart_reg_reg[12]  ( .D(n752), .CK(CLK), .Q(rstart_reg[12]), .QN(
        n314) );
  DFF_X1 \rstart_reg_reg[11]  ( .D(n751), .CK(CLK), .Q(rstart_reg[11]), .QN(
        n313) );
  DFF_X1 \rstart_reg_reg[10]  ( .D(n750), .CK(CLK), .Q(rstart_reg[10]), .QN(
        n312) );
  DFF_X1 \rstart_reg_reg[9]  ( .D(n749), .CK(CLK), .Q(rstart_reg[9]), .QN(n311) );
  DFF_X1 \rstart_reg_reg[8]  ( .D(n748), .CK(CLK), .Q(rstart_reg[8]), .QN(n310) );
  DFF_X1 \rstart_reg_reg[7]  ( .D(n747), .CK(CLK), .Q(rstart_reg[7]), .QN(n309) );
  DFF_X1 \rstart_reg_reg[6]  ( .D(n746), .CK(CLK), .Q(rstart_reg[6]), .QN(n308) );
  DFF_X1 \rstart_reg_reg[5]  ( .D(n745), .CK(CLK), .Q(rstart_reg[5]), .QN(n307) );
  DFF_X1 \rstart_reg_reg[4]  ( .D(n744), .CK(CLK), .Q(rstart_reg[4]), .QN(n306) );
  DFF_X1 \rstart_reg_reg[3]  ( .D(n743), .CK(CLK), .Q(rstart_reg[3]), .QN(n305) );
  DFF_X1 \rstart_reg_reg[2]  ( .D(n742), .CK(CLK), .Q(rstart_reg[2]), .QN(n304) );
  DFF_X1 \rstart_reg_reg[1]  ( .D(n741), .CK(CLK), .Q(rstart_reg[1]), .QN(n303) );
  DFF_X1 \rstart_reg_reg[0]  ( .D(n740), .CK(CLK), .Q(rstart_reg[0]), .QN(n300) );
  DFF_X1 \rstep_reg_reg[31]  ( .D(n739), .CK(CLK), .Q(rstep_reg[31]), .QN(n298) );
  DFF_X1 \rstep_reg_reg[30]  ( .D(n738), .CK(CLK), .Q(rstep_reg[30]), .QN(n297) );
  DFF_X1 \rstep_reg_reg[29]  ( .D(n737), .CK(CLK), .Q(rstep_reg[29]), .QN(n296) );
  DFF_X1 \rstep_reg_reg[28]  ( .D(n736), .CK(CLK), .Q(rstep_reg[28]), .QN(n295) );
  DFF_X1 \rstep_reg_reg[27]  ( .D(n735), .CK(CLK), .Q(rstep_reg[27]), .QN(n294) );
  DFF_X1 \rstep_reg_reg[26]  ( .D(n734), .CK(CLK), .Q(rstep_reg[26]), .QN(n293) );
  DFF_X1 \rstep_reg_reg[25]  ( .D(n733), .CK(CLK), .Q(rstep_reg[25]), .QN(n292) );
  DFF_X1 \rstep_reg_reg[24]  ( .D(n732), .CK(CLK), .Q(rstep_reg[24]), .QN(n291) );
  DFF_X1 \rstep_reg_reg[23]  ( .D(n731), .CK(CLK), .Q(rstep_reg[23]), .QN(n290) );
  DFF_X1 \rstep_reg_reg[22]  ( .D(n730), .CK(CLK), .Q(rstep_reg[22]), .QN(n289) );
  DFF_X1 \rstep_reg_reg[21]  ( .D(n729), .CK(CLK), .Q(rstep_reg[21]), .QN(n288) );
  DFF_X1 \rstep_reg_reg[20]  ( .D(n728), .CK(CLK), .Q(rstep_reg[20]), .QN(n287) );
  DFF_X1 \rstep_reg_reg[19]  ( .D(n727), .CK(CLK), .Q(rstep_reg[19]), .QN(n286) );
  DFF_X1 \rstep_reg_reg[18]  ( .D(n726), .CK(CLK), .Q(rstep_reg[18]), .QN(n285) );
  DFF_X1 \rstep_reg_reg[17]  ( .D(n725), .CK(CLK), .Q(rstep_reg[17]), .QN(n284) );
  DFF_X1 \rstep_reg_reg[16]  ( .D(n724), .CK(CLK), .Q(rstep_reg[16]), .QN(n283) );
  DFF_X1 \rstep_reg_reg[15]  ( .D(n723), .CK(CLK), .Q(rstep_reg[15]), .QN(n282) );
  DFF_X1 \rstep_reg_reg[14]  ( .D(n722), .CK(CLK), .Q(rstep_reg[14]), .QN(n281) );
  DFF_X1 \rstep_reg_reg[13]  ( .D(n721), .CK(CLK), .Q(rstep_reg[13]), .QN(n280) );
  DFF_X1 \rstep_reg_reg[12]  ( .D(n720), .CK(CLK), .Q(rstep_reg[12]), .QN(n279) );
  DFF_X1 \rstep_reg_reg[11]  ( .D(n719), .CK(CLK), .Q(rstep_reg[11]), .QN(n278) );
  DFF_X1 \rstep_reg_reg[10]  ( .D(n718), .CK(CLK), .Q(rstep_reg[10]), .QN(n277) );
  DFF_X1 \rstep_reg_reg[9]  ( .D(n717), .CK(CLK), .Q(rstep_reg[9]), .QN(n276)
         );
  DFF_X1 \rstep_reg_reg[8]  ( .D(n716), .CK(CLK), .Q(rstep_reg[8]), .QN(n275)
         );
  DFF_X1 \rstep_reg_reg[7]  ( .D(n715), .CK(CLK), .Q(rstep_reg[7]), .QN(n274)
         );
  DFF_X1 \rstep_reg_reg[6]  ( .D(n714), .CK(CLK), .Q(rstep_reg[6]), .QN(n273)
         );
  DFF_X1 \rstep_reg_reg[5]  ( .D(n713), .CK(CLK), .Q(rstep_reg[5]), .QN(n272)
         );
  DFF_X1 \rstep_reg_reg[4]  ( .D(n712), .CK(CLK), .Q(rstep_reg[4]), .QN(n271)
         );
  DFF_X1 \rstep_reg_reg[3]  ( .D(n711), .CK(CLK), .Q(rstep_reg[3]), .QN(n270)
         );
  DFF_X1 \rstep_reg_reg[2]  ( .D(n710), .CK(CLK), .Q(rstep_reg[2]), .QN(n269)
         );
  DFF_X1 \rstep_reg_reg[1]  ( .D(n709), .CK(CLK), .Q(rstep_reg[1]), .QN(n268)
         );
  DFF_X1 \rstep_reg_reg[0]  ( .D(n708), .CK(CLK), .Q(rstep_reg[0]), .QN(n266)
         );
  DFF_X1 \wstart_reg_reg[31]  ( .D(n707), .CK(CLK), .Q(wstart_reg[31]), .QN(
        n263) );
  DFF_X1 \wstart_reg_reg[30]  ( .D(n706), .CK(CLK), .Q(wstart_reg[30]), .QN(
        n262) );
  DFF_X1 \wstart_reg_reg[29]  ( .D(n705), .CK(CLK), .Q(wstart_reg[29]), .QN(
        n261) );
  DFF_X1 \wstart_reg_reg[28]  ( .D(n704), .CK(CLK), .Q(wstart_reg[28]), .QN(
        n260) );
  DFF_X1 \wstart_reg_reg[27]  ( .D(n703), .CK(CLK), .Q(wstart_reg[27]), .QN(
        n259) );
  DFF_X1 \wstart_reg_reg[26]  ( .D(n702), .CK(CLK), .Q(wstart_reg[26]), .QN(
        n258) );
  DFF_X1 \wstart_reg_reg[25]  ( .D(n701), .CK(CLK), .Q(wstart_reg[25]), .QN(
        n257) );
  DFF_X1 \wstart_reg_reg[24]  ( .D(n700), .CK(CLK), .Q(wstart_reg[24]), .QN(
        n256) );
  DFF_X1 \wstart_reg_reg[23]  ( .D(n699), .CK(CLK), .Q(wstart_reg[23]), .QN(
        n255) );
  DFF_X1 \wstart_reg_reg[22]  ( .D(n698), .CK(CLK), .Q(wstart_reg[22]), .QN(
        n254) );
  DFF_X1 \wstart_reg_reg[21]  ( .D(n697), .CK(CLK), .Q(wstart_reg[21]), .QN(
        n253) );
  DFF_X1 \wstart_reg_reg[20]  ( .D(n696), .CK(CLK), .Q(wstart_reg[20]), .QN(
        n252) );
  DFF_X1 \wstart_reg_reg[19]  ( .D(n695), .CK(CLK), .Q(wstart_reg[19]), .QN(
        n251) );
  DFF_X1 \wstart_reg_reg[18]  ( .D(n694), .CK(CLK), .Q(wstart_reg[18]), .QN(
        n250) );
  DFF_X1 \wstart_reg_reg[17]  ( .D(n693), .CK(CLK), .Q(wstart_reg[17]), .QN(
        n249) );
  DFF_X1 \wstart_reg_reg[16]  ( .D(n692), .CK(CLK), .Q(wstart_reg[16]), .QN(
        n248) );
  DFF_X1 \wstart_reg_reg[15]  ( .D(n691), .CK(CLK), .Q(wstart_reg[15]), .QN(
        n247) );
  DFF_X1 \wstart_reg_reg[14]  ( .D(n690), .CK(CLK), .Q(wstart_reg[14]), .QN(
        n246) );
  DFF_X1 \wstart_reg_reg[13]  ( .D(n689), .CK(CLK), .Q(wstart_reg[13]), .QN(
        n245) );
  DFF_X1 \wstart_reg_reg[12]  ( .D(n688), .CK(CLK), .Q(wstart_reg[12]), .QN(
        n244) );
  DFF_X1 \wstart_reg_reg[11]  ( .D(n687), .CK(CLK), .Q(wstart_reg[11]), .QN(
        n243) );
  DFF_X1 \wstart_reg_reg[10]  ( .D(n686), .CK(CLK), .Q(wstart_reg[10]), .QN(
        n242) );
  DFF_X1 \wstart_reg_reg[9]  ( .D(n685), .CK(CLK), .Q(wstart_reg[9]), .QN(n241) );
  DFF_X1 \wstart_reg_reg[8]  ( .D(n684), .CK(CLK), .Q(wstart_reg[8]), .QN(n240) );
  DFF_X1 \wstart_reg_reg[7]  ( .D(n683), .CK(CLK), .Q(wstart_reg[7]), .QN(n239) );
  DFF_X1 \wstart_reg_reg[6]  ( .D(n682), .CK(CLK), .Q(wstart_reg[6]), .QN(n238) );
  DFF_X1 \wstart_reg_reg[5]  ( .D(n681), .CK(CLK), .Q(wstart_reg[5]), .QN(n237) );
  DFF_X1 \wstart_reg_reg[4]  ( .D(n680), .CK(CLK), .Q(wstart_reg[4]), .QN(n236) );
  DFF_X1 \wstart_reg_reg[3]  ( .D(n679), .CK(CLK), .Q(wstart_reg[3]), .QN(n235) );
  DFF_X1 \wstart_reg_reg[2]  ( .D(n678), .CK(CLK), .Q(wstart_reg[2]), .QN(n234) );
  DFF_X1 \wstart_reg_reg[1]  ( .D(n677), .CK(CLK), .Q(wstart_reg[1]), .QN(n233) );
  DFF_X1 \wstart_reg_reg[0]  ( .D(n676), .CK(CLK), .Q(wstart_reg[0]), .QN(n230) );
  DFF_X1 \wstep_reg_reg[31]  ( .D(n675), .CK(CLK), .Q(wstep_reg[31]), .QN(n226) );
  DFF_X1 \wstep_reg_reg[30]  ( .D(n674), .CK(CLK), .Q(wstep_reg[30]), .QN(n224) );
  DFF_X1 \wstep_reg_reg[29]  ( .D(n673), .CK(CLK), .Q(wstep_reg[29]), .QN(n222) );
  DFF_X1 \wstep_reg_reg[28]  ( .D(n672), .CK(CLK), .Q(wstep_reg[28]), .QN(n220) );
  DFF_X1 \wstep_reg_reg[27]  ( .D(n671), .CK(CLK), .Q(wstep_reg[27]), .QN(n218) );
  DFF_X1 \wstep_reg_reg[26]  ( .D(n670), .CK(CLK), .Q(wstep_reg[26]), .QN(n216) );
  DFF_X1 \wstep_reg_reg[25]  ( .D(n669), .CK(CLK), .Q(wstep_reg[25]), .QN(n214) );
  DFF_X1 \wstep_reg_reg[24]  ( .D(n668), .CK(CLK), .Q(wstep_reg[24]), .QN(n212) );
  DFF_X1 \wstep_reg_reg[23]  ( .D(n667), .CK(CLK), .Q(wstep_reg[23]), .QN(n210) );
  DFF_X1 \wstep_reg_reg[22]  ( .D(n666), .CK(CLK), .Q(wstep_reg[22]), .QN(n208) );
  DFF_X1 \wstep_reg_reg[21]  ( .D(n665), .CK(CLK), .Q(wstep_reg[21]), .QN(n206) );
  DFF_X1 \wstep_reg_reg[20]  ( .D(n664), .CK(CLK), .Q(wstep_reg[20]), .QN(n204) );
  DFF_X1 \wstep_reg_reg[19]  ( .D(n663), .CK(CLK), .Q(wstep_reg[19]), .QN(n202) );
  DFF_X1 \wstep_reg_reg[18]  ( .D(n662), .CK(CLK), .Q(wstep_reg[18]), .QN(n200) );
  DFF_X1 \wstep_reg_reg[17]  ( .D(n661), .CK(CLK), .Q(wstep_reg[17]), .QN(n198) );
  DFF_X1 \wstep_reg_reg[16]  ( .D(n660), .CK(CLK), .Q(wstep_reg[16]), .QN(n196) );
  DFF_X1 \wstep_reg_reg[15]  ( .D(n659), .CK(CLK), .Q(wstep_reg[15]), .QN(n194) );
  DFF_X1 \wstep_reg_reg[14]  ( .D(n658), .CK(CLK), .Q(wstep_reg[14]), .QN(n192) );
  DFF_X1 \wstep_reg_reg[13]  ( .D(n657), .CK(CLK), .Q(wstep_reg[13]), .QN(n190) );
  DFF_X1 \wstep_reg_reg[12]  ( .D(n656), .CK(CLK), .Q(wstep_reg[12]), .QN(n188) );
  DFF_X1 \wstep_reg_reg[11]  ( .D(n655), .CK(CLK), .Q(wstep_reg[11]), .QN(n186) );
  DFF_X1 \wstep_reg_reg[10]  ( .D(n654), .CK(CLK), .Q(wstep_reg[10]), .QN(n184) );
  DFF_X1 \wstep_reg_reg[9]  ( .D(n653), .CK(CLK), .Q(wstep_reg[9]), .QN(n182)
         );
  DFF_X1 \wstep_reg_reg[8]  ( .D(n652), .CK(CLK), .Q(wstep_reg[8]), .QN(n180)
         );
  DFF_X1 \wstep_reg_reg[7]  ( .D(n651), .CK(CLK), .Q(wstep_reg[7]), .QN(n178)
         );
  DFF_X1 \wstep_reg_reg[6]  ( .D(n650), .CK(CLK), .Q(wstep_reg[6]), .QN(n176)
         );
  DFF_X1 \wstep_reg_reg[5]  ( .D(n649), .CK(CLK), .Q(wstep_reg[5]), .QN(n174)
         );
  DFF_X1 \wstep_reg_reg[4]  ( .D(n648), .CK(CLK), .Q(wstep_reg[4]), .QN(n172)
         );
  DFF_X1 \wstep_reg_reg[3]  ( .D(n647), .CK(CLK), .Q(wstep_reg[3]), .QN(n170)
         );
  DFF_X1 \wstep_reg_reg[2]  ( .D(n646), .CK(CLK), .Q(wstep_reg[2]), .QN(n168)
         );
  DFF_X1 \wstep_reg_reg[1]  ( .D(n645), .CK(CLK), .Q(wstep_reg[1]), .QN(n166)
         );
  DFF_X1 \wstep_reg_reg[0]  ( .D(n644), .CK(CLK), .Q(wstep_reg[0]), .QN(n163)
         );
  DFF_X1 \waddr_reg_reg[0]  ( .D(n643), .CK(CLK), .Q(waddr_reg[0]), .QN(n150)
         );
  DFF_X1 \waddr_reg_reg[1]  ( .D(n642), .CK(CLK), .Q(waddr_reg[1]), .QN(n148)
         );
  DFF_X1 \waddr_reg_reg[2]  ( .D(n641), .CK(CLK), .Q(waddr_reg[2]), .QN(n146)
         );
  DFF_X1 \waddr_reg_reg[3]  ( .D(n640), .CK(CLK), .Q(waddr_reg[3]), .QN(n144)
         );
  DFF_X1 \waddr_reg_reg[4]  ( .D(n639), .CK(CLK), .Q(waddr_reg[4]), .QN(n142)
         );
  DFF_X1 \waddr_reg_reg[5]  ( .D(n638), .CK(CLK), .Q(waddr_reg[5]), .QN(n140)
         );
  DFF_X1 \waddr_reg_reg[6]  ( .D(n637), .CK(CLK), .Q(waddr_reg[6]), .QN(n138)
         );
  DFF_X1 \waddr_reg_reg[7]  ( .D(n636), .CK(CLK), .Q(waddr_reg[7]), .QN(n136)
         );
  DFF_X1 \waddr_reg_reg[8]  ( .D(n635), .CK(CLK), .Q(waddr_reg[8]), .QN(n134)
         );
  DFF_X1 \waddr_reg_reg[9]  ( .D(n634), .CK(CLK), .Q(waddr_reg[9]), .QN(n132)
         );
  DFF_X1 \waddr_reg_reg[10]  ( .D(n633), .CK(CLK), .Q(waddr_reg[10]), .QN(n130) );
  DFF_X1 \waddr_reg_reg[11]  ( .D(n632), .CK(CLK), .Q(waddr_reg[11]), .QN(n128) );
  DFF_X1 \waddr_reg_reg[12]  ( .D(n631), .CK(CLK), .Q(waddr_reg[12]), .QN(n126) );
  DFF_X1 \waddr_reg_reg[13]  ( .D(n630), .CK(CLK), .Q(waddr_reg[13]), .QN(n124) );
  DFF_X1 \waddr_reg_reg[14]  ( .D(n629), .CK(CLK), .Q(waddr_reg[14]), .QN(n122) );
  DFF_X1 \waddr_reg_reg[15]  ( .D(n628), .CK(CLK), .Q(waddr_reg[15]), .QN(n120) );
  DFF_X1 \waddr_reg_reg[16]  ( .D(n627), .CK(CLK), .Q(waddr_reg[16]), .QN(n118) );
  DFF_X1 \waddr_reg_reg[17]  ( .D(n626), .CK(CLK), .Q(waddr_reg[17]), .QN(n116) );
  DFF_X1 \waddr_reg_reg[18]  ( .D(n625), .CK(CLK), .Q(waddr_reg[18]), .QN(n114) );
  DFF_X1 \waddr_reg_reg[19]  ( .D(n624), .CK(CLK), .Q(waddr_reg[19]), .QN(n112) );
  DFF_X1 \waddr_reg_reg[20]  ( .D(n623), .CK(CLK), .Q(waddr_reg[20]), .QN(n110) );
  DFF_X1 \waddr_reg_reg[21]  ( .D(n622), .CK(CLK), .Q(waddr_reg[21]), .QN(n108) );
  DFF_X1 \waddr_reg_reg[22]  ( .D(n621), .CK(CLK), .Q(waddr_reg[22]), .QN(n106) );
  DFF_X1 \waddr_reg_reg[23]  ( .D(n620), .CK(CLK), .Q(waddr_reg[23]), .QN(n104) );
  DFF_X1 \waddr_reg_reg[24]  ( .D(n619), .CK(CLK), .Q(waddr_reg[24]), .QN(n102) );
  DFF_X1 \waddr_reg_reg[25]  ( .D(n618), .CK(CLK), .Q(waddr_reg[25]), .QN(n100) );
  DFF_X1 \waddr_reg_reg[26]  ( .D(n617), .CK(CLK), .Q(waddr_reg[26]), .QN(n98)
         );
  DFF_X1 \waddr_reg_reg[27]  ( .D(n616), .CK(CLK), .Q(waddr_reg[27]), .QN(n96)
         );
  DFF_X1 \waddr_reg_reg[28]  ( .D(n615), .CK(CLK), .Q(waddr_reg[28]), .QN(n94)
         );
  DFF_X1 \waddr_reg_reg[29]  ( .D(n614), .CK(CLK), .Q(waddr_reg[29]), .QN(n92)
         );
  DFF_X1 \waddr_reg_reg[30]  ( .D(n613), .CK(CLK), .Q(waddr_reg[30]), .QN(n90)
         );
  DFF_X1 \waddr_reg_reg[31]  ( .D(n612), .CK(CLK), .Q(waddr_reg[31]), .QN(n88)
         );
  DFF_X1 \raddr_reg_reg[0]  ( .D(n611), .CK(CLK), .Q(raddr_reg[0]), .QN(n86)
         );
  DFF_X1 \raddr_reg_reg[1]  ( .D(n610), .CK(CLK), .Q(raddr_reg[1]), .QN(n84)
         );
  DFF_X1 \raddr_reg_reg[2]  ( .D(n609), .CK(CLK), .Q(raddr_reg[2]), .QN(n82)
         );
  DFF_X1 \raddr_reg_reg[3]  ( .D(n608), .CK(CLK), .Q(raddr_reg[3]), .QN(n80)
         );
  DFF_X1 \raddr_reg_reg[4]  ( .D(n607), .CK(CLK), .Q(raddr_reg[4]), .QN(n78)
         );
  DFF_X1 \raddr_reg_reg[5]  ( .D(n606), .CK(CLK), .Q(raddr_reg[5]), .QN(n76)
         );
  DFF_X1 \raddr_reg_reg[6]  ( .D(n605), .CK(CLK), .Q(raddr_reg[6]), .QN(n74)
         );
  DFF_X1 \raddr_reg_reg[7]  ( .D(n604), .CK(CLK), .Q(raddr_reg[7]), .QN(n72)
         );
  DFF_X1 \raddr_reg_reg[8]  ( .D(n603), .CK(CLK), .Q(raddr_reg[8]), .QN(n70)
         );
  DFF_X1 \raddr_reg_reg[9]  ( .D(n602), .CK(CLK), .Q(raddr_reg[9]), .QN(n68)
         );
  DFF_X1 \raddr_reg_reg[10]  ( .D(n601), .CK(CLK), .Q(raddr_reg[10]), .QN(n66)
         );
  DFF_X1 \raddr_reg_reg[11]  ( .D(n600), .CK(CLK), .Q(raddr_reg[11]), .QN(n64)
         );
  DFF_X1 \raddr_reg_reg[12]  ( .D(n599), .CK(CLK), .Q(raddr_reg[12]), .QN(n62)
         );
  DFF_X1 \raddr_reg_reg[13]  ( .D(n598), .CK(CLK), .Q(raddr_reg[13]), .QN(n60)
         );
  DFF_X1 \raddr_reg_reg[14]  ( .D(n597), .CK(CLK), .Q(raddr_reg[14]), .QN(n58)
         );
  DFF_X1 \raddr_reg_reg[15]  ( .D(n596), .CK(CLK), .Q(raddr_reg[15]), .QN(n56)
         );
  DFF_X1 \raddr_reg_reg[16]  ( .D(n595), .CK(CLK), .Q(raddr_reg[16]), .QN(n54)
         );
  DFF_X1 \raddr_reg_reg[17]  ( .D(n594), .CK(CLK), .Q(raddr_reg[17]), .QN(n52)
         );
  DFF_X1 \raddr_reg_reg[18]  ( .D(n593), .CK(CLK), .Q(raddr_reg[18]), .QN(n50)
         );
  DFF_X1 \raddr_reg_reg[19]  ( .D(n592), .CK(CLK), .Q(raddr_reg[19]), .QN(n48)
         );
  DFF_X1 \raddr_reg_reg[20]  ( .D(n591), .CK(CLK), .Q(raddr_reg[20]), .QN(n46)
         );
  DFF_X1 \raddr_reg_reg[21]  ( .D(n590), .CK(CLK), .Q(raddr_reg[21]), .QN(n44)
         );
  DFF_X1 \raddr_reg_reg[22]  ( .D(n589), .CK(CLK), .Q(raddr_reg[22]), .QN(n42)
         );
  DFF_X1 \raddr_reg_reg[23]  ( .D(n588), .CK(CLK), .Q(raddr_reg[23]), .QN(n40)
         );
  DFF_X1 \raddr_reg_reg[24]  ( .D(n587), .CK(CLK), .Q(raddr_reg[24]), .QN(n38)
         );
  DFF_X1 \raddr_reg_reg[25]  ( .D(n586), .CK(CLK), .Q(raddr_reg[25]), .QN(n36)
         );
  DFF_X1 \raddr_reg_reg[26]  ( .D(n585), .CK(CLK), .Q(raddr_reg[26]), .QN(n34)
         );
  DFF_X1 \raddr_reg_reg[27]  ( .D(n584), .CK(CLK), .Q(raddr_reg[27]), .QN(n32)
         );
  DFF_X1 \raddr_reg_reg[28]  ( .D(n583), .CK(CLK), .Q(raddr_reg[28]), .QN(n30)
         );
  DFF_X1 \raddr_reg_reg[29]  ( .D(n582), .CK(CLK), .Q(raddr_reg[29]), .QN(n28)
         );
  DFF_X1 \raddr_reg_reg[30]  ( .D(n581), .CK(CLK), .Q(raddr_reg[30]), .QN(n26)
         );
  DFF_X1 \raddr_reg_reg[31]  ( .D(n580), .CK(CLK), .Q(raddr_reg[31]), .QN(n22)
         );
  DFF_X1 \ck_S1_ADDRBUS_reg[3]  ( .D(n579), .CK(CLK), .Q(ck_S1_ADDRBUS[3]), 
        .QN(n19) );
  DFF_X1 \ck_S1_ADDRBUS_reg[2]  ( .D(n578), .CK(CLK), .Q(ck_S1_ADDRBUS[2]), 
        .QN(n17) );
  DFF_X1 \ck_S1_ADDRBUS_reg[1]  ( .D(n577), .CK(CLK), .Q(ck_S1_ADDRBUS[1]), 
        .QN(n15) );
  DFF_X1 \ck_S1_ADDRBUS_reg[0]  ( .D(n576), .CK(CLK), .Q(ck_S1_ADDRBUS[0]), 
        .QN(n12) );
  OAI221_X1 U3 ( .B1(n11), .B2(n12), .C1(n13), .C2(n14), .A(reset), .ZN(n576)
         );
  OAI221_X1 U4 ( .B1(n11), .B2(n15), .C1(n13), .C2(n16), .A(reset), .ZN(n577)
         );
  OAI221_X1 U5 ( .B1(n11), .B2(n17), .C1(n13), .C2(n18), .A(reset), .ZN(n578)
         );
  OAI221_X1 U11 ( .B1(n11), .B2(n19), .C1(n13), .C2(n20), .A(reset), .ZN(n579)
         );
  AOI22_X1 U13 ( .A1(N71), .A2(n9), .B1(rstart_reg[31]), .B2(n25), .ZN(n23) );
  OAI21_X1 U14 ( .B1(n21), .B2(n26), .A(n27), .ZN(n581) );
  AOI22_X1 U15 ( .A1(N70), .A2(n9), .B1(rstart_reg[30]), .B2(n25), .ZN(n27) );
  OAI21_X1 U16 ( .B1(n21), .B2(n28), .A(n29), .ZN(n582) );
  AOI22_X1 U17 ( .A1(N69), .A2(n9), .B1(rstart_reg[29]), .B2(n25), .ZN(n29) );
  OAI21_X1 U18 ( .B1(n21), .B2(n30), .A(n31), .ZN(n583) );
  AOI22_X1 U19 ( .A1(N68), .A2(n9), .B1(rstart_reg[28]), .B2(n25), .ZN(n31) );
  OAI21_X1 U20 ( .B1(n21), .B2(n32), .A(n33), .ZN(n584) );
  AOI22_X1 U21 ( .A1(N67), .A2(n9), .B1(rstart_reg[27]), .B2(n25), .ZN(n33) );
  OAI21_X1 U22 ( .B1(n21), .B2(n34), .A(n35), .ZN(n585) );
  AOI22_X1 U23 ( .A1(N66), .A2(n9), .B1(rstart_reg[26]), .B2(n25), .ZN(n35) );
  OAI21_X1 U24 ( .B1(n21), .B2(n36), .A(n37), .ZN(n586) );
  AOI22_X1 U25 ( .A1(N65), .A2(n9), .B1(rstart_reg[25]), .B2(n25), .ZN(n37) );
  OAI21_X1 U26 ( .B1(n21), .B2(n38), .A(n39), .ZN(n587) );
  AOI22_X1 U27 ( .A1(N64), .A2(n9), .B1(rstart_reg[24]), .B2(n25), .ZN(n39) );
  OAI21_X1 U28 ( .B1(n21), .B2(n40), .A(n41), .ZN(n588) );
  AOI22_X1 U29 ( .A1(N63), .A2(n9), .B1(rstart_reg[23]), .B2(n25), .ZN(n41) );
  OAI21_X1 U30 ( .B1(n21), .B2(n42), .A(n43), .ZN(n589) );
  AOI22_X1 U31 ( .A1(N62), .A2(n9), .B1(rstart_reg[22]), .B2(n25), .ZN(n43) );
  OAI21_X1 U32 ( .B1(n21), .B2(n44), .A(n45), .ZN(n590) );
  AOI22_X1 U33 ( .A1(N61), .A2(n9), .B1(rstart_reg[21]), .B2(n25), .ZN(n45) );
  OAI21_X1 U34 ( .B1(n21), .B2(n46), .A(n47), .ZN(n591) );
  AOI22_X1 U35 ( .A1(N60), .A2(n9), .B1(rstart_reg[20]), .B2(n25), .ZN(n47) );
  OAI21_X1 U36 ( .B1(n21), .B2(n48), .A(n49), .ZN(n592) );
  AOI22_X1 U37 ( .A1(N59), .A2(n9), .B1(rstart_reg[19]), .B2(n25), .ZN(n49) );
  OAI21_X1 U38 ( .B1(n21), .B2(n50), .A(n51), .ZN(n593) );
  AOI22_X1 U39 ( .A1(N58), .A2(n9), .B1(rstart_reg[18]), .B2(n25), .ZN(n51) );
  OAI21_X1 U40 ( .B1(n21), .B2(n52), .A(n53), .ZN(n594) );
  AOI22_X1 U41 ( .A1(N57), .A2(n9), .B1(rstart_reg[17]), .B2(n25), .ZN(n53) );
  OAI21_X1 U42 ( .B1(n21), .B2(n54), .A(n55), .ZN(n595) );
  AOI22_X1 U43 ( .A1(N56), .A2(n9), .B1(rstart_reg[16]), .B2(n25), .ZN(n55) );
  OAI21_X1 U44 ( .B1(n21), .B2(n56), .A(n57), .ZN(n596) );
  AOI22_X1 U45 ( .A1(N55), .A2(n9), .B1(rstart_reg[15]), .B2(n25), .ZN(n57) );
  OAI21_X1 U46 ( .B1(n21), .B2(n58), .A(n59), .ZN(n597) );
  AOI22_X1 U47 ( .A1(N54), .A2(n9), .B1(rstart_reg[14]), .B2(n25), .ZN(n59) );
  OAI21_X1 U48 ( .B1(n21), .B2(n60), .A(n61), .ZN(n598) );
  AOI22_X1 U49 ( .A1(N53), .A2(n9), .B1(rstart_reg[13]), .B2(n25), .ZN(n61) );
  OAI21_X1 U50 ( .B1(n21), .B2(n62), .A(n63), .ZN(n599) );
  AOI22_X1 U51 ( .A1(N52), .A2(n9), .B1(rstart_reg[12]), .B2(n25), .ZN(n63) );
  OAI21_X1 U52 ( .B1(n21), .B2(n64), .A(n65), .ZN(n600) );
  AOI22_X1 U53 ( .A1(N51), .A2(n9), .B1(rstart_reg[11]), .B2(n25), .ZN(n65) );
  OAI21_X1 U54 ( .B1(n21), .B2(n66), .A(n67), .ZN(n601) );
  AOI22_X1 U55 ( .A1(N50), .A2(n9), .B1(rstart_reg[10]), .B2(n25), .ZN(n67) );
  OAI21_X1 U56 ( .B1(n21), .B2(n68), .A(n69), .ZN(n602) );
  AOI22_X1 U57 ( .A1(N49), .A2(n9), .B1(rstart_reg[9]), .B2(n25), .ZN(n69) );
  OAI21_X1 U58 ( .B1(n21), .B2(n70), .A(n71), .ZN(n603) );
  AOI22_X1 U59 ( .A1(N48), .A2(n9), .B1(rstart_reg[8]), .B2(n25), .ZN(n71) );
  OAI21_X1 U60 ( .B1(n21), .B2(n72), .A(n73), .ZN(n604) );
  AOI22_X1 U61 ( .A1(N47), .A2(n9), .B1(rstart_reg[7]), .B2(n25), .ZN(n73) );
  OAI21_X1 U62 ( .B1(n21), .B2(n74), .A(n75), .ZN(n605) );
  AOI22_X1 U63 ( .A1(N46), .A2(n9), .B1(rstart_reg[6]), .B2(n25), .ZN(n75) );
  OAI21_X1 U64 ( .B1(n21), .B2(n76), .A(n77), .ZN(n606) );
  AOI22_X1 U65 ( .A1(N45), .A2(n9), .B1(rstart_reg[5]), .B2(n25), .ZN(n77) );
  OAI21_X1 U66 ( .B1(n21), .B2(n78), .A(n79), .ZN(n607) );
  AOI22_X1 U67 ( .A1(N44), .A2(n9), .B1(rstart_reg[4]), .B2(n25), .ZN(n79) );
  OAI21_X1 U68 ( .B1(n21), .B2(n80), .A(n81), .ZN(n608) );
  AOI22_X1 U69 ( .A1(N43), .A2(n9), .B1(rstart_reg[3]), .B2(n25), .ZN(n81) );
  OAI21_X1 U70 ( .B1(n21), .B2(n82), .A(n83), .ZN(n609) );
  AOI22_X1 U71 ( .A1(N42), .A2(n9), .B1(rstart_reg[2]), .B2(n25), .ZN(n83) );
  OAI21_X1 U72 ( .B1(n21), .B2(n84), .A(n85), .ZN(n610) );
  AOI22_X1 U73 ( .A1(N41), .A2(n9), .B1(rstart_reg[1]), .B2(n25), .ZN(n85) );
  OAI21_X1 U74 ( .B1(n21), .B2(n86), .A(n87), .ZN(n611) );
  AOI22_X1 U75 ( .A1(N40), .A2(n9), .B1(rstart_reg[0]), .B2(n25), .ZN(n87) );
  AOI22_X1 U77 ( .A1(N103), .A2(n9), .B1(wstart_reg[31]), .B2(n25), .ZN(n89)
         );
  OAI21_X1 U78 ( .B1(n21), .B2(n90), .A(n91), .ZN(n613) );
  AOI22_X1 U79 ( .A1(N102), .A2(n9), .B1(wstart_reg[30]), .B2(n25), .ZN(n91)
         );
  OAI21_X1 U80 ( .B1(n21), .B2(n92), .A(n93), .ZN(n614) );
  AOI22_X1 U81 ( .A1(N101), .A2(n9), .B1(wstart_reg[29]), .B2(n25), .ZN(n93)
         );
  OAI21_X1 U82 ( .B1(n21), .B2(n94), .A(n95), .ZN(n615) );
  AOI22_X1 U83 ( .A1(N100), .A2(n9), .B1(wstart_reg[28]), .B2(n25), .ZN(n95)
         );
  OAI21_X1 U84 ( .B1(n21), .B2(n96), .A(n97), .ZN(n616) );
  AOI22_X1 U85 ( .A1(N99), .A2(n9), .B1(wstart_reg[27]), .B2(n25), .ZN(n97) );
  OAI21_X1 U86 ( .B1(n21), .B2(n98), .A(n99), .ZN(n617) );
  AOI22_X1 U87 ( .A1(N98), .A2(n9), .B1(wstart_reg[26]), .B2(n25), .ZN(n99) );
  OAI21_X1 U88 ( .B1(n21), .B2(n100), .A(n101), .ZN(n618) );
  AOI22_X1 U89 ( .A1(N97), .A2(n9), .B1(wstart_reg[25]), .B2(n25), .ZN(n101)
         );
  OAI21_X1 U90 ( .B1(n21), .B2(n102), .A(n103), .ZN(n619) );
  AOI22_X1 U91 ( .A1(N96), .A2(n9), .B1(wstart_reg[24]), .B2(n25), .ZN(n103)
         );
  OAI21_X1 U92 ( .B1(n21), .B2(n104), .A(n105), .ZN(n620) );
  AOI22_X1 U93 ( .A1(N95), .A2(n9), .B1(wstart_reg[23]), .B2(n25), .ZN(n105)
         );
  OAI21_X1 U94 ( .B1(n21), .B2(n106), .A(n107), .ZN(n621) );
  AOI22_X1 U95 ( .A1(N94), .A2(n9), .B1(wstart_reg[22]), .B2(n25), .ZN(n107)
         );
  OAI21_X1 U96 ( .B1(n21), .B2(n108), .A(n109), .ZN(n622) );
  AOI22_X1 U97 ( .A1(N93), .A2(n9), .B1(wstart_reg[21]), .B2(n25), .ZN(n109)
         );
  OAI21_X1 U98 ( .B1(n21), .B2(n110), .A(n111), .ZN(n623) );
  AOI22_X1 U99 ( .A1(N92), .A2(n9), .B1(wstart_reg[20]), .B2(n25), .ZN(n111)
         );
  OAI21_X1 U100 ( .B1(n21), .B2(n112), .A(n113), .ZN(n624) );
  AOI22_X1 U101 ( .A1(N91), .A2(n9), .B1(wstart_reg[19]), .B2(n25), .ZN(n113)
         );
  OAI21_X1 U102 ( .B1(n21), .B2(n114), .A(n115), .ZN(n625) );
  AOI22_X1 U103 ( .A1(N90), .A2(n9), .B1(wstart_reg[18]), .B2(n25), .ZN(n115)
         );
  OAI21_X1 U104 ( .B1(n21), .B2(n116), .A(n117), .ZN(n626) );
  AOI22_X1 U105 ( .A1(N89), .A2(n9), .B1(wstart_reg[17]), .B2(n25), .ZN(n117)
         );
  OAI21_X1 U106 ( .B1(n21), .B2(n118), .A(n119), .ZN(n627) );
  AOI22_X1 U107 ( .A1(N88), .A2(n9), .B1(wstart_reg[16]), .B2(n25), .ZN(n119)
         );
  OAI21_X1 U108 ( .B1(n21), .B2(n120), .A(n121), .ZN(n628) );
  AOI22_X1 U109 ( .A1(N87), .A2(n9), .B1(wstart_reg[15]), .B2(n25), .ZN(n121)
         );
  OAI21_X1 U110 ( .B1(n21), .B2(n122), .A(n123), .ZN(n629) );
  AOI22_X1 U111 ( .A1(N86), .A2(n9), .B1(wstart_reg[14]), .B2(n25), .ZN(n123)
         );
  OAI21_X1 U112 ( .B1(n21), .B2(n124), .A(n125), .ZN(n630) );
  AOI22_X1 U113 ( .A1(N85), .A2(n9), .B1(wstart_reg[13]), .B2(n25), .ZN(n125)
         );
  OAI21_X1 U114 ( .B1(n21), .B2(n126), .A(n127), .ZN(n631) );
  AOI22_X1 U115 ( .A1(N84), .A2(n9), .B1(wstart_reg[12]), .B2(n25), .ZN(n127)
         );
  OAI21_X1 U116 ( .B1(n21), .B2(n128), .A(n129), .ZN(n632) );
  AOI22_X1 U117 ( .A1(N83), .A2(n9), .B1(wstart_reg[11]), .B2(n25), .ZN(n129)
         );
  OAI21_X1 U118 ( .B1(n21), .B2(n130), .A(n131), .ZN(n633) );
  AOI22_X1 U119 ( .A1(N82), .A2(n9), .B1(wstart_reg[10]), .B2(n25), .ZN(n131)
         );
  OAI21_X1 U120 ( .B1(n21), .B2(n132), .A(n133), .ZN(n634) );
  AOI22_X1 U121 ( .A1(N81), .A2(n9), .B1(wstart_reg[9]), .B2(n25), .ZN(n133)
         );
  OAI21_X1 U122 ( .B1(n21), .B2(n134), .A(n135), .ZN(n635) );
  AOI22_X1 U123 ( .A1(N80), .A2(n9), .B1(wstart_reg[8]), .B2(n25), .ZN(n135)
         );
  OAI21_X1 U124 ( .B1(n21), .B2(n136), .A(n137), .ZN(n636) );
  AOI22_X1 U125 ( .A1(N79), .A2(n9), .B1(wstart_reg[7]), .B2(n25), .ZN(n137)
         );
  OAI21_X1 U126 ( .B1(n21), .B2(n138), .A(n139), .ZN(n637) );
  AOI22_X1 U127 ( .A1(N78), .A2(n9), .B1(wstart_reg[6]), .B2(n25), .ZN(n139)
         );
  OAI21_X1 U128 ( .B1(n21), .B2(n140), .A(n141), .ZN(n638) );
  AOI22_X1 U129 ( .A1(N77), .A2(n9), .B1(wstart_reg[5]), .B2(n25), .ZN(n141)
         );
  OAI21_X1 U130 ( .B1(n21), .B2(n142), .A(n143), .ZN(n639) );
  AOI22_X1 U131 ( .A1(N76), .A2(n9), .B1(wstart_reg[4]), .B2(n25), .ZN(n143)
         );
  OAI21_X1 U132 ( .B1(n21), .B2(n144), .A(n145), .ZN(n640) );
  AOI22_X1 U133 ( .A1(N75), .A2(n9), .B1(wstart_reg[3]), .B2(n25), .ZN(n145)
         );
  OAI21_X1 U134 ( .B1(n21), .B2(n146), .A(n147), .ZN(n641) );
  AOI22_X1 U135 ( .A1(N74), .A2(n9), .B1(wstart_reg[2]), .B2(n25), .ZN(n147)
         );
  OAI21_X1 U136 ( .B1(n21), .B2(n148), .A(n149), .ZN(n642) );
  AOI22_X1 U137 ( .A1(N73), .A2(n9), .B1(wstart_reg[1]), .B2(n25), .ZN(n149)
         );
  OAI21_X1 U138 ( .B1(n21), .B2(n150), .A(n151), .ZN(n643) );
  AOI22_X1 U139 ( .A1(N72), .A2(n9), .B1(wstart_reg[0]), .B2(n25), .ZN(n151)
         );
  AND2_X1 U141 ( .A1(M1_MW), .A2(n153), .ZN(n24) );
  AND2_X1 U142 ( .A1(reset), .A2(n21), .ZN(n153) );
  NAND3_X1 U144 ( .A1(n155), .A2(n156), .A3(n157), .ZN(n154) );
  OAI21_X1 U145 ( .B1(DMA_State[0]), .B2(n158), .A(n159), .ZN(n157) );
  NAND3_X1 U146 ( .A1(n160), .A2(n161), .A3(DMA_State[0]), .ZN(n159) );
  INV_X1 U147 ( .A(N34), .ZN(n158) );
  OAI22_X1 U148 ( .A1(n162), .A2(n163), .B1(n164), .B2(n165), .ZN(n644) );
  OAI22_X1 U149 ( .A1(n162), .A2(n166), .B1(n164), .B2(n167), .ZN(n645) );
  OAI22_X1 U150 ( .A1(n162), .A2(n168), .B1(n164), .B2(n169), .ZN(n646) );
  OAI22_X1 U151 ( .A1(n162), .A2(n170), .B1(n164), .B2(n171), .ZN(n647) );
  OAI22_X1 U152 ( .A1(n162), .A2(n172), .B1(n164), .B2(n173), .ZN(n648) );
  OAI22_X1 U153 ( .A1(n162), .A2(n174), .B1(n164), .B2(n175), .ZN(n649) );
  OAI22_X1 U154 ( .A1(n162), .A2(n176), .B1(n164), .B2(n177), .ZN(n650) );
  OAI22_X1 U155 ( .A1(n162), .A2(n178), .B1(n164), .B2(n179), .ZN(n651) );
  OAI22_X1 U156 ( .A1(n162), .A2(n180), .B1(n164), .B2(n181), .ZN(n652) );
  OAI22_X1 U157 ( .A1(n162), .A2(n182), .B1(n164), .B2(n183), .ZN(n653) );
  OAI22_X1 U158 ( .A1(n162), .A2(n184), .B1(n164), .B2(n185), .ZN(n654) );
  OAI22_X1 U159 ( .A1(n162), .A2(n186), .B1(n164), .B2(n187), .ZN(n655) );
  OAI22_X1 U160 ( .A1(n162), .A2(n188), .B1(n164), .B2(n189), .ZN(n656) );
  OAI22_X1 U161 ( .A1(n162), .A2(n190), .B1(n164), .B2(n191), .ZN(n657) );
  OAI22_X1 U162 ( .A1(n162), .A2(n192), .B1(n164), .B2(n193), .ZN(n658) );
  OAI22_X1 U163 ( .A1(n162), .A2(n194), .B1(n164), .B2(n195), .ZN(n659) );
  OAI22_X1 U164 ( .A1(n162), .A2(n196), .B1(n164), .B2(n197), .ZN(n660) );
  OAI22_X1 U165 ( .A1(n162), .A2(n198), .B1(n164), .B2(n199), .ZN(n661) );
  OAI22_X1 U166 ( .A1(n162), .A2(n200), .B1(n164), .B2(n201), .ZN(n662) );
  OAI22_X1 U167 ( .A1(n162), .A2(n202), .B1(n164), .B2(n203), .ZN(n663) );
  OAI22_X1 U168 ( .A1(n162), .A2(n204), .B1(n164), .B2(n205), .ZN(n664) );
  OAI22_X1 U169 ( .A1(n162), .A2(n206), .B1(n164), .B2(n207), .ZN(n665) );
  OAI22_X1 U170 ( .A1(n162), .A2(n208), .B1(n164), .B2(n209), .ZN(n666) );
  OAI22_X1 U171 ( .A1(n162), .A2(n210), .B1(n164), .B2(n211), .ZN(n667) );
  OAI22_X1 U172 ( .A1(n162), .A2(n212), .B1(n164), .B2(n213), .ZN(n668) );
  OAI22_X1 U173 ( .A1(n162), .A2(n214), .B1(n164), .B2(n215), .ZN(n669) );
  OAI22_X1 U174 ( .A1(n162), .A2(n216), .B1(n164), .B2(n217), .ZN(n670) );
  OAI22_X1 U175 ( .A1(n162), .A2(n218), .B1(n164), .B2(n219), .ZN(n671) );
  OAI22_X1 U176 ( .A1(n162), .A2(n220), .B1(n164), .B2(n221), .ZN(n672) );
  OAI22_X1 U177 ( .A1(n162), .A2(n222), .B1(n164), .B2(n223), .ZN(n673) );
  OAI22_X1 U178 ( .A1(n162), .A2(n224), .B1(n164), .B2(n225), .ZN(n674) );
  OAI22_X1 U179 ( .A1(n162), .A2(n226), .B1(n164), .B2(n227), .ZN(n675) );
  NAND3_X1 U182 ( .A1(S1_ADDRBUS[1]), .A2(S1_ADDRBUS[0]), .A3(n229), .ZN(n228)
         );
  OAI22_X1 U183 ( .A1(n230), .A2(n231), .B1(n165), .B2(n232), .ZN(n676) );
  OAI22_X1 U184 ( .A1(n233), .A2(n231), .B1(n167), .B2(n232), .ZN(n677) );
  OAI22_X1 U185 ( .A1(n234), .A2(n231), .B1(n169), .B2(n232), .ZN(n678) );
  OAI22_X1 U186 ( .A1(n235), .A2(n231), .B1(n171), .B2(n232), .ZN(n679) );
  OAI22_X1 U187 ( .A1(n236), .A2(n231), .B1(n173), .B2(n232), .ZN(n680) );
  OAI22_X1 U188 ( .A1(n237), .A2(n231), .B1(n175), .B2(n232), .ZN(n681) );
  OAI22_X1 U189 ( .A1(n238), .A2(n231), .B1(n177), .B2(n232), .ZN(n682) );
  OAI22_X1 U190 ( .A1(n239), .A2(n231), .B1(n179), .B2(n232), .ZN(n683) );
  OAI22_X1 U191 ( .A1(n240), .A2(n231), .B1(n181), .B2(n232), .ZN(n684) );
  OAI22_X1 U192 ( .A1(n241), .A2(n231), .B1(n183), .B2(n232), .ZN(n685) );
  OAI22_X1 U193 ( .A1(n242), .A2(n231), .B1(n185), .B2(n232), .ZN(n686) );
  OAI22_X1 U194 ( .A1(n243), .A2(n231), .B1(n187), .B2(n232), .ZN(n687) );
  OAI22_X1 U195 ( .A1(n244), .A2(n231), .B1(n189), .B2(n232), .ZN(n688) );
  OAI22_X1 U196 ( .A1(n245), .A2(n231), .B1(n191), .B2(n232), .ZN(n689) );
  OAI22_X1 U197 ( .A1(n246), .A2(n231), .B1(n193), .B2(n232), .ZN(n690) );
  OAI22_X1 U198 ( .A1(n247), .A2(n231), .B1(n195), .B2(n232), .ZN(n691) );
  OAI22_X1 U199 ( .A1(n248), .A2(n231), .B1(n197), .B2(n232), .ZN(n692) );
  OAI22_X1 U200 ( .A1(n249), .A2(n231), .B1(n199), .B2(n232), .ZN(n693) );
  OAI22_X1 U201 ( .A1(n250), .A2(n231), .B1(n201), .B2(n232), .ZN(n694) );
  OAI22_X1 U202 ( .A1(n251), .A2(n231), .B1(n203), .B2(n232), .ZN(n695) );
  OAI22_X1 U203 ( .A1(n252), .A2(n231), .B1(n205), .B2(n232), .ZN(n696) );
  OAI22_X1 U204 ( .A1(n253), .A2(n231), .B1(n207), .B2(n232), .ZN(n697) );
  OAI22_X1 U205 ( .A1(n254), .A2(n231), .B1(n209), .B2(n232), .ZN(n698) );
  OAI22_X1 U206 ( .A1(n255), .A2(n231), .B1(n211), .B2(n232), .ZN(n699) );
  OAI22_X1 U207 ( .A1(n256), .A2(n231), .B1(n213), .B2(n232), .ZN(n700) );
  OAI22_X1 U208 ( .A1(n257), .A2(n231), .B1(n215), .B2(n232), .ZN(n701) );
  OAI22_X1 U209 ( .A1(n258), .A2(n231), .B1(n217), .B2(n232), .ZN(n702) );
  OAI22_X1 U210 ( .A1(n259), .A2(n231), .B1(n219), .B2(n232), .ZN(n703) );
  OAI22_X1 U211 ( .A1(n260), .A2(n231), .B1(n221), .B2(n232), .ZN(n704) );
  OAI22_X1 U212 ( .A1(n261), .A2(n231), .B1(n223), .B2(n232), .ZN(n705) );
  OAI22_X1 U213 ( .A1(n262), .A2(n231), .B1(n225), .B2(n232), .ZN(n706) );
  OAI22_X1 U214 ( .A1(n263), .A2(n231), .B1(n227), .B2(n232), .ZN(n707) );
  NAND3_X1 U217 ( .A1(S1_ADDRBUS[1]), .A2(n14), .A3(n229), .ZN(n264) );
  OAI22_X1 U218 ( .A1(n265), .A2(n266), .B1(n165), .B2(n267), .ZN(n708) );
  OAI22_X1 U219 ( .A1(n265), .A2(n268), .B1(n167), .B2(n267), .ZN(n709) );
  OAI22_X1 U220 ( .A1(n265), .A2(n269), .B1(n169), .B2(n267), .ZN(n710) );
  OAI22_X1 U221 ( .A1(n265), .A2(n270), .B1(n171), .B2(n267), .ZN(n711) );
  OAI22_X1 U222 ( .A1(n265), .A2(n271), .B1(n173), .B2(n267), .ZN(n712) );
  OAI22_X1 U223 ( .A1(n265), .A2(n272), .B1(n175), .B2(n267), .ZN(n713) );
  OAI22_X1 U224 ( .A1(n265), .A2(n273), .B1(n177), .B2(n267), .ZN(n714) );
  OAI22_X1 U225 ( .A1(n265), .A2(n274), .B1(n179), .B2(n267), .ZN(n715) );
  OAI22_X1 U226 ( .A1(n265), .A2(n275), .B1(n181), .B2(n267), .ZN(n716) );
  OAI22_X1 U227 ( .A1(n265), .A2(n276), .B1(n183), .B2(n267), .ZN(n717) );
  OAI22_X1 U228 ( .A1(n265), .A2(n277), .B1(n185), .B2(n267), .ZN(n718) );
  OAI22_X1 U229 ( .A1(n265), .A2(n278), .B1(n187), .B2(n267), .ZN(n719) );
  OAI22_X1 U230 ( .A1(n265), .A2(n279), .B1(n189), .B2(n267), .ZN(n720) );
  OAI22_X1 U231 ( .A1(n265), .A2(n280), .B1(n191), .B2(n267), .ZN(n721) );
  OAI22_X1 U232 ( .A1(n265), .A2(n281), .B1(n193), .B2(n267), .ZN(n722) );
  OAI22_X1 U233 ( .A1(n265), .A2(n282), .B1(n195), .B2(n267), .ZN(n723) );
  OAI22_X1 U234 ( .A1(n265), .A2(n283), .B1(n197), .B2(n267), .ZN(n724) );
  OAI22_X1 U235 ( .A1(n265), .A2(n284), .B1(n199), .B2(n267), .ZN(n725) );
  OAI22_X1 U236 ( .A1(n265), .A2(n285), .B1(n201), .B2(n267), .ZN(n726) );
  OAI22_X1 U237 ( .A1(n265), .A2(n286), .B1(n203), .B2(n267), .ZN(n727) );
  OAI22_X1 U238 ( .A1(n265), .A2(n287), .B1(n205), .B2(n267), .ZN(n728) );
  OAI22_X1 U239 ( .A1(n265), .A2(n288), .B1(n207), .B2(n267), .ZN(n729) );
  OAI22_X1 U240 ( .A1(n265), .A2(n289), .B1(n209), .B2(n267), .ZN(n730) );
  OAI22_X1 U241 ( .A1(n265), .A2(n290), .B1(n211), .B2(n267), .ZN(n731) );
  OAI22_X1 U242 ( .A1(n265), .A2(n291), .B1(n213), .B2(n267), .ZN(n732) );
  OAI22_X1 U243 ( .A1(n265), .A2(n292), .B1(n215), .B2(n267), .ZN(n733) );
  OAI22_X1 U244 ( .A1(n265), .A2(n293), .B1(n217), .B2(n267), .ZN(n734) );
  OAI22_X1 U245 ( .A1(n265), .A2(n294), .B1(n219), .B2(n267), .ZN(n735) );
  OAI22_X1 U246 ( .A1(n265), .A2(n295), .B1(n221), .B2(n267), .ZN(n736) );
  OAI22_X1 U247 ( .A1(n265), .A2(n296), .B1(n223), .B2(n267), .ZN(n737) );
  OAI22_X1 U248 ( .A1(n265), .A2(n297), .B1(n225), .B2(n267), .ZN(n738) );
  OAI22_X1 U249 ( .A1(n265), .A2(n298), .B1(n227), .B2(n267), .ZN(n739) );
  NAND3_X1 U252 ( .A1(S1_ADDRBUS[0]), .A2(n16), .A3(n229), .ZN(n299) );
  OAI22_X1 U253 ( .A1(n300), .A2(n301), .B1(n165), .B2(n302), .ZN(n740) );
  OAI22_X1 U254 ( .A1(n303), .A2(n301), .B1(n167), .B2(n302), .ZN(n741) );
  OAI22_X1 U255 ( .A1(n304), .A2(n301), .B1(n169), .B2(n302), .ZN(n742) );
  OAI22_X1 U256 ( .A1(n305), .A2(n301), .B1(n171), .B2(n302), .ZN(n743) );
  OAI22_X1 U257 ( .A1(n306), .A2(n301), .B1(n173), .B2(n302), .ZN(n744) );
  OAI22_X1 U258 ( .A1(n307), .A2(n301), .B1(n175), .B2(n302), .ZN(n745) );
  OAI22_X1 U259 ( .A1(n308), .A2(n301), .B1(n177), .B2(n302), .ZN(n746) );
  OAI22_X1 U260 ( .A1(n309), .A2(n301), .B1(n179), .B2(n302), .ZN(n747) );
  OAI22_X1 U261 ( .A1(n310), .A2(n301), .B1(n181), .B2(n302), .ZN(n748) );
  OAI22_X1 U262 ( .A1(n311), .A2(n301), .B1(n183), .B2(n302), .ZN(n749) );
  OAI22_X1 U263 ( .A1(n312), .A2(n301), .B1(n185), .B2(n302), .ZN(n750) );
  OAI22_X1 U264 ( .A1(n313), .A2(n301), .B1(n187), .B2(n302), .ZN(n751) );
  OAI22_X1 U265 ( .A1(n314), .A2(n301), .B1(n189), .B2(n302), .ZN(n752) );
  OAI22_X1 U266 ( .A1(n315), .A2(n301), .B1(n191), .B2(n302), .ZN(n753) );
  OAI22_X1 U267 ( .A1(n316), .A2(n301), .B1(n193), .B2(n302), .ZN(n754) );
  OAI22_X1 U268 ( .A1(n317), .A2(n301), .B1(n195), .B2(n302), .ZN(n755) );
  OAI22_X1 U269 ( .A1(n318), .A2(n301), .B1(n197), .B2(n302), .ZN(n756) );
  OAI22_X1 U270 ( .A1(n319), .A2(n301), .B1(n199), .B2(n302), .ZN(n757) );
  OAI22_X1 U271 ( .A1(n320), .A2(n301), .B1(n201), .B2(n302), .ZN(n758) );
  OAI22_X1 U272 ( .A1(n321), .A2(n301), .B1(n203), .B2(n302), .ZN(n759) );
  OAI22_X1 U273 ( .A1(n322), .A2(n301), .B1(n205), .B2(n302), .ZN(n760) );
  OAI22_X1 U274 ( .A1(n323), .A2(n301), .B1(n207), .B2(n302), .ZN(n761) );
  OAI22_X1 U275 ( .A1(n324), .A2(n301), .B1(n209), .B2(n302), .ZN(n762) );
  OAI22_X1 U276 ( .A1(n325), .A2(n301), .B1(n211), .B2(n302), .ZN(n763) );
  OAI22_X1 U277 ( .A1(n326), .A2(n301), .B1(n213), .B2(n302), .ZN(n764) );
  OAI22_X1 U278 ( .A1(n327), .A2(n301), .B1(n215), .B2(n302), .ZN(n765) );
  OAI22_X1 U279 ( .A1(n328), .A2(n301), .B1(n217), .B2(n302), .ZN(n766) );
  OAI22_X1 U280 ( .A1(n329), .A2(n301), .B1(n219), .B2(n302), .ZN(n767) );
  OAI22_X1 U281 ( .A1(n330), .A2(n301), .B1(n221), .B2(n302), .ZN(n768) );
  OAI22_X1 U282 ( .A1(n331), .A2(n301), .B1(n223), .B2(n302), .ZN(n769) );
  OAI22_X1 U283 ( .A1(n332), .A2(n301), .B1(n225), .B2(n302), .ZN(n770) );
  OAI22_X1 U284 ( .A1(n333), .A2(n301), .B1(n227), .B2(n302), .ZN(n771) );
  NAND3_X1 U287 ( .A1(n14), .A2(n16), .A3(n229), .ZN(n334) );
  NOR3_X1 U288 ( .A1(n13), .A2(S1_ADDRBUS[3]), .A3(n18), .ZN(n229) );
  INV_X1 U289 ( .A(S1_ADDRBUS[0]), .ZN(n14) );
  OAI22_X1 U290 ( .A1(n335), .A2(n336), .B1(n337), .B2(n338), .ZN(n772) );
  INV_X1 U291 ( .A(M1_RDATABUS[31]), .ZN(n338) );
  OAI22_X1 U292 ( .A1(n335), .A2(n339), .B1(n337), .B2(n340), .ZN(n773) );
  INV_X1 U293 ( .A(M1_RDATABUS[30]), .ZN(n340) );
  OAI22_X1 U294 ( .A1(n335), .A2(n341), .B1(n337), .B2(n342), .ZN(n774) );
  INV_X1 U295 ( .A(M1_RDATABUS[29]), .ZN(n342) );
  OAI22_X1 U296 ( .A1(n335), .A2(n343), .B1(n337), .B2(n344), .ZN(n775) );
  INV_X1 U297 ( .A(M1_RDATABUS[28]), .ZN(n344) );
  OAI22_X1 U298 ( .A1(n335), .A2(n345), .B1(n337), .B2(n346), .ZN(n776) );
  INV_X1 U299 ( .A(M1_RDATABUS[27]), .ZN(n346) );
  OAI22_X1 U300 ( .A1(n335), .A2(n347), .B1(n337), .B2(n348), .ZN(n777) );
  INV_X1 U301 ( .A(M1_RDATABUS[26]), .ZN(n348) );
  OAI22_X1 U302 ( .A1(n335), .A2(n349), .B1(n337), .B2(n350), .ZN(n778) );
  INV_X1 U303 ( .A(M1_RDATABUS[25]), .ZN(n350) );
  OAI22_X1 U304 ( .A1(n335), .A2(n351), .B1(n337), .B2(n352), .ZN(n779) );
  INV_X1 U305 ( .A(M1_RDATABUS[24]), .ZN(n352) );
  OAI22_X1 U306 ( .A1(n335), .A2(n353), .B1(n337), .B2(n354), .ZN(n780) );
  INV_X1 U307 ( .A(M1_RDATABUS[23]), .ZN(n354) );
  OAI22_X1 U308 ( .A1(n335), .A2(n355), .B1(n337), .B2(n356), .ZN(n781) );
  INV_X1 U309 ( .A(M1_RDATABUS[22]), .ZN(n356) );
  OAI22_X1 U310 ( .A1(n335), .A2(n357), .B1(n337), .B2(n358), .ZN(n782) );
  INV_X1 U311 ( .A(M1_RDATABUS[21]), .ZN(n358) );
  OAI22_X1 U312 ( .A1(n335), .A2(n359), .B1(n337), .B2(n360), .ZN(n783) );
  INV_X1 U313 ( .A(M1_RDATABUS[20]), .ZN(n360) );
  OAI22_X1 U314 ( .A1(n335), .A2(n361), .B1(n337), .B2(n362), .ZN(n784) );
  INV_X1 U315 ( .A(M1_RDATABUS[19]), .ZN(n362) );
  OAI22_X1 U316 ( .A1(n335), .A2(n363), .B1(n337), .B2(n364), .ZN(n785) );
  INV_X1 U317 ( .A(M1_RDATABUS[18]), .ZN(n364) );
  OAI22_X1 U318 ( .A1(n335), .A2(n365), .B1(n337), .B2(n366), .ZN(n786) );
  INV_X1 U319 ( .A(M1_RDATABUS[17]), .ZN(n366) );
  OAI22_X1 U320 ( .A1(n335), .A2(n367), .B1(n337), .B2(n368), .ZN(n787) );
  INV_X1 U321 ( .A(M1_RDATABUS[16]), .ZN(n368) );
  OAI22_X1 U322 ( .A1(n335), .A2(n369), .B1(n337), .B2(n370), .ZN(n788) );
  INV_X1 U323 ( .A(M1_RDATABUS[15]), .ZN(n370) );
  OAI22_X1 U324 ( .A1(n335), .A2(n371), .B1(n337), .B2(n372), .ZN(n789) );
  INV_X1 U325 ( .A(M1_RDATABUS[14]), .ZN(n372) );
  OAI22_X1 U326 ( .A1(n335), .A2(n373), .B1(n337), .B2(n374), .ZN(n790) );
  INV_X1 U327 ( .A(M1_RDATABUS[13]), .ZN(n374) );
  OAI22_X1 U328 ( .A1(n335), .A2(n375), .B1(n337), .B2(n376), .ZN(n791) );
  INV_X1 U329 ( .A(M1_RDATABUS[12]), .ZN(n376) );
  OAI22_X1 U330 ( .A1(n335), .A2(n377), .B1(n337), .B2(n378), .ZN(n792) );
  INV_X1 U331 ( .A(M1_RDATABUS[11]), .ZN(n378) );
  OAI22_X1 U332 ( .A1(n335), .A2(n379), .B1(n337), .B2(n380), .ZN(n793) );
  INV_X1 U333 ( .A(M1_RDATABUS[10]), .ZN(n380) );
  OAI22_X1 U334 ( .A1(n335), .A2(n381), .B1(n337), .B2(n382), .ZN(n794) );
  INV_X1 U335 ( .A(M1_RDATABUS[9]), .ZN(n382) );
  OAI22_X1 U336 ( .A1(n335), .A2(n383), .B1(n337), .B2(n384), .ZN(n795) );
  INV_X1 U337 ( .A(M1_RDATABUS[8]), .ZN(n384) );
  OAI22_X1 U338 ( .A1(n335), .A2(n385), .B1(n337), .B2(n386), .ZN(n796) );
  INV_X1 U339 ( .A(M1_RDATABUS[7]), .ZN(n386) );
  OAI22_X1 U340 ( .A1(n335), .A2(n387), .B1(n337), .B2(n388), .ZN(n797) );
  INV_X1 U341 ( .A(M1_RDATABUS[6]), .ZN(n388) );
  OAI22_X1 U342 ( .A1(n335), .A2(n389), .B1(n337), .B2(n390), .ZN(n798) );
  INV_X1 U343 ( .A(M1_RDATABUS[5]), .ZN(n390) );
  OAI22_X1 U344 ( .A1(n335), .A2(n391), .B1(n337), .B2(n392), .ZN(n799) );
  INV_X1 U345 ( .A(M1_RDATABUS[4]), .ZN(n392) );
  OAI22_X1 U346 ( .A1(n335), .A2(n393), .B1(n337), .B2(n394), .ZN(n800) );
  INV_X1 U347 ( .A(M1_RDATABUS[3]), .ZN(n394) );
  OAI22_X1 U348 ( .A1(n335), .A2(n395), .B1(n337), .B2(n396), .ZN(n801) );
  INV_X1 U349 ( .A(M1_RDATABUS[2]), .ZN(n396) );
  OAI22_X1 U350 ( .A1(n335), .A2(n397), .B1(n337), .B2(n398), .ZN(n802) );
  INV_X1 U351 ( .A(M1_RDATABUS[1]), .ZN(n398) );
  OAI22_X1 U352 ( .A1(n335), .A2(n399), .B1(n337), .B2(n400), .ZN(n803) );
  INV_X1 U353 ( .A(M1_RDATABUS[0]), .ZN(n400) );
  OAI221_X1 U356 ( .B1(n167), .B2(n7), .C1(n403), .C2(n404), .A(n405), .ZN(
        n804) );
  NAND2_X1 U357 ( .A1(N106), .A2(n5), .ZN(n405) );
  INV_X1 U358 ( .A(S1_WDATABUS[1]), .ZN(n167) );
  OAI221_X1 U359 ( .B1(n169), .B2(n7), .C1(n403), .C2(n407), .A(n408), .ZN(
        n805) );
  NAND2_X1 U360 ( .A1(N107), .A2(n5), .ZN(n408) );
  INV_X1 U361 ( .A(S1_WDATABUS[2]), .ZN(n169) );
  OAI221_X1 U362 ( .B1(n171), .B2(n7), .C1(n403), .C2(n409), .A(n410), .ZN(
        n806) );
  NAND2_X1 U363 ( .A1(N108), .A2(n5), .ZN(n410) );
  INV_X1 U364 ( .A(S1_WDATABUS[3]), .ZN(n171) );
  OAI221_X1 U365 ( .B1(n173), .B2(n7), .C1(n403), .C2(n411), .A(n412), .ZN(
        n807) );
  NAND2_X1 U366 ( .A1(N109), .A2(n5), .ZN(n412) );
  INV_X1 U367 ( .A(S1_WDATABUS[4]), .ZN(n173) );
  OAI221_X1 U368 ( .B1(n175), .B2(n7), .C1(n403), .C2(n413), .A(n414), .ZN(
        n808) );
  NAND2_X1 U369 ( .A1(N110), .A2(n5), .ZN(n414) );
  INV_X1 U370 ( .A(S1_WDATABUS[5]), .ZN(n175) );
  OAI221_X1 U371 ( .B1(n177), .B2(n7), .C1(n403), .C2(n415), .A(n416), .ZN(
        n809) );
  NAND2_X1 U372 ( .A1(N111), .A2(n5), .ZN(n416) );
  INV_X1 U373 ( .A(S1_WDATABUS[6]), .ZN(n177) );
  OAI221_X1 U374 ( .B1(n179), .B2(n7), .C1(n403), .C2(n417), .A(n418), .ZN(
        n810) );
  NAND2_X1 U375 ( .A1(N112), .A2(n5), .ZN(n418) );
  INV_X1 U376 ( .A(S1_WDATABUS[7]), .ZN(n179) );
  OAI221_X1 U377 ( .B1(n181), .B2(n7), .C1(n403), .C2(n419), .A(n420), .ZN(
        n811) );
  NAND2_X1 U378 ( .A1(N113), .A2(n5), .ZN(n420) );
  INV_X1 U379 ( .A(S1_WDATABUS[8]), .ZN(n181) );
  OAI221_X1 U380 ( .B1(n183), .B2(n7), .C1(n403), .C2(n421), .A(n422), .ZN(
        n812) );
  NAND2_X1 U381 ( .A1(N114), .A2(n5), .ZN(n422) );
  INV_X1 U382 ( .A(S1_WDATABUS[9]), .ZN(n183) );
  OAI221_X1 U383 ( .B1(n185), .B2(n7), .C1(n403), .C2(n423), .A(n424), .ZN(
        n813) );
  NAND2_X1 U384 ( .A1(N115), .A2(n5), .ZN(n424) );
  INV_X1 U385 ( .A(S1_WDATABUS[10]), .ZN(n185) );
  OAI221_X1 U386 ( .B1(n187), .B2(n7), .C1(n403), .C2(n425), .A(n426), .ZN(
        n814) );
  NAND2_X1 U387 ( .A1(N116), .A2(n5), .ZN(n426) );
  INV_X1 U388 ( .A(S1_WDATABUS[11]), .ZN(n187) );
  OAI221_X1 U389 ( .B1(n189), .B2(n7), .C1(n403), .C2(n427), .A(n428), .ZN(
        n815) );
  NAND2_X1 U390 ( .A1(N117), .A2(n5), .ZN(n428) );
  INV_X1 U391 ( .A(S1_WDATABUS[12]), .ZN(n189) );
  OAI221_X1 U392 ( .B1(n191), .B2(n7), .C1(n403), .C2(n429), .A(n430), .ZN(
        n816) );
  NAND2_X1 U393 ( .A1(N118), .A2(n5), .ZN(n430) );
  INV_X1 U394 ( .A(S1_WDATABUS[13]), .ZN(n191) );
  OAI221_X1 U395 ( .B1(n193), .B2(n7), .C1(n403), .C2(n431), .A(n432), .ZN(
        n817) );
  NAND2_X1 U396 ( .A1(N119), .A2(n5), .ZN(n432) );
  INV_X1 U397 ( .A(S1_WDATABUS[14]), .ZN(n193) );
  OAI221_X1 U398 ( .B1(n195), .B2(n7), .C1(n403), .C2(n433), .A(n434), .ZN(
        n818) );
  NAND2_X1 U399 ( .A1(N120), .A2(n5), .ZN(n434) );
  INV_X1 U400 ( .A(S1_WDATABUS[15]), .ZN(n195) );
  OAI221_X1 U401 ( .B1(n197), .B2(n7), .C1(n403), .C2(n435), .A(n436), .ZN(
        n819) );
  NAND2_X1 U402 ( .A1(N121), .A2(n5), .ZN(n436) );
  INV_X1 U403 ( .A(S1_WDATABUS[16]), .ZN(n197) );
  OAI221_X1 U404 ( .B1(n199), .B2(n7), .C1(n403), .C2(n437), .A(n438), .ZN(
        n820) );
  NAND2_X1 U405 ( .A1(N122), .A2(n5), .ZN(n438) );
  INV_X1 U406 ( .A(S1_WDATABUS[17]), .ZN(n199) );
  OAI221_X1 U407 ( .B1(n201), .B2(n7), .C1(n403), .C2(n439), .A(n440), .ZN(
        n821) );
  NAND2_X1 U408 ( .A1(N123), .A2(n5), .ZN(n440) );
  INV_X1 U409 ( .A(S1_WDATABUS[18]), .ZN(n201) );
  OAI221_X1 U410 ( .B1(n203), .B2(n7), .C1(n403), .C2(n441), .A(n442), .ZN(
        n822) );
  NAND2_X1 U411 ( .A1(N124), .A2(n5), .ZN(n442) );
  INV_X1 U412 ( .A(S1_WDATABUS[19]), .ZN(n203) );
  OAI221_X1 U413 ( .B1(n205), .B2(n7), .C1(n403), .C2(n443), .A(n444), .ZN(
        n823) );
  NAND2_X1 U414 ( .A1(N125), .A2(n5), .ZN(n444) );
  INV_X1 U415 ( .A(S1_WDATABUS[20]), .ZN(n205) );
  OAI221_X1 U416 ( .B1(n207), .B2(n7), .C1(n403), .C2(n445), .A(n446), .ZN(
        n824) );
  NAND2_X1 U417 ( .A1(N126), .A2(n5), .ZN(n446) );
  INV_X1 U418 ( .A(S1_WDATABUS[21]), .ZN(n207) );
  OAI221_X1 U419 ( .B1(n209), .B2(n7), .C1(n403), .C2(n447), .A(n448), .ZN(
        n825) );
  NAND2_X1 U420 ( .A1(N127), .A2(n5), .ZN(n448) );
  INV_X1 U421 ( .A(S1_WDATABUS[22]), .ZN(n209) );
  OAI221_X1 U422 ( .B1(n211), .B2(n7), .C1(n403), .C2(n449), .A(n450), .ZN(
        n826) );
  NAND2_X1 U423 ( .A1(N128), .A2(n5), .ZN(n450) );
  INV_X1 U424 ( .A(S1_WDATABUS[23]), .ZN(n211) );
  OAI221_X1 U425 ( .B1(n213), .B2(n7), .C1(n403), .C2(n451), .A(n452), .ZN(
        n827) );
  NAND2_X1 U426 ( .A1(N129), .A2(n5), .ZN(n452) );
  INV_X1 U427 ( .A(S1_WDATABUS[24]), .ZN(n213) );
  OAI221_X1 U428 ( .B1(n215), .B2(n7), .C1(n403), .C2(n453), .A(n454), .ZN(
        n828) );
  NAND2_X1 U429 ( .A1(N130), .A2(n5), .ZN(n454) );
  INV_X1 U430 ( .A(S1_WDATABUS[25]), .ZN(n215) );
  OAI221_X1 U431 ( .B1(n217), .B2(n7), .C1(n403), .C2(n455), .A(n456), .ZN(
        n829) );
  NAND2_X1 U432 ( .A1(N131), .A2(n5), .ZN(n456) );
  INV_X1 U433 ( .A(S1_WDATABUS[26]), .ZN(n217) );
  OAI221_X1 U434 ( .B1(n219), .B2(n7), .C1(n403), .C2(n457), .A(n458), .ZN(
        n830) );
  NAND2_X1 U435 ( .A1(N132), .A2(n5), .ZN(n458) );
  INV_X1 U436 ( .A(S1_WDATABUS[27]), .ZN(n219) );
  OAI221_X1 U437 ( .B1(n221), .B2(n7), .C1(n403), .C2(n459), .A(n460), .ZN(
        n831) );
  NAND2_X1 U438 ( .A1(N133), .A2(n5), .ZN(n460) );
  INV_X1 U439 ( .A(S1_WDATABUS[28]), .ZN(n221) );
  OAI221_X1 U440 ( .B1(n223), .B2(n7), .C1(n403), .C2(n461), .A(n462), .ZN(
        n832) );
  NAND2_X1 U441 ( .A1(N134), .A2(n5), .ZN(n462) );
  INV_X1 U442 ( .A(S1_WDATABUS[29]), .ZN(n223) );
  OAI221_X1 U443 ( .B1(n225), .B2(n7), .C1(n403), .C2(n463), .A(n464), .ZN(
        n833) );
  NAND2_X1 U444 ( .A1(N135), .A2(n5), .ZN(n464) );
  INV_X1 U445 ( .A(S1_WDATABUS[30]), .ZN(n225) );
  OAI221_X1 U446 ( .B1(n227), .B2(n7), .C1(n403), .C2(n465), .A(n466), .ZN(
        n834) );
  NAND2_X1 U447 ( .A1(N136), .A2(n5), .ZN(n466) );
  INV_X1 U448 ( .A(S1_WDATABUS[31]), .ZN(n227) );
  OAI221_X1 U449 ( .B1(n165), .B2(n7), .C1(n403), .C2(n467), .A(n468), .ZN(
        n835) );
  NAND2_X1 U450 ( .A1(N105), .A2(n5), .ZN(n468) );
  AND4_X1 U451 ( .A1(n401), .A2(M1_MW), .A3(n160), .A4(n161), .ZN(n406) );
  NAND3_X1 U453 ( .A1(n401), .A2(M1_MW), .A3(M1_NREADY), .ZN(n470) );
  NOR2_X1 U454 ( .A1(n471), .A2(n472), .ZN(n401) );
  NAND3_X1 U455 ( .A1(n469), .A2(n473), .A3(reset), .ZN(n402) );
  NAND3_X1 U456 ( .A1(n474), .A2(n473), .A3(reset), .ZN(n469) );
  NAND4_X1 U457 ( .A1(n18), .A2(n20), .A3(n16), .A4(n475), .ZN(n474) );
  NOR2_X1 U458 ( .A1(S1_ADDRBUS[0]), .A2(n13), .ZN(n475) );
  INV_X1 U459 ( .A(n11), .ZN(n13) );
  NOR2_X1 U460 ( .A1(n476), .A2(S1_BUSY), .ZN(n11) );
  INV_X1 U461 ( .A(S1_MW), .ZN(n476) );
  INV_X1 U462 ( .A(S1_ADDRBUS[1]), .ZN(n16) );
  INV_X1 U463 ( .A(S1_ADDRBUS[3]), .ZN(n20) );
  INV_X1 U464 ( .A(S1_ADDRBUS[2]), .ZN(n18) );
  INV_X1 U465 ( .A(S1_WDATABUS[0]), .ZN(n165) );
  OAI211_X1 U466 ( .C1(n276), .C2(n477), .A(n478), .B(n479), .ZN(
        S1_RDATABUS[9]) );
  AOI222_X1 U467 ( .A1(n480), .A2(count_reg[9]), .B1(n481), .B2(wstep_reg[9]), 
        .C1(n482), .C2(raddr_reg[9]), .ZN(n479) );
  AOI22_X1 U468 ( .A1(n483), .A2(rstart_reg[9]), .B1(n484), .B2(wstart_reg[9]), 
        .ZN(n478) );
  OAI211_X1 U469 ( .C1(n275), .C2(n477), .A(n485), .B(n486), .ZN(
        S1_RDATABUS[8]) );
  AOI222_X1 U470 ( .A1(n480), .A2(count_reg[8]), .B1(n481), .B2(wstep_reg[8]), 
        .C1(n482), .C2(raddr_reg[8]), .ZN(n486) );
  AOI22_X1 U471 ( .A1(n483), .A2(rstart_reg[8]), .B1(n484), .B2(wstart_reg[8]), 
        .ZN(n485) );
  OAI211_X1 U472 ( .C1(n274), .C2(n477), .A(n487), .B(n488), .ZN(
        S1_RDATABUS[7]) );
  AOI222_X1 U473 ( .A1(n480), .A2(count_reg[7]), .B1(n481), .B2(wstep_reg[7]), 
        .C1(n482), .C2(raddr_reg[7]), .ZN(n488) );
  AOI22_X1 U474 ( .A1(n483), .A2(rstart_reg[7]), .B1(n484), .B2(wstart_reg[7]), 
        .ZN(n487) );
  OAI211_X1 U475 ( .C1(n273), .C2(n477), .A(n489), .B(n490), .ZN(
        S1_RDATABUS[6]) );
  AOI222_X1 U476 ( .A1(n480), .A2(count_reg[6]), .B1(n481), .B2(wstep_reg[6]), 
        .C1(n482), .C2(raddr_reg[6]), .ZN(n490) );
  AOI22_X1 U477 ( .A1(n483), .A2(rstart_reg[6]), .B1(n484), .B2(wstart_reg[6]), 
        .ZN(n489) );
  OAI211_X1 U478 ( .C1(n272), .C2(n477), .A(n491), .B(n492), .ZN(
        S1_RDATABUS[5]) );
  AOI222_X1 U479 ( .A1(n480), .A2(count_reg[5]), .B1(n481), .B2(wstep_reg[5]), 
        .C1(n482), .C2(raddr_reg[5]), .ZN(n492) );
  AOI22_X1 U480 ( .A1(n483), .A2(rstart_reg[5]), .B1(n484), .B2(wstart_reg[5]), 
        .ZN(n491) );
  OAI211_X1 U481 ( .C1(n271), .C2(n477), .A(n493), .B(n494), .ZN(
        S1_RDATABUS[4]) );
  AOI222_X1 U482 ( .A1(n480), .A2(count_reg[4]), .B1(n481), .B2(wstep_reg[4]), 
        .C1(n482), .C2(raddr_reg[4]), .ZN(n494) );
  AOI22_X1 U483 ( .A1(n483), .A2(rstart_reg[4]), .B1(n484), .B2(wstart_reg[4]), 
        .ZN(n493) );
  OAI211_X1 U484 ( .C1(n270), .C2(n477), .A(n495), .B(n496), .ZN(
        S1_RDATABUS[3]) );
  AOI222_X1 U485 ( .A1(n480), .A2(count_reg[3]), .B1(n481), .B2(wstep_reg[3]), 
        .C1(n482), .C2(raddr_reg[3]), .ZN(n496) );
  AOI22_X1 U486 ( .A1(n483), .A2(rstart_reg[3]), .B1(n484), .B2(wstart_reg[3]), 
        .ZN(n495) );
  OAI211_X1 U487 ( .C1(n298), .C2(n477), .A(n497), .B(n498), .ZN(
        S1_RDATABUS[31]) );
  AOI222_X1 U488 ( .A1(n480), .A2(count_reg[31]), .B1(n481), .B2(wstep_reg[31]), .C1(n482), .C2(raddr_reg[31]), .ZN(n498) );
  AOI22_X1 U489 ( .A1(n483), .A2(rstart_reg[31]), .B1(n484), .B2(
        wstart_reg[31]), .ZN(n497) );
  OAI211_X1 U490 ( .C1(n297), .C2(n477), .A(n499), .B(n500), .ZN(
        S1_RDATABUS[30]) );
  AOI222_X1 U491 ( .A1(n480), .A2(count_reg[30]), .B1(n481), .B2(wstep_reg[30]), .C1(n482), .C2(raddr_reg[30]), .ZN(n500) );
  AOI22_X1 U492 ( .A1(n483), .A2(rstart_reg[30]), .B1(n484), .B2(
        wstart_reg[30]), .ZN(n499) );
  OAI211_X1 U493 ( .C1(n269), .C2(n477), .A(n501), .B(n502), .ZN(
        S1_RDATABUS[2]) );
  AOI222_X1 U494 ( .A1(n480), .A2(count_reg[2]), .B1(n481), .B2(wstep_reg[2]), 
        .C1(n482), .C2(raddr_reg[2]), .ZN(n502) );
  AOI22_X1 U495 ( .A1(n483), .A2(rstart_reg[2]), .B1(n484), .B2(wstart_reg[2]), 
        .ZN(n501) );
  OAI211_X1 U496 ( .C1(n296), .C2(n477), .A(n503), .B(n504), .ZN(
        S1_RDATABUS[29]) );
  AOI222_X1 U497 ( .A1(n480), .A2(count_reg[29]), .B1(n481), .B2(wstep_reg[29]), .C1(n482), .C2(raddr_reg[29]), .ZN(n504) );
  AOI22_X1 U498 ( .A1(n483), .A2(rstart_reg[29]), .B1(n484), .B2(
        wstart_reg[29]), .ZN(n503) );
  OAI211_X1 U499 ( .C1(n295), .C2(n477), .A(n505), .B(n506), .ZN(
        S1_RDATABUS[28]) );
  AOI222_X1 U500 ( .A1(n480), .A2(count_reg[28]), .B1(n481), .B2(wstep_reg[28]), .C1(n482), .C2(raddr_reg[28]), .ZN(n506) );
  AOI22_X1 U501 ( .A1(n483), .A2(rstart_reg[28]), .B1(n484), .B2(
        wstart_reg[28]), .ZN(n505) );
  OAI211_X1 U502 ( .C1(n294), .C2(n477), .A(n507), .B(n508), .ZN(
        S1_RDATABUS[27]) );
  AOI222_X1 U503 ( .A1(n480), .A2(count_reg[27]), .B1(n481), .B2(wstep_reg[27]), .C1(n482), .C2(raddr_reg[27]), .ZN(n508) );
  AOI22_X1 U504 ( .A1(n483), .A2(rstart_reg[27]), .B1(n484), .B2(
        wstart_reg[27]), .ZN(n507) );
  OAI211_X1 U505 ( .C1(n293), .C2(n477), .A(n509), .B(n510), .ZN(
        S1_RDATABUS[26]) );
  AOI222_X1 U506 ( .A1(n480), .A2(count_reg[26]), .B1(n481), .B2(wstep_reg[26]), .C1(n482), .C2(raddr_reg[26]), .ZN(n510) );
  AOI22_X1 U507 ( .A1(n483), .A2(rstart_reg[26]), .B1(n484), .B2(
        wstart_reg[26]), .ZN(n509) );
  OAI211_X1 U508 ( .C1(n292), .C2(n477), .A(n511), .B(n512), .ZN(
        S1_RDATABUS[25]) );
  AOI222_X1 U509 ( .A1(n480), .A2(count_reg[25]), .B1(n481), .B2(wstep_reg[25]), .C1(n482), .C2(raddr_reg[25]), .ZN(n512) );
  AOI22_X1 U510 ( .A1(n483), .A2(rstart_reg[25]), .B1(n484), .B2(
        wstart_reg[25]), .ZN(n511) );
  OAI211_X1 U511 ( .C1(n291), .C2(n477), .A(n513), .B(n514), .ZN(
        S1_RDATABUS[24]) );
  AOI222_X1 U512 ( .A1(n480), .A2(count_reg[24]), .B1(n481), .B2(wstep_reg[24]), .C1(n482), .C2(raddr_reg[24]), .ZN(n514) );
  AOI22_X1 U513 ( .A1(n483), .A2(rstart_reg[24]), .B1(n484), .B2(
        wstart_reg[24]), .ZN(n513) );
  OAI211_X1 U514 ( .C1(n290), .C2(n477), .A(n515), .B(n516), .ZN(
        S1_RDATABUS[23]) );
  AOI222_X1 U515 ( .A1(n480), .A2(count_reg[23]), .B1(n481), .B2(wstep_reg[23]), .C1(n482), .C2(raddr_reg[23]), .ZN(n516) );
  AOI22_X1 U516 ( .A1(n483), .A2(rstart_reg[23]), .B1(n484), .B2(
        wstart_reg[23]), .ZN(n515) );
  OAI211_X1 U517 ( .C1(n289), .C2(n477), .A(n517), .B(n518), .ZN(
        S1_RDATABUS[22]) );
  AOI222_X1 U518 ( .A1(n480), .A2(count_reg[22]), .B1(n481), .B2(wstep_reg[22]), .C1(n482), .C2(raddr_reg[22]), .ZN(n518) );
  AOI22_X1 U519 ( .A1(n483), .A2(rstart_reg[22]), .B1(n484), .B2(
        wstart_reg[22]), .ZN(n517) );
  OAI211_X1 U520 ( .C1(n288), .C2(n477), .A(n519), .B(n520), .ZN(
        S1_RDATABUS[21]) );
  AOI222_X1 U521 ( .A1(n480), .A2(count_reg[21]), .B1(n481), .B2(wstep_reg[21]), .C1(n482), .C2(raddr_reg[21]), .ZN(n520) );
  AOI22_X1 U522 ( .A1(n483), .A2(rstart_reg[21]), .B1(n484), .B2(
        wstart_reg[21]), .ZN(n519) );
  OAI211_X1 U523 ( .C1(n287), .C2(n477), .A(n521), .B(n522), .ZN(
        S1_RDATABUS[20]) );
  AOI222_X1 U524 ( .A1(n480), .A2(count_reg[20]), .B1(n481), .B2(wstep_reg[20]), .C1(n482), .C2(raddr_reg[20]), .ZN(n522) );
  AOI22_X1 U525 ( .A1(n483), .A2(rstart_reg[20]), .B1(n484), .B2(
        wstart_reg[20]), .ZN(n521) );
  OAI211_X1 U526 ( .C1(n268), .C2(n477), .A(n523), .B(n524), .ZN(
        S1_RDATABUS[1]) );
  AOI222_X1 U527 ( .A1(n480), .A2(count_reg[1]), .B1(n481), .B2(wstep_reg[1]), 
        .C1(n482), .C2(raddr_reg[1]), .ZN(n524) );
  AOI22_X1 U528 ( .A1(n483), .A2(rstart_reg[1]), .B1(n484), .B2(wstart_reg[1]), 
        .ZN(n523) );
  OAI211_X1 U529 ( .C1(n286), .C2(n477), .A(n525), .B(n526), .ZN(
        S1_RDATABUS[19]) );
  AOI222_X1 U530 ( .A1(n480), .A2(count_reg[19]), .B1(n481), .B2(wstep_reg[19]), .C1(n482), .C2(raddr_reg[19]), .ZN(n526) );
  AOI22_X1 U531 ( .A1(n483), .A2(rstart_reg[19]), .B1(n484), .B2(
        wstart_reg[19]), .ZN(n525) );
  OAI211_X1 U532 ( .C1(n285), .C2(n477), .A(n527), .B(n528), .ZN(
        S1_RDATABUS[18]) );
  AOI222_X1 U533 ( .A1(n480), .A2(count_reg[18]), .B1(n481), .B2(wstep_reg[18]), .C1(n482), .C2(raddr_reg[18]), .ZN(n528) );
  AOI22_X1 U534 ( .A1(n483), .A2(rstart_reg[18]), .B1(n484), .B2(
        wstart_reg[18]), .ZN(n527) );
  OAI211_X1 U535 ( .C1(n284), .C2(n477), .A(n529), .B(n530), .ZN(
        S1_RDATABUS[17]) );
  AOI222_X1 U536 ( .A1(n480), .A2(count_reg[17]), .B1(n481), .B2(wstep_reg[17]), .C1(n482), .C2(raddr_reg[17]), .ZN(n530) );
  AOI22_X1 U537 ( .A1(n483), .A2(rstart_reg[17]), .B1(n484), .B2(
        wstart_reg[17]), .ZN(n529) );
  OAI211_X1 U538 ( .C1(n283), .C2(n477), .A(n531), .B(n532), .ZN(
        S1_RDATABUS[16]) );
  AOI222_X1 U539 ( .A1(n480), .A2(count_reg[16]), .B1(n481), .B2(wstep_reg[16]), .C1(n482), .C2(raddr_reg[16]), .ZN(n532) );
  AOI22_X1 U540 ( .A1(n483), .A2(rstart_reg[16]), .B1(n484), .B2(
        wstart_reg[16]), .ZN(n531) );
  OAI211_X1 U541 ( .C1(n282), .C2(n477), .A(n533), .B(n534), .ZN(
        S1_RDATABUS[15]) );
  AOI222_X1 U542 ( .A1(n480), .A2(count_reg[15]), .B1(n481), .B2(wstep_reg[15]), .C1(n482), .C2(raddr_reg[15]), .ZN(n534) );
  AOI22_X1 U543 ( .A1(n483), .A2(rstart_reg[15]), .B1(n484), .B2(
        wstart_reg[15]), .ZN(n533) );
  OAI211_X1 U544 ( .C1(n281), .C2(n477), .A(n535), .B(n536), .ZN(
        S1_RDATABUS[14]) );
  AOI222_X1 U545 ( .A1(n480), .A2(count_reg[14]), .B1(n481), .B2(wstep_reg[14]), .C1(n482), .C2(raddr_reg[14]), .ZN(n536) );
  AOI22_X1 U546 ( .A1(n483), .A2(rstart_reg[14]), .B1(n484), .B2(
        wstart_reg[14]), .ZN(n535) );
  OAI211_X1 U547 ( .C1(n280), .C2(n477), .A(n537), .B(n538), .ZN(
        S1_RDATABUS[13]) );
  AOI222_X1 U548 ( .A1(n480), .A2(count_reg[13]), .B1(n481), .B2(wstep_reg[13]), .C1(n482), .C2(raddr_reg[13]), .ZN(n538) );
  AOI22_X1 U549 ( .A1(n483), .A2(rstart_reg[13]), .B1(n484), .B2(
        wstart_reg[13]), .ZN(n537) );
  OAI211_X1 U550 ( .C1(n279), .C2(n477), .A(n539), .B(n540), .ZN(
        S1_RDATABUS[12]) );
  AOI222_X1 U551 ( .A1(n480), .A2(count_reg[12]), .B1(n481), .B2(wstep_reg[12]), .C1(n482), .C2(raddr_reg[12]), .ZN(n540) );
  AOI22_X1 U552 ( .A1(n483), .A2(rstart_reg[12]), .B1(n484), .B2(
        wstart_reg[12]), .ZN(n539) );
  OAI211_X1 U553 ( .C1(n278), .C2(n477), .A(n541), .B(n542), .ZN(
        S1_RDATABUS[11]) );
  AOI222_X1 U554 ( .A1(n480), .A2(count_reg[11]), .B1(n481), .B2(wstep_reg[11]), .C1(n482), .C2(raddr_reg[11]), .ZN(n542) );
  AOI22_X1 U555 ( .A1(n483), .A2(rstart_reg[11]), .B1(n484), .B2(
        wstart_reg[11]), .ZN(n541) );
  OAI211_X1 U556 ( .C1(n277), .C2(n477), .A(n543), .B(n544), .ZN(
        S1_RDATABUS[10]) );
  AOI222_X1 U557 ( .A1(n480), .A2(count_reg[10]), .B1(n481), .B2(wstep_reg[10]), .C1(n482), .C2(raddr_reg[10]), .ZN(n544) );
  AOI22_X1 U558 ( .A1(n483), .A2(rstart_reg[10]), .B1(n484), .B2(
        wstart_reg[10]), .ZN(n543) );
  OAI211_X1 U559 ( .C1(n266), .C2(n477), .A(n545), .B(n546), .ZN(
        S1_RDATABUS[0]) );
  AOI222_X1 U560 ( .A1(n480), .A2(count_reg[0]), .B1(n481), .B2(wstep_reg[0]), 
        .C1(n482), .C2(raddr_reg[0]), .ZN(n546) );
  NAND2_X1 U564 ( .A1(n547), .A2(n19), .ZN(n548) );
  NOR3_X1 U565 ( .A1(ck_S1_ADDRBUS[1]), .A2(ck_S1_ADDRBUS[2]), .A3(
        ck_S1_ADDRBUS[0]), .ZN(n547) );
  AOI22_X1 U566 ( .A1(n483), .A2(rstart_reg[0]), .B1(n484), .B2(wstart_reg[0]), 
        .ZN(n545) );
  NOR2_X1 U570 ( .A1(n17), .A2(ck_S1_ADDRBUS[3]), .ZN(n549) );
  NAND2_X1 U571 ( .A1(n550), .A2(n551), .ZN(N724) );
  NOR4_X1 U572 ( .A1(n552), .A2(n553), .A3(n554), .A4(n555), .ZN(n551) );
  NAND4_X1 U573 ( .A1(count_reg[15]), .A2(count_reg[14]), .A3(count_reg[13]), 
        .A4(count_reg[12]), .ZN(n555) );
  NAND4_X1 U574 ( .A1(count_reg[11]), .A2(count_reg[10]), .A3(count_reg[9]), 
        .A4(count_reg[8]), .ZN(n554) );
  NAND4_X1 U575 ( .A1(count_reg[7]), .A2(count_reg[6]), .A3(count_reg[5]), 
        .A4(count_reg[4]), .ZN(n553) );
  NAND4_X1 U576 ( .A1(count_reg[3]), .A2(count_reg[2]), .A3(count_reg[1]), 
        .A4(count_reg[0]), .ZN(n552) );
  NOR4_X1 U577 ( .A1(n556), .A2(n557), .A3(n558), .A4(n559), .ZN(n550) );
  NAND4_X1 U578 ( .A1(count_reg[31]), .A2(count_reg[30]), .A3(count_reg[29]), 
        .A4(count_reg[28]), .ZN(n559) );
  NAND4_X1 U579 ( .A1(count_reg[27]), .A2(count_reg[26]), .A3(count_reg[25]), 
        .A4(count_reg[24]), .ZN(n558) );
  NAND4_X1 U580 ( .A1(count_reg[23]), .A2(count_reg[22]), .A3(count_reg[21]), 
        .A4(count_reg[20]), .ZN(n557) );
  NAND4_X1 U581 ( .A1(count_reg[19]), .A2(count_reg[18]), .A3(count_reg[17]), 
        .A4(count_reg[16]), .ZN(n556) );
  AND2_X1 U582 ( .A1(n560), .A2(reset), .ZN(N278) );
  OAI221_X1 U583 ( .B1(n156), .B2(M1_NREADY), .C1(n161), .C2(n473), .A(n155), 
        .ZN(n560) );
  NOR2_X1 U584 ( .A1(n561), .A2(n471), .ZN(N277) );
  INV_X1 U585 ( .A(reset), .ZN(n471) );
  NOR3_X1 U586 ( .A1(n562), .A2(n472), .A3(n563), .ZN(n561) );
  AOI21_X1 U587 ( .B1(n156), .B2(n473), .A(n161), .ZN(n563) );
  INV_X1 U588 ( .A(M1_NREADY), .ZN(n161) );
  NOR2_X1 U589 ( .A1(n155), .A2(M1_NREADY), .ZN(n472) );
  OR2_X1 U590 ( .A1(n564), .A2(DMA_State[0]), .ZN(n155) );
  INV_X1 U591 ( .A(n565), .ZN(n562) );
  AOI22_X1 U592 ( .A1(N34), .A2(n152), .B1(n160), .B2(M1_MW), .ZN(n565) );
  NAND2_X1 U593 ( .A1(n566), .A2(n567), .ZN(n160) );
  NOR4_X1 U594 ( .A1(n568), .A2(n569), .A3(n570), .A4(n571), .ZN(n567) );
  NAND4_X1 U595 ( .A1(n451), .A2(n453), .A3(n455), .A4(n457), .ZN(n571) );
  NAND4_X1 U596 ( .A1(n459), .A2(n461), .A3(n407), .A4(n463), .ZN(n570) );
  NAND4_X1 U597 ( .A1(n465), .A2(n409), .A3(n411), .A4(n413), .ZN(n569) );
  NAND4_X1 U598 ( .A1(n415), .A2(n417), .A3(n419), .A4(n421), .ZN(n568) );
  NOR4_X1 U599 ( .A1(n572), .A2(n573), .A3(n574), .A4(n575), .ZN(n566) );
  NAND4_X1 U600 ( .A1(count_reg[0]), .A2(n423), .A3(n425), .A4(n427), .ZN(n575) );
  NAND4_X1 U601 ( .A1(n429), .A2(n431), .A3(n433), .A4(n435), .ZN(n574) );
  NAND4_X1 U602 ( .A1(n437), .A2(n439), .A3(n441), .A4(n404), .ZN(n573) );
  NAND4_X1 U603 ( .A1(n443), .A2(n445), .A3(n447), .A4(n449), .ZN(n572) );
  NOR2_X1 U604 ( .A1(DMA_State[0]), .A2(DMA_State[1]), .ZN(n152) );
  NOR2_X1 U605 ( .A1(n473), .A2(n381), .ZN(M1_WDATABUS[9]) );
  NOR2_X1 U606 ( .A1(n473), .A2(n383), .ZN(M1_WDATABUS[8]) );
  NOR2_X1 U607 ( .A1(n473), .A2(n385), .ZN(M1_WDATABUS[7]) );
  NOR2_X1 U608 ( .A1(n473), .A2(n387), .ZN(M1_WDATABUS[6]) );
  NOR2_X1 U609 ( .A1(n473), .A2(n389), .ZN(M1_WDATABUS[5]) );
  NOR2_X1 U610 ( .A1(n473), .A2(n391), .ZN(M1_WDATABUS[4]) );
  NOR2_X1 U611 ( .A1(n473), .A2(n393), .ZN(M1_WDATABUS[3]) );
  NOR2_X1 U612 ( .A1(n473), .A2(n336), .ZN(M1_WDATABUS[31]) );
  NOR2_X1 U613 ( .A1(n473), .A2(n339), .ZN(M1_WDATABUS[30]) );
  NOR2_X1 U614 ( .A1(n473), .A2(n395), .ZN(M1_WDATABUS[2]) );
  NOR2_X1 U615 ( .A1(n473), .A2(n341), .ZN(M1_WDATABUS[29]) );
  NOR2_X1 U616 ( .A1(n473), .A2(n343), .ZN(M1_WDATABUS[28]) );
  NOR2_X1 U617 ( .A1(n473), .A2(n345), .ZN(M1_WDATABUS[27]) );
  NOR2_X1 U618 ( .A1(n473), .A2(n347), .ZN(M1_WDATABUS[26]) );
  NOR2_X1 U619 ( .A1(n473), .A2(n349), .ZN(M1_WDATABUS[25]) );
  NOR2_X1 U620 ( .A1(n473), .A2(n351), .ZN(M1_WDATABUS[24]) );
  NOR2_X1 U621 ( .A1(n473), .A2(n353), .ZN(M1_WDATABUS[23]) );
  NOR2_X1 U622 ( .A1(n473), .A2(n355), .ZN(M1_WDATABUS[22]) );
  NOR2_X1 U623 ( .A1(n473), .A2(n357), .ZN(M1_WDATABUS[21]) );
  NOR2_X1 U624 ( .A1(n473), .A2(n359), .ZN(M1_WDATABUS[20]) );
  NOR2_X1 U625 ( .A1(n473), .A2(n397), .ZN(M1_WDATABUS[1]) );
  NOR2_X1 U626 ( .A1(n473), .A2(n361), .ZN(M1_WDATABUS[19]) );
  NOR2_X1 U627 ( .A1(n473), .A2(n363), .ZN(M1_WDATABUS[18]) );
  NOR2_X1 U628 ( .A1(n473), .A2(n365), .ZN(M1_WDATABUS[17]) );
  NOR2_X1 U629 ( .A1(n473), .A2(n367), .ZN(M1_WDATABUS[16]) );
  NOR2_X1 U630 ( .A1(n473), .A2(n369), .ZN(M1_WDATABUS[15]) );
  NOR2_X1 U631 ( .A1(n473), .A2(n371), .ZN(M1_WDATABUS[14]) );
  NOR2_X1 U632 ( .A1(n473), .A2(n373), .ZN(M1_WDATABUS[13]) );
  NOR2_X1 U633 ( .A1(n473), .A2(n375), .ZN(M1_WDATABUS[12]) );
  NOR2_X1 U634 ( .A1(n473), .A2(n377), .ZN(M1_WDATABUS[11]) );
  NOR2_X1 U635 ( .A1(n473), .A2(n379), .ZN(M1_WDATABUS[10]) );
  NOR2_X1 U636 ( .A1(n473), .A2(n399), .ZN(M1_WDATABUS[0]) );
  OAI22_X1 U639 ( .A1(n68), .A2(n156), .B1(n473), .B2(n132), .ZN(M1_ADDRBUS[9]) );
  OAI22_X1 U640 ( .A1(n70), .A2(n156), .B1(n473), .B2(n134), .ZN(M1_ADDRBUS[8]) );
  OAI22_X1 U641 ( .A1(n72), .A2(n156), .B1(n473), .B2(n136), .ZN(M1_ADDRBUS[7]) );
  OAI22_X1 U642 ( .A1(n74), .A2(n156), .B1(n473), .B2(n138), .ZN(M1_ADDRBUS[6]) );
  OAI22_X1 U643 ( .A1(n76), .A2(n156), .B1(n473), .B2(n140), .ZN(M1_ADDRBUS[5]) );
  OAI22_X1 U644 ( .A1(n78), .A2(n156), .B1(n473), .B2(n142), .ZN(M1_ADDRBUS[4]) );
  OAI22_X1 U645 ( .A1(n80), .A2(n156), .B1(n473), .B2(n144), .ZN(M1_ADDRBUS[3]) );
  OAI22_X1 U646 ( .A1(n22), .A2(n156), .B1(n473), .B2(n88), .ZN(M1_ADDRBUS[31]) );
  OAI22_X1 U647 ( .A1(n26), .A2(n156), .B1(n473), .B2(n90), .ZN(M1_ADDRBUS[30]) );
  OAI22_X1 U648 ( .A1(n82), .A2(n156), .B1(n473), .B2(n146), .ZN(M1_ADDRBUS[2]) );
  OAI22_X1 U649 ( .A1(n28), .A2(n156), .B1(n473), .B2(n92), .ZN(M1_ADDRBUS[29]) );
  OAI22_X1 U650 ( .A1(n30), .A2(n156), .B1(n473), .B2(n94), .ZN(M1_ADDRBUS[28]) );
  OAI22_X1 U651 ( .A1(n32), .A2(n156), .B1(n473), .B2(n96), .ZN(M1_ADDRBUS[27]) );
  OAI22_X1 U652 ( .A1(n34), .A2(n156), .B1(n473), .B2(n98), .ZN(M1_ADDRBUS[26]) );
  OAI22_X1 U653 ( .A1(n36), .A2(n156), .B1(n473), .B2(n100), .ZN(
        M1_ADDRBUS[25]) );
  OAI22_X1 U654 ( .A1(n38), .A2(n156), .B1(n473), .B2(n102), .ZN(
        M1_ADDRBUS[24]) );
  OAI22_X1 U655 ( .A1(n40), .A2(n156), .B1(n473), .B2(n104), .ZN(
        M1_ADDRBUS[23]) );
  OAI22_X1 U656 ( .A1(n42), .A2(n156), .B1(n473), .B2(n106), .ZN(
        M1_ADDRBUS[22]) );
  OAI22_X1 U657 ( .A1(n44), .A2(n156), .B1(n473), .B2(n108), .ZN(
        M1_ADDRBUS[21]) );
  OAI22_X1 U658 ( .A1(n46), .A2(n156), .B1(n473), .B2(n110), .ZN(
        M1_ADDRBUS[20]) );
  OAI22_X1 U659 ( .A1(n84), .A2(n156), .B1(n473), .B2(n148), .ZN(M1_ADDRBUS[1]) );
  OAI22_X1 U660 ( .A1(n48), .A2(n156), .B1(n473), .B2(n112), .ZN(
        M1_ADDRBUS[19]) );
  OAI22_X1 U661 ( .A1(n50), .A2(n156), .B1(n473), .B2(n114), .ZN(
        M1_ADDRBUS[18]) );
  OAI22_X1 U662 ( .A1(n52), .A2(n156), .B1(n473), .B2(n116), .ZN(
        M1_ADDRBUS[17]) );
  OAI22_X1 U663 ( .A1(n54), .A2(n156), .B1(n473), .B2(n118), .ZN(
        M1_ADDRBUS[16]) );
  OAI22_X1 U664 ( .A1(n56), .A2(n156), .B1(n473), .B2(n120), .ZN(
        M1_ADDRBUS[15]) );
  OAI22_X1 U665 ( .A1(n58), .A2(n156), .B1(n473), .B2(n122), .ZN(
        M1_ADDRBUS[14]) );
  OAI22_X1 U666 ( .A1(n60), .A2(n156), .B1(n473), .B2(n124), .ZN(
        M1_ADDRBUS[13]) );
  OAI22_X1 U667 ( .A1(n62), .A2(n156), .B1(n473), .B2(n126), .ZN(
        M1_ADDRBUS[12]) );
  OAI22_X1 U668 ( .A1(n64), .A2(n156), .B1(n473), .B2(n128), .ZN(
        M1_ADDRBUS[11]) );
  OAI22_X1 U669 ( .A1(n66), .A2(n156), .B1(n473), .B2(n130), .ZN(
        M1_ADDRBUS[10]) );
  OAI22_X1 U670 ( .A1(n86), .A2(n156), .B1(n473), .B2(n150), .ZN(M1_ADDRBUS[0]) );
  DMA_1_32_32_DW01_sub_0 sub_117_S2_aco ( .A(count_reg), .B({1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, N724}), .CI(1'b0), .DIFF({N136, N135, N134, 
        N133, N132, N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, 
        N121, N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, 
        N109, N108, N107, N106, N105}) );
  DMA_1_32_32_DW01_add_0 add_116 ( .A(waddr_reg), .B(wstep_reg), .CI(1'b0), 
        .SUM({N103, N102, N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, 
        N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72}) );
  DMA_1_32_32_DW01_add_1 add_115 ( .A(raddr_reg), .B(rstep_reg), .CI(1'b0), 
        .SUM({N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, 
        N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, 
        N44, N43, N42, N41, N40}) );
  DFF_X1 \DMA_State_reg[0]  ( .D(N277), .CK(CLK), .Q(DMA_State[0]), .QN(n838)
         );
  AND2_X2 U9 ( .A1(n547), .A2(n548), .ZN(n482) );
  AND2_X2 U10 ( .A1(n469), .A2(n470), .ZN(n403) );
  AND3_X2 U12 ( .A1(ck_S1_ADDRBUS[1]), .A2(ck_S1_ADDRBUS[0]), .A3(n549), .ZN(
        n481) );
  AND3_X2 U76 ( .A1(ck_S1_ADDRBUS[1]), .A2(n12), .A3(n549), .ZN(n484) );
  NAND3_X2 U140 ( .A1(ck_S1_ADDRBUS[0]), .A2(n15), .A3(n549), .ZN(n477) );
  INV_X2 U143 ( .A(n548), .ZN(n480) );
  NAND2_X2 U180 ( .A1(reset), .A2(n301), .ZN(n302) );
  NAND2_X2 U181 ( .A1(reset), .A2(n265), .ZN(n267) );
  NAND2_X2 U215 ( .A1(reset), .A2(n231), .ZN(n232) );
  INV_X1 U216 ( .A(n406), .ZN(n4) );
  INV_X2 U250 ( .A(n4), .ZN(n5) );
  INV_X1 U251 ( .A(n402), .ZN(n6) );
  INV_X2 U285 ( .A(n6), .ZN(n7) );
  NAND2_X2 U286 ( .A1(reset), .A2(n335), .ZN(n337) );
  NAND2_X2 U354 ( .A1(reset), .A2(n162), .ZN(n164) );
  AND3_X2 U355 ( .A1(n12), .A2(n15), .A3(n549), .ZN(n483) );
  NAND2_X2 U452 ( .A1(reset), .A2(n334), .ZN(n301) );
  NAND2_X2 U561 ( .A1(reset), .A2(n264), .ZN(n231) );
  INV_X2 U562 ( .A(n401), .ZN(n335) );
  NAND2_X2 U563 ( .A1(reset), .A2(n299), .ZN(n265) );
  NAND2_X2 U567 ( .A1(reset), .A2(n228), .ZN(n162) );
  AND2_X4 U568 ( .A1(n152), .A2(n153), .ZN(n25) );
  INV_X1 U569 ( .A(n24), .ZN(n8) );
  INV_X4 U637 ( .A(n8), .ZN(n9) );
  NAND2_X4 U638 ( .A1(reset), .A2(n154), .ZN(n21) );
  OR2_X1 U671 ( .A1(n21), .A2(n88), .ZN(n10) );
  NAND2_X1 U672 ( .A1(n10), .A2(n89), .ZN(n612) );
  OR2_X1 U673 ( .A1(n21), .A2(n22), .ZN(n836) );
  NAND2_X1 U674 ( .A1(n836), .A2(n23), .ZN(n580) );
  NOR2_X4 U675 ( .A1(n838), .A2(DMA_State[1]), .ZN(M1_MR) );
  INV_X4 U676 ( .A(M1_MR), .ZN(n156) );
  AND2_X2 U677 ( .A1(DMA_State[1]), .A2(DMA_State[0]), .ZN(M1_MW) );
  INV_X8 U678 ( .A(M1_MW), .ZN(n473) );
  NOR4_X1 U679 ( .A1(count_reg[27]), .A2(count_reg[26]), .A3(count_reg[25]), 
        .A4(count_reg[24]), .ZN(n843) );
  NOR4_X1 U680 ( .A1(count_reg[30]), .A2(count_reg[2]), .A3(count_reg[29]), 
        .A4(count_reg[28]), .ZN(n842) );
  NOR4_X1 U681 ( .A1(count_reg[5]), .A2(count_reg[4]), .A3(count_reg[3]), .A4(
        count_reg[31]), .ZN(n841) );
  NOR4_X1 U682 ( .A1(count_reg[9]), .A2(count_reg[8]), .A3(count_reg[7]), .A4(
        count_reg[6]), .ZN(n840) );
  NAND4_X1 U683 ( .A1(n843), .A2(n842), .A3(n841), .A4(n840), .ZN(n849) );
  NOR4_X1 U684 ( .A1(count_reg[12]), .A2(count_reg[11]), .A3(count_reg[10]), 
        .A4(count_reg[0]), .ZN(n847) );
  NOR4_X1 U685 ( .A1(count_reg[16]), .A2(count_reg[15]), .A3(count_reg[14]), 
        .A4(count_reg[13]), .ZN(n846) );
  NOR4_X1 U686 ( .A1(count_reg[1]), .A2(count_reg[19]), .A3(count_reg[18]), 
        .A4(count_reg[17]), .ZN(n845) );
  NOR4_X1 U687 ( .A1(count_reg[23]), .A2(count_reg[22]), .A3(count_reg[21]), 
        .A4(count_reg[20]), .ZN(n844) );
  NAND4_X1 U688 ( .A1(n847), .A2(n846), .A3(n845), .A4(n844), .ZN(n848) );
  OR2_X1 U689 ( .A1(n849), .A2(n848), .ZN(N34) );
endmodule


module counter_32_4_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \B_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62;
  wire   [32:0] carry;

  NAND2_X2 U1 ( .A1(n1), .A2(n2), .ZN(carry[11]) );
  XNOR2_X2 U2 ( .A(A[10]), .B(carry[10]), .ZN(DIFF[10]) );
  INV_X2 U3 ( .A(A[10]), .ZN(n1) );
  INV_X2 U4 ( .A(carry[10]), .ZN(n2) );
  NAND2_X2 U5 ( .A1(n3), .A2(n4), .ZN(carry[12]) );
  XNOR2_X2 U6 ( .A(A[11]), .B(carry[11]), .ZN(DIFF[11]) );
  INV_X2 U7 ( .A(A[11]), .ZN(n3) );
  INV_X2 U8 ( .A(carry[11]), .ZN(n4) );
  NAND2_X2 U9 ( .A1(n5), .A2(n6), .ZN(carry[13]) );
  XNOR2_X2 U10 ( .A(A[12]), .B(carry[12]), .ZN(DIFF[12]) );
  INV_X2 U11 ( .A(A[12]), .ZN(n5) );
  INV_X2 U12 ( .A(carry[12]), .ZN(n6) );
  NAND2_X2 U13 ( .A1(n7), .A2(n8), .ZN(carry[14]) );
  XNOR2_X2 U14 ( .A(A[13]), .B(carry[13]), .ZN(DIFF[13]) );
  INV_X2 U15 ( .A(A[13]), .ZN(n7) );
  INV_X2 U16 ( .A(carry[13]), .ZN(n8) );
  NAND2_X2 U17 ( .A1(n9), .A2(n10), .ZN(carry[15]) );
  XNOR2_X2 U18 ( .A(A[14]), .B(carry[14]), .ZN(DIFF[14]) );
  INV_X2 U19 ( .A(A[14]), .ZN(n9) );
  INV_X2 U20 ( .A(carry[14]), .ZN(n10) );
  NAND2_X2 U21 ( .A1(n11), .A2(n12), .ZN(carry[16]) );
  XNOR2_X2 U22 ( .A(A[15]), .B(carry[15]), .ZN(DIFF[15]) );
  INV_X2 U23 ( .A(A[15]), .ZN(n11) );
  INV_X2 U24 ( .A(carry[15]), .ZN(n12) );
  NAND2_X2 U25 ( .A1(n13), .A2(n14), .ZN(carry[17]) );
  XNOR2_X2 U26 ( .A(A[16]), .B(carry[16]), .ZN(DIFF[16]) );
  INV_X2 U27 ( .A(A[16]), .ZN(n13) );
  INV_X2 U28 ( .A(carry[16]), .ZN(n14) );
  NAND2_X2 U29 ( .A1(n15), .A2(n16), .ZN(carry[18]) );
  XNOR2_X2 U30 ( .A(A[17]), .B(carry[17]), .ZN(DIFF[17]) );
  INV_X2 U31 ( .A(A[17]), .ZN(n15) );
  INV_X2 U32 ( .A(carry[17]), .ZN(n16) );
  NAND2_X2 U33 ( .A1(n17), .A2(n18), .ZN(carry[19]) );
  XNOR2_X2 U34 ( .A(A[18]), .B(carry[18]), .ZN(DIFF[18]) );
  INV_X2 U35 ( .A(A[18]), .ZN(n17) );
  INV_X2 U36 ( .A(carry[18]), .ZN(n18) );
  NAND2_X2 U37 ( .A1(n19), .A2(n20), .ZN(carry[20]) );
  XNOR2_X2 U38 ( .A(A[19]), .B(carry[19]), .ZN(DIFF[19]) );
  INV_X2 U39 ( .A(A[19]), .ZN(n19) );
  INV_X2 U40 ( .A(carry[19]), .ZN(n20) );
  NAND2_X2 U41 ( .A1(n21), .A2(n22), .ZN(carry[2]) );
  XNOR2_X2 U42 ( .A(A[1]), .B(carry[1]), .ZN(DIFF[1]) );
  INV_X2 U43 ( .A(A[1]), .ZN(n21) );
  INV_X2 U44 ( .A(carry[1]), .ZN(n22) );
  NAND2_X2 U45 ( .A1(n23), .A2(n24), .ZN(carry[21]) );
  XNOR2_X2 U46 ( .A(A[20]), .B(carry[20]), .ZN(DIFF[20]) );
  INV_X2 U47 ( .A(A[20]), .ZN(n23) );
  INV_X2 U48 ( .A(carry[20]), .ZN(n24) );
  NAND2_X2 U49 ( .A1(n25), .A2(n26), .ZN(carry[22]) );
  XNOR2_X2 U50 ( .A(A[21]), .B(carry[21]), .ZN(DIFF[21]) );
  INV_X2 U51 ( .A(A[21]), .ZN(n25) );
  INV_X2 U52 ( .A(carry[21]), .ZN(n26) );
  NAND2_X2 U53 ( .A1(n27), .A2(n28), .ZN(carry[23]) );
  XNOR2_X2 U54 ( .A(A[22]), .B(carry[22]), .ZN(DIFF[22]) );
  INV_X2 U55 ( .A(A[22]), .ZN(n27) );
  INV_X2 U56 ( .A(carry[22]), .ZN(n28) );
  NAND2_X2 U57 ( .A1(n29), .A2(n30), .ZN(carry[24]) );
  XNOR2_X2 U58 ( .A(A[23]), .B(carry[23]), .ZN(DIFF[23]) );
  INV_X2 U59 ( .A(A[23]), .ZN(n29) );
  INV_X2 U60 ( .A(carry[23]), .ZN(n30) );
  NAND2_X2 U61 ( .A1(n31), .A2(n32), .ZN(carry[25]) );
  XNOR2_X2 U62 ( .A(A[24]), .B(carry[24]), .ZN(DIFF[24]) );
  INV_X2 U63 ( .A(A[24]), .ZN(n31) );
  INV_X2 U64 ( .A(carry[24]), .ZN(n32) );
  NAND2_X2 U65 ( .A1(n33), .A2(n34), .ZN(carry[26]) );
  XNOR2_X2 U66 ( .A(A[25]), .B(carry[25]), .ZN(DIFF[25]) );
  INV_X2 U67 ( .A(A[25]), .ZN(n33) );
  INV_X2 U68 ( .A(carry[25]), .ZN(n34) );
  NAND2_X2 U69 ( .A1(n35), .A2(n36), .ZN(carry[27]) );
  XNOR2_X2 U70 ( .A(A[26]), .B(carry[26]), .ZN(DIFF[26]) );
  INV_X2 U71 ( .A(A[26]), .ZN(n35) );
  INV_X2 U72 ( .A(carry[26]), .ZN(n36) );
  NAND2_X2 U73 ( .A1(n37), .A2(n38), .ZN(carry[28]) );
  XNOR2_X2 U74 ( .A(A[27]), .B(carry[27]), .ZN(DIFF[27]) );
  INV_X2 U75 ( .A(A[27]), .ZN(n37) );
  INV_X2 U76 ( .A(carry[27]), .ZN(n38) );
  NAND2_X2 U77 ( .A1(n39), .A2(n40), .ZN(carry[29]) );
  XNOR2_X2 U78 ( .A(A[28]), .B(carry[28]), .ZN(DIFF[28]) );
  INV_X2 U79 ( .A(A[28]), .ZN(n39) );
  INV_X2 U80 ( .A(carry[28]), .ZN(n40) );
  NAND2_X2 U81 ( .A1(n41), .A2(n42), .ZN(carry[30]) );
  XNOR2_X2 U82 ( .A(A[29]), .B(carry[29]), .ZN(DIFF[29]) );
  INV_X2 U83 ( .A(A[29]), .ZN(n41) );
  INV_X2 U84 ( .A(carry[29]), .ZN(n42) );
  NAND2_X2 U85 ( .A1(n43), .A2(n44), .ZN(carry[3]) );
  XNOR2_X2 U86 ( .A(A[2]), .B(carry[2]), .ZN(DIFF[2]) );
  INV_X2 U87 ( .A(A[2]), .ZN(n43) );
  INV_X2 U88 ( .A(carry[2]), .ZN(n44) );
  NAND2_X2 U89 ( .A1(n45), .A2(n46), .ZN(carry[31]) );
  XNOR2_X2 U90 ( .A(A[30]), .B(carry[30]), .ZN(DIFF[30]) );
  INV_X2 U91 ( .A(A[30]), .ZN(n45) );
  INV_X2 U92 ( .A(carry[30]), .ZN(n46) );
  XNOR2_X2 U93 ( .A(A[31]), .B(carry[31]), .ZN(DIFF[31]) );
  NAND2_X2 U94 ( .A1(n47), .A2(n48), .ZN(carry[4]) );
  XNOR2_X2 U95 ( .A(A[3]), .B(carry[3]), .ZN(DIFF[3]) );
  INV_X2 U96 ( .A(A[3]), .ZN(n47) );
  INV_X2 U97 ( .A(carry[3]), .ZN(n48) );
  NAND2_X2 U98 ( .A1(n49), .A2(n50), .ZN(carry[5]) );
  XNOR2_X2 U99 ( .A(A[4]), .B(carry[4]), .ZN(DIFF[4]) );
  INV_X2 U100 ( .A(A[4]), .ZN(n49) );
  INV_X2 U101 ( .A(carry[4]), .ZN(n50) );
  NAND2_X2 U102 ( .A1(n51), .A2(n52), .ZN(carry[6]) );
  XNOR2_X2 U103 ( .A(A[5]), .B(carry[5]), .ZN(DIFF[5]) );
  INV_X2 U104 ( .A(A[5]), .ZN(n51) );
  INV_X2 U105 ( .A(carry[5]), .ZN(n52) );
  NAND2_X2 U106 ( .A1(n53), .A2(n54), .ZN(carry[7]) );
  XNOR2_X2 U107 ( .A(A[6]), .B(carry[6]), .ZN(DIFF[6]) );
  INV_X2 U108 ( .A(A[6]), .ZN(n53) );
  INV_X2 U109 ( .A(carry[6]), .ZN(n54) );
  NAND2_X2 U110 ( .A1(n55), .A2(n56), .ZN(carry[8]) );
  XNOR2_X2 U111 ( .A(A[7]), .B(carry[7]), .ZN(DIFF[7]) );
  INV_X2 U112 ( .A(A[7]), .ZN(n55) );
  INV_X2 U113 ( .A(carry[7]), .ZN(n56) );
  NAND2_X2 U114 ( .A1(n57), .A2(n58), .ZN(carry[9]) );
  XNOR2_X2 U115 ( .A(A[8]), .B(carry[8]), .ZN(DIFF[8]) );
  INV_X2 U116 ( .A(A[8]), .ZN(n57) );
  INV_X2 U117 ( .A(carry[8]), .ZN(n58) );
  NAND2_X2 U118 ( .A1(n59), .A2(n60), .ZN(carry[10]) );
  XNOR2_X2 U119 ( .A(A[9]), .B(carry[9]), .ZN(DIFF[9]) );
  INV_X2 U120 ( .A(A[9]), .ZN(n59) );
  INV_X2 U121 ( .A(carry[9]), .ZN(n60) );
  NAND2_X2 U122 ( .A1(n61), .A2(n62), .ZN(carry[1]) );
  XNOR2_X2 U123 ( .A(\B_not[0] ), .B(A[0]), .ZN(DIFF[0]) );
  INV_X2 U124 ( .A(\B_not[0] ), .ZN(n61) );
  INV_X2 U125 ( .A(A[0]), .ZN(n62) );
  INV_X1 U126 ( .A(B[0]), .ZN(\B_not[0] ) );
endmodule


module counter_32_4_1_DW01_inc_0 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HA_X1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  HA_X1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  HA_X1 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  HA_X1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  HA_X1 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  HA_X1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  HA_X1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  HA_X1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  HA_X1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  HA_X1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA_X1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA_X1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA_X1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA_X1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA_X1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[31]), .B(A[31]), .Z(SUM[31]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module counter_32_4_1_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \B_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62;
  wire   [32:0] carry;

  NAND2_X2 U1 ( .A1(n1), .A2(n2), .ZN(carry[11]) );
  XNOR2_X2 U2 ( .A(A[10]), .B(carry[10]), .ZN(DIFF[10]) );
  INV_X2 U3 ( .A(A[10]), .ZN(n1) );
  INV_X2 U4 ( .A(carry[10]), .ZN(n2) );
  NAND2_X2 U5 ( .A1(n3), .A2(n4), .ZN(carry[12]) );
  XNOR2_X2 U6 ( .A(A[11]), .B(carry[11]), .ZN(DIFF[11]) );
  INV_X2 U7 ( .A(A[11]), .ZN(n3) );
  INV_X2 U8 ( .A(carry[11]), .ZN(n4) );
  NAND2_X2 U9 ( .A1(n5), .A2(n6), .ZN(carry[13]) );
  XNOR2_X2 U10 ( .A(A[12]), .B(carry[12]), .ZN(DIFF[12]) );
  INV_X2 U11 ( .A(A[12]), .ZN(n5) );
  INV_X2 U12 ( .A(carry[12]), .ZN(n6) );
  NAND2_X2 U13 ( .A1(n7), .A2(n8), .ZN(carry[14]) );
  XNOR2_X2 U14 ( .A(A[13]), .B(carry[13]), .ZN(DIFF[13]) );
  INV_X2 U15 ( .A(A[13]), .ZN(n7) );
  INV_X2 U16 ( .A(carry[13]), .ZN(n8) );
  NAND2_X2 U17 ( .A1(n9), .A2(n10), .ZN(carry[15]) );
  XNOR2_X2 U18 ( .A(A[14]), .B(carry[14]), .ZN(DIFF[14]) );
  INV_X2 U19 ( .A(A[14]), .ZN(n9) );
  INV_X2 U20 ( .A(carry[14]), .ZN(n10) );
  NAND2_X2 U21 ( .A1(n11), .A2(n12), .ZN(carry[16]) );
  XNOR2_X2 U22 ( .A(A[15]), .B(carry[15]), .ZN(DIFF[15]) );
  INV_X2 U23 ( .A(A[15]), .ZN(n11) );
  INV_X2 U24 ( .A(carry[15]), .ZN(n12) );
  NAND2_X2 U25 ( .A1(n13), .A2(n14), .ZN(carry[17]) );
  XNOR2_X2 U26 ( .A(A[16]), .B(carry[16]), .ZN(DIFF[16]) );
  INV_X2 U27 ( .A(A[16]), .ZN(n13) );
  INV_X2 U28 ( .A(carry[16]), .ZN(n14) );
  NAND2_X2 U29 ( .A1(n15), .A2(n16), .ZN(carry[18]) );
  XNOR2_X2 U30 ( .A(A[17]), .B(carry[17]), .ZN(DIFF[17]) );
  INV_X2 U31 ( .A(A[17]), .ZN(n15) );
  INV_X2 U32 ( .A(carry[17]), .ZN(n16) );
  NAND2_X2 U33 ( .A1(n17), .A2(n18), .ZN(carry[19]) );
  XNOR2_X2 U34 ( .A(A[18]), .B(carry[18]), .ZN(DIFF[18]) );
  INV_X2 U35 ( .A(A[18]), .ZN(n17) );
  INV_X2 U36 ( .A(carry[18]), .ZN(n18) );
  NAND2_X2 U37 ( .A1(n19), .A2(n20), .ZN(carry[20]) );
  XNOR2_X2 U38 ( .A(A[19]), .B(carry[19]), .ZN(DIFF[19]) );
  INV_X2 U39 ( .A(A[19]), .ZN(n19) );
  INV_X2 U40 ( .A(carry[19]), .ZN(n20) );
  NAND2_X2 U41 ( .A1(n21), .A2(n22), .ZN(carry[2]) );
  XNOR2_X2 U42 ( .A(A[1]), .B(carry[1]), .ZN(DIFF[1]) );
  INV_X2 U43 ( .A(A[1]), .ZN(n21) );
  INV_X2 U44 ( .A(carry[1]), .ZN(n22) );
  NAND2_X2 U45 ( .A1(n23), .A2(n24), .ZN(carry[21]) );
  XNOR2_X2 U46 ( .A(A[20]), .B(carry[20]), .ZN(DIFF[20]) );
  INV_X2 U47 ( .A(A[20]), .ZN(n23) );
  INV_X2 U48 ( .A(carry[20]), .ZN(n24) );
  NAND2_X2 U49 ( .A1(n25), .A2(n26), .ZN(carry[22]) );
  XNOR2_X2 U50 ( .A(A[21]), .B(carry[21]), .ZN(DIFF[21]) );
  INV_X2 U51 ( .A(A[21]), .ZN(n25) );
  INV_X2 U52 ( .A(carry[21]), .ZN(n26) );
  NAND2_X2 U53 ( .A1(n27), .A2(n28), .ZN(carry[23]) );
  XNOR2_X2 U54 ( .A(A[22]), .B(carry[22]), .ZN(DIFF[22]) );
  INV_X2 U55 ( .A(A[22]), .ZN(n27) );
  INV_X2 U56 ( .A(carry[22]), .ZN(n28) );
  NAND2_X2 U57 ( .A1(n29), .A2(n30), .ZN(carry[24]) );
  XNOR2_X2 U58 ( .A(A[23]), .B(carry[23]), .ZN(DIFF[23]) );
  INV_X2 U59 ( .A(A[23]), .ZN(n29) );
  INV_X2 U60 ( .A(carry[23]), .ZN(n30) );
  NAND2_X2 U61 ( .A1(n31), .A2(n32), .ZN(carry[25]) );
  XNOR2_X2 U62 ( .A(A[24]), .B(carry[24]), .ZN(DIFF[24]) );
  INV_X2 U63 ( .A(A[24]), .ZN(n31) );
  INV_X2 U64 ( .A(carry[24]), .ZN(n32) );
  NAND2_X2 U65 ( .A1(n33), .A2(n34), .ZN(carry[26]) );
  XNOR2_X2 U66 ( .A(A[25]), .B(carry[25]), .ZN(DIFF[25]) );
  INV_X2 U67 ( .A(A[25]), .ZN(n33) );
  INV_X2 U68 ( .A(carry[25]), .ZN(n34) );
  NAND2_X2 U69 ( .A1(n35), .A2(n36), .ZN(carry[27]) );
  XNOR2_X2 U70 ( .A(A[26]), .B(carry[26]), .ZN(DIFF[26]) );
  INV_X2 U71 ( .A(A[26]), .ZN(n35) );
  INV_X2 U72 ( .A(carry[26]), .ZN(n36) );
  NAND2_X2 U73 ( .A1(n37), .A2(n38), .ZN(carry[28]) );
  XNOR2_X2 U74 ( .A(A[27]), .B(carry[27]), .ZN(DIFF[27]) );
  INV_X2 U75 ( .A(A[27]), .ZN(n37) );
  INV_X2 U76 ( .A(carry[27]), .ZN(n38) );
  NAND2_X2 U77 ( .A1(n39), .A2(n40), .ZN(carry[29]) );
  XNOR2_X2 U78 ( .A(A[28]), .B(carry[28]), .ZN(DIFF[28]) );
  INV_X2 U79 ( .A(A[28]), .ZN(n39) );
  INV_X2 U80 ( .A(carry[28]), .ZN(n40) );
  NAND2_X2 U81 ( .A1(n41), .A2(n42), .ZN(carry[30]) );
  XNOR2_X2 U82 ( .A(A[29]), .B(carry[29]), .ZN(DIFF[29]) );
  INV_X2 U83 ( .A(A[29]), .ZN(n41) );
  INV_X2 U84 ( .A(carry[29]), .ZN(n42) );
  NAND2_X2 U85 ( .A1(n43), .A2(n44), .ZN(carry[3]) );
  XNOR2_X2 U86 ( .A(A[2]), .B(carry[2]), .ZN(DIFF[2]) );
  INV_X2 U87 ( .A(A[2]), .ZN(n43) );
  INV_X2 U88 ( .A(carry[2]), .ZN(n44) );
  NAND2_X2 U89 ( .A1(n45), .A2(n46), .ZN(carry[31]) );
  XNOR2_X2 U90 ( .A(A[30]), .B(carry[30]), .ZN(DIFF[30]) );
  INV_X2 U91 ( .A(A[30]), .ZN(n45) );
  INV_X2 U92 ( .A(carry[30]), .ZN(n46) );
  XNOR2_X2 U93 ( .A(A[31]), .B(carry[31]), .ZN(DIFF[31]) );
  NAND2_X2 U94 ( .A1(n47), .A2(n48), .ZN(carry[4]) );
  XNOR2_X2 U95 ( .A(A[3]), .B(carry[3]), .ZN(DIFF[3]) );
  INV_X2 U96 ( .A(A[3]), .ZN(n47) );
  INV_X2 U97 ( .A(carry[3]), .ZN(n48) );
  NAND2_X2 U98 ( .A1(n49), .A2(n50), .ZN(carry[5]) );
  XNOR2_X2 U99 ( .A(A[4]), .B(carry[4]), .ZN(DIFF[4]) );
  INV_X2 U100 ( .A(A[4]), .ZN(n49) );
  INV_X2 U101 ( .A(carry[4]), .ZN(n50) );
  NAND2_X2 U102 ( .A1(n51), .A2(n52), .ZN(carry[6]) );
  XNOR2_X2 U103 ( .A(A[5]), .B(carry[5]), .ZN(DIFF[5]) );
  INV_X2 U104 ( .A(A[5]), .ZN(n51) );
  INV_X2 U105 ( .A(carry[5]), .ZN(n52) );
  NAND2_X2 U106 ( .A1(n53), .A2(n54), .ZN(carry[7]) );
  XNOR2_X2 U107 ( .A(A[6]), .B(carry[6]), .ZN(DIFF[6]) );
  INV_X2 U108 ( .A(A[6]), .ZN(n53) );
  INV_X2 U109 ( .A(carry[6]), .ZN(n54) );
  NAND2_X2 U110 ( .A1(n55), .A2(n56), .ZN(carry[8]) );
  XNOR2_X2 U111 ( .A(A[7]), .B(carry[7]), .ZN(DIFF[7]) );
  INV_X2 U112 ( .A(A[7]), .ZN(n55) );
  INV_X2 U113 ( .A(carry[7]), .ZN(n56) );
  NAND2_X2 U114 ( .A1(n57), .A2(n58), .ZN(carry[9]) );
  XNOR2_X2 U115 ( .A(A[8]), .B(carry[8]), .ZN(DIFF[8]) );
  INV_X2 U116 ( .A(A[8]), .ZN(n57) );
  INV_X2 U117 ( .A(carry[8]), .ZN(n58) );
  NAND2_X2 U118 ( .A1(n59), .A2(n60), .ZN(carry[10]) );
  XNOR2_X2 U119 ( .A(A[9]), .B(carry[9]), .ZN(DIFF[9]) );
  INV_X2 U120 ( .A(A[9]), .ZN(n59) );
  INV_X2 U121 ( .A(carry[9]), .ZN(n60) );
  NAND2_X2 U122 ( .A1(n61), .A2(n62), .ZN(carry[1]) );
  XNOR2_X2 U123 ( .A(\B_not[0] ), .B(A[0]), .ZN(DIFF[0]) );
  INV_X2 U124 ( .A(\B_not[0] ), .ZN(n61) );
  INV_X2 U125 ( .A(A[0]), .ZN(n62) );
  INV_X1 U126 ( .A(B[0]), .ZN(\B_not[0] ) );
endmodule


module counter_32_4_1_DW01_inc_1 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HA_X1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  HA_X1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  HA_X1 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  HA_X1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  HA_X1 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  HA_X1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  HA_X1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  HA_X1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  HA_X1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  HA_X1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA_X1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA_X1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA_X1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA_X1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA_X1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[31]), .B(A[31]), .Z(SUM[31]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module counter_32_4_1_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \B_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62;
  wire   [32:0] carry;

  NAND2_X2 U1 ( .A1(n1), .A2(n2), .ZN(carry[11]) );
  XNOR2_X2 U2 ( .A(A[10]), .B(carry[10]), .ZN(DIFF[10]) );
  INV_X2 U3 ( .A(A[10]), .ZN(n1) );
  INV_X2 U4 ( .A(carry[10]), .ZN(n2) );
  NAND2_X2 U5 ( .A1(n3), .A2(n4), .ZN(carry[12]) );
  XNOR2_X2 U6 ( .A(A[11]), .B(carry[11]), .ZN(DIFF[11]) );
  INV_X2 U7 ( .A(A[11]), .ZN(n3) );
  INV_X2 U8 ( .A(carry[11]), .ZN(n4) );
  NAND2_X2 U9 ( .A1(n5), .A2(n6), .ZN(carry[13]) );
  XNOR2_X2 U10 ( .A(A[12]), .B(carry[12]), .ZN(DIFF[12]) );
  INV_X2 U11 ( .A(A[12]), .ZN(n5) );
  INV_X2 U12 ( .A(carry[12]), .ZN(n6) );
  NAND2_X2 U13 ( .A1(n7), .A2(n8), .ZN(carry[14]) );
  XNOR2_X2 U14 ( .A(A[13]), .B(carry[13]), .ZN(DIFF[13]) );
  INV_X2 U15 ( .A(A[13]), .ZN(n7) );
  INV_X2 U16 ( .A(carry[13]), .ZN(n8) );
  NAND2_X2 U17 ( .A1(n9), .A2(n10), .ZN(carry[15]) );
  XNOR2_X2 U18 ( .A(A[14]), .B(carry[14]), .ZN(DIFF[14]) );
  INV_X2 U19 ( .A(A[14]), .ZN(n9) );
  INV_X2 U20 ( .A(carry[14]), .ZN(n10) );
  NAND2_X2 U21 ( .A1(n11), .A2(n12), .ZN(carry[16]) );
  XNOR2_X2 U22 ( .A(A[15]), .B(carry[15]), .ZN(DIFF[15]) );
  INV_X2 U23 ( .A(A[15]), .ZN(n11) );
  INV_X2 U24 ( .A(carry[15]), .ZN(n12) );
  NAND2_X2 U25 ( .A1(n13), .A2(n14), .ZN(carry[17]) );
  XNOR2_X2 U26 ( .A(A[16]), .B(carry[16]), .ZN(DIFF[16]) );
  INV_X2 U27 ( .A(A[16]), .ZN(n13) );
  INV_X2 U28 ( .A(carry[16]), .ZN(n14) );
  NAND2_X2 U29 ( .A1(n15), .A2(n16), .ZN(carry[18]) );
  XNOR2_X2 U30 ( .A(A[17]), .B(carry[17]), .ZN(DIFF[17]) );
  INV_X2 U31 ( .A(A[17]), .ZN(n15) );
  INV_X2 U32 ( .A(carry[17]), .ZN(n16) );
  NAND2_X2 U33 ( .A1(n17), .A2(n18), .ZN(carry[19]) );
  XNOR2_X2 U34 ( .A(A[18]), .B(carry[18]), .ZN(DIFF[18]) );
  INV_X2 U35 ( .A(A[18]), .ZN(n17) );
  INV_X2 U36 ( .A(carry[18]), .ZN(n18) );
  NAND2_X2 U37 ( .A1(n19), .A2(n20), .ZN(carry[20]) );
  XNOR2_X2 U38 ( .A(A[19]), .B(carry[19]), .ZN(DIFF[19]) );
  INV_X2 U39 ( .A(A[19]), .ZN(n19) );
  INV_X2 U40 ( .A(carry[19]), .ZN(n20) );
  NAND2_X2 U41 ( .A1(n21), .A2(n22), .ZN(carry[2]) );
  XNOR2_X2 U42 ( .A(A[1]), .B(carry[1]), .ZN(DIFF[1]) );
  INV_X2 U43 ( .A(A[1]), .ZN(n21) );
  INV_X2 U44 ( .A(carry[1]), .ZN(n22) );
  NAND2_X2 U45 ( .A1(n23), .A2(n24), .ZN(carry[21]) );
  XNOR2_X2 U46 ( .A(A[20]), .B(carry[20]), .ZN(DIFF[20]) );
  INV_X2 U47 ( .A(A[20]), .ZN(n23) );
  INV_X2 U48 ( .A(carry[20]), .ZN(n24) );
  NAND2_X2 U49 ( .A1(n25), .A2(n26), .ZN(carry[22]) );
  XNOR2_X2 U50 ( .A(A[21]), .B(carry[21]), .ZN(DIFF[21]) );
  INV_X2 U51 ( .A(A[21]), .ZN(n25) );
  INV_X2 U52 ( .A(carry[21]), .ZN(n26) );
  NAND2_X2 U53 ( .A1(n27), .A2(n28), .ZN(carry[23]) );
  XNOR2_X2 U54 ( .A(A[22]), .B(carry[22]), .ZN(DIFF[22]) );
  INV_X2 U55 ( .A(A[22]), .ZN(n27) );
  INV_X2 U56 ( .A(carry[22]), .ZN(n28) );
  NAND2_X2 U57 ( .A1(n29), .A2(n30), .ZN(carry[24]) );
  XNOR2_X2 U58 ( .A(A[23]), .B(carry[23]), .ZN(DIFF[23]) );
  INV_X2 U59 ( .A(A[23]), .ZN(n29) );
  INV_X2 U60 ( .A(carry[23]), .ZN(n30) );
  NAND2_X2 U61 ( .A1(n31), .A2(n32), .ZN(carry[25]) );
  XNOR2_X2 U62 ( .A(A[24]), .B(carry[24]), .ZN(DIFF[24]) );
  INV_X2 U63 ( .A(A[24]), .ZN(n31) );
  INV_X2 U64 ( .A(carry[24]), .ZN(n32) );
  NAND2_X2 U65 ( .A1(n33), .A2(n34), .ZN(carry[26]) );
  XNOR2_X2 U66 ( .A(A[25]), .B(carry[25]), .ZN(DIFF[25]) );
  INV_X2 U67 ( .A(A[25]), .ZN(n33) );
  INV_X2 U68 ( .A(carry[25]), .ZN(n34) );
  NAND2_X2 U69 ( .A1(n35), .A2(n36), .ZN(carry[27]) );
  XNOR2_X2 U70 ( .A(A[26]), .B(carry[26]), .ZN(DIFF[26]) );
  INV_X2 U71 ( .A(A[26]), .ZN(n35) );
  INV_X2 U72 ( .A(carry[26]), .ZN(n36) );
  NAND2_X2 U73 ( .A1(n37), .A2(n38), .ZN(carry[28]) );
  XNOR2_X2 U74 ( .A(A[27]), .B(carry[27]), .ZN(DIFF[27]) );
  INV_X2 U75 ( .A(A[27]), .ZN(n37) );
  INV_X2 U76 ( .A(carry[27]), .ZN(n38) );
  NAND2_X2 U77 ( .A1(n39), .A2(n40), .ZN(carry[29]) );
  XNOR2_X2 U78 ( .A(A[28]), .B(carry[28]), .ZN(DIFF[28]) );
  INV_X2 U79 ( .A(A[28]), .ZN(n39) );
  INV_X2 U80 ( .A(carry[28]), .ZN(n40) );
  NAND2_X2 U81 ( .A1(n41), .A2(n42), .ZN(carry[30]) );
  XNOR2_X2 U82 ( .A(A[29]), .B(carry[29]), .ZN(DIFF[29]) );
  INV_X2 U83 ( .A(A[29]), .ZN(n41) );
  INV_X2 U84 ( .A(carry[29]), .ZN(n42) );
  NAND2_X2 U85 ( .A1(n43), .A2(n44), .ZN(carry[3]) );
  XNOR2_X2 U86 ( .A(A[2]), .B(carry[2]), .ZN(DIFF[2]) );
  INV_X2 U87 ( .A(A[2]), .ZN(n43) );
  INV_X2 U88 ( .A(carry[2]), .ZN(n44) );
  NAND2_X2 U89 ( .A1(n45), .A2(n46), .ZN(carry[31]) );
  XNOR2_X2 U90 ( .A(A[30]), .B(carry[30]), .ZN(DIFF[30]) );
  INV_X2 U91 ( .A(A[30]), .ZN(n45) );
  INV_X2 U92 ( .A(carry[30]), .ZN(n46) );
  XNOR2_X2 U93 ( .A(A[31]), .B(carry[31]), .ZN(DIFF[31]) );
  NAND2_X2 U94 ( .A1(n47), .A2(n48), .ZN(carry[4]) );
  XNOR2_X2 U95 ( .A(A[3]), .B(carry[3]), .ZN(DIFF[3]) );
  INV_X2 U96 ( .A(A[3]), .ZN(n47) );
  INV_X2 U97 ( .A(carry[3]), .ZN(n48) );
  NAND2_X2 U98 ( .A1(n49), .A2(n50), .ZN(carry[5]) );
  XNOR2_X2 U99 ( .A(A[4]), .B(carry[4]), .ZN(DIFF[4]) );
  INV_X2 U100 ( .A(A[4]), .ZN(n49) );
  INV_X2 U101 ( .A(carry[4]), .ZN(n50) );
  NAND2_X2 U102 ( .A1(n51), .A2(n52), .ZN(carry[6]) );
  XNOR2_X2 U103 ( .A(A[5]), .B(carry[5]), .ZN(DIFF[5]) );
  INV_X2 U104 ( .A(A[5]), .ZN(n51) );
  INV_X2 U105 ( .A(carry[5]), .ZN(n52) );
  NAND2_X2 U106 ( .A1(n53), .A2(n54), .ZN(carry[7]) );
  XNOR2_X2 U107 ( .A(A[6]), .B(carry[6]), .ZN(DIFF[6]) );
  INV_X2 U108 ( .A(A[6]), .ZN(n53) );
  INV_X2 U109 ( .A(carry[6]), .ZN(n54) );
  NAND2_X2 U110 ( .A1(n55), .A2(n56), .ZN(carry[8]) );
  XNOR2_X2 U111 ( .A(A[7]), .B(carry[7]), .ZN(DIFF[7]) );
  INV_X2 U112 ( .A(A[7]), .ZN(n55) );
  INV_X2 U113 ( .A(carry[7]), .ZN(n56) );
  NAND2_X2 U114 ( .A1(n57), .A2(n58), .ZN(carry[9]) );
  XNOR2_X2 U115 ( .A(A[8]), .B(carry[8]), .ZN(DIFF[8]) );
  INV_X2 U116 ( .A(A[8]), .ZN(n57) );
  INV_X2 U117 ( .A(carry[8]), .ZN(n58) );
  NAND2_X2 U118 ( .A1(n59), .A2(n60), .ZN(carry[10]) );
  XNOR2_X2 U119 ( .A(A[9]), .B(carry[9]), .ZN(DIFF[9]) );
  INV_X2 U120 ( .A(A[9]), .ZN(n59) );
  INV_X2 U121 ( .A(carry[9]), .ZN(n60) );
  NAND2_X2 U122 ( .A1(n61), .A2(n62), .ZN(carry[1]) );
  XNOR2_X2 U123 ( .A(\B_not[0] ), .B(A[0]), .ZN(DIFF[0]) );
  INV_X2 U124 ( .A(\B_not[0] ), .ZN(n61) );
  INV_X2 U125 ( .A(A[0]), .ZN(n62) );
  INV_X1 U126 ( .A(B[0]), .ZN(\B_not[0] ) );
endmodule


module counter_32_4_1_DW01_inc_2 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HA_X1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  HA_X1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  HA_X1 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  HA_X1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  HA_X1 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  HA_X1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  HA_X1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  HA_X1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  HA_X1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  HA_X1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA_X1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA_X1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA_X1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA_X1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA_X1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[31]), .B(A[31]), .Z(SUM[31]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module counter_32_4_1_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [31:0] A;
  input [31:0] B;
  output [31:0] DIFF;
  input CI;
  output CO;
  wire   \B_not[0] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62;
  wire   [32:0] carry;

  NAND2_X2 U1 ( .A1(n1), .A2(n2), .ZN(carry[11]) );
  XNOR2_X2 U2 ( .A(A[10]), .B(carry[10]), .ZN(DIFF[10]) );
  INV_X2 U3 ( .A(A[10]), .ZN(n1) );
  INV_X2 U4 ( .A(carry[10]), .ZN(n2) );
  NAND2_X2 U5 ( .A1(n3), .A2(n4), .ZN(carry[12]) );
  XNOR2_X2 U6 ( .A(A[11]), .B(carry[11]), .ZN(DIFF[11]) );
  INV_X2 U7 ( .A(A[11]), .ZN(n3) );
  INV_X2 U8 ( .A(carry[11]), .ZN(n4) );
  NAND2_X2 U9 ( .A1(n5), .A2(n6), .ZN(carry[13]) );
  XNOR2_X2 U10 ( .A(A[12]), .B(carry[12]), .ZN(DIFF[12]) );
  INV_X2 U11 ( .A(A[12]), .ZN(n5) );
  INV_X2 U12 ( .A(carry[12]), .ZN(n6) );
  NAND2_X2 U13 ( .A1(n7), .A2(n8), .ZN(carry[14]) );
  XNOR2_X2 U14 ( .A(A[13]), .B(carry[13]), .ZN(DIFF[13]) );
  INV_X2 U15 ( .A(A[13]), .ZN(n7) );
  INV_X2 U16 ( .A(carry[13]), .ZN(n8) );
  NAND2_X2 U17 ( .A1(n9), .A2(n10), .ZN(carry[15]) );
  XNOR2_X2 U18 ( .A(A[14]), .B(carry[14]), .ZN(DIFF[14]) );
  INV_X2 U19 ( .A(A[14]), .ZN(n9) );
  INV_X2 U20 ( .A(carry[14]), .ZN(n10) );
  NAND2_X2 U21 ( .A1(n11), .A2(n12), .ZN(carry[16]) );
  XNOR2_X2 U22 ( .A(A[15]), .B(carry[15]), .ZN(DIFF[15]) );
  INV_X2 U23 ( .A(A[15]), .ZN(n11) );
  INV_X2 U24 ( .A(carry[15]), .ZN(n12) );
  NAND2_X2 U25 ( .A1(n13), .A2(n14), .ZN(carry[17]) );
  XNOR2_X2 U26 ( .A(A[16]), .B(carry[16]), .ZN(DIFF[16]) );
  INV_X2 U27 ( .A(A[16]), .ZN(n13) );
  INV_X2 U28 ( .A(carry[16]), .ZN(n14) );
  NAND2_X2 U29 ( .A1(n15), .A2(n16), .ZN(carry[18]) );
  XNOR2_X2 U30 ( .A(A[17]), .B(carry[17]), .ZN(DIFF[17]) );
  INV_X2 U31 ( .A(A[17]), .ZN(n15) );
  INV_X2 U32 ( .A(carry[17]), .ZN(n16) );
  NAND2_X2 U33 ( .A1(n17), .A2(n18), .ZN(carry[19]) );
  XNOR2_X2 U34 ( .A(A[18]), .B(carry[18]), .ZN(DIFF[18]) );
  INV_X2 U35 ( .A(A[18]), .ZN(n17) );
  INV_X2 U36 ( .A(carry[18]), .ZN(n18) );
  NAND2_X2 U37 ( .A1(n19), .A2(n20), .ZN(carry[20]) );
  XNOR2_X2 U38 ( .A(A[19]), .B(carry[19]), .ZN(DIFF[19]) );
  INV_X2 U39 ( .A(A[19]), .ZN(n19) );
  INV_X2 U40 ( .A(carry[19]), .ZN(n20) );
  NAND2_X2 U41 ( .A1(n21), .A2(n22), .ZN(carry[2]) );
  XNOR2_X2 U42 ( .A(A[1]), .B(carry[1]), .ZN(DIFF[1]) );
  INV_X2 U43 ( .A(A[1]), .ZN(n21) );
  INV_X2 U44 ( .A(carry[1]), .ZN(n22) );
  NAND2_X2 U45 ( .A1(n23), .A2(n24), .ZN(carry[21]) );
  XNOR2_X2 U46 ( .A(A[20]), .B(carry[20]), .ZN(DIFF[20]) );
  INV_X2 U47 ( .A(A[20]), .ZN(n23) );
  INV_X2 U48 ( .A(carry[20]), .ZN(n24) );
  NAND2_X2 U49 ( .A1(n25), .A2(n26), .ZN(carry[22]) );
  XNOR2_X2 U50 ( .A(A[21]), .B(carry[21]), .ZN(DIFF[21]) );
  INV_X2 U51 ( .A(A[21]), .ZN(n25) );
  INV_X2 U52 ( .A(carry[21]), .ZN(n26) );
  NAND2_X2 U53 ( .A1(n27), .A2(n28), .ZN(carry[23]) );
  XNOR2_X2 U54 ( .A(A[22]), .B(carry[22]), .ZN(DIFF[22]) );
  INV_X2 U55 ( .A(A[22]), .ZN(n27) );
  INV_X2 U56 ( .A(carry[22]), .ZN(n28) );
  NAND2_X2 U57 ( .A1(n29), .A2(n30), .ZN(carry[24]) );
  XNOR2_X2 U58 ( .A(A[23]), .B(carry[23]), .ZN(DIFF[23]) );
  INV_X2 U59 ( .A(A[23]), .ZN(n29) );
  INV_X2 U60 ( .A(carry[23]), .ZN(n30) );
  NAND2_X2 U61 ( .A1(n31), .A2(n32), .ZN(carry[25]) );
  XNOR2_X2 U62 ( .A(A[24]), .B(carry[24]), .ZN(DIFF[24]) );
  INV_X2 U63 ( .A(A[24]), .ZN(n31) );
  INV_X2 U64 ( .A(carry[24]), .ZN(n32) );
  NAND2_X2 U65 ( .A1(n33), .A2(n34), .ZN(carry[26]) );
  XNOR2_X2 U66 ( .A(A[25]), .B(carry[25]), .ZN(DIFF[25]) );
  INV_X2 U67 ( .A(A[25]), .ZN(n33) );
  INV_X2 U68 ( .A(carry[25]), .ZN(n34) );
  NAND2_X2 U69 ( .A1(n35), .A2(n36), .ZN(carry[27]) );
  XNOR2_X2 U70 ( .A(A[26]), .B(carry[26]), .ZN(DIFF[26]) );
  INV_X2 U71 ( .A(A[26]), .ZN(n35) );
  INV_X2 U72 ( .A(carry[26]), .ZN(n36) );
  NAND2_X2 U73 ( .A1(n37), .A2(n38), .ZN(carry[28]) );
  XNOR2_X2 U74 ( .A(A[27]), .B(carry[27]), .ZN(DIFF[27]) );
  INV_X2 U75 ( .A(A[27]), .ZN(n37) );
  INV_X2 U76 ( .A(carry[27]), .ZN(n38) );
  NAND2_X2 U77 ( .A1(n39), .A2(n40), .ZN(carry[29]) );
  XNOR2_X2 U78 ( .A(A[28]), .B(carry[28]), .ZN(DIFF[28]) );
  INV_X2 U79 ( .A(A[28]), .ZN(n39) );
  INV_X2 U80 ( .A(carry[28]), .ZN(n40) );
  NAND2_X2 U81 ( .A1(n41), .A2(n42), .ZN(carry[30]) );
  XNOR2_X2 U82 ( .A(A[29]), .B(carry[29]), .ZN(DIFF[29]) );
  INV_X2 U83 ( .A(A[29]), .ZN(n41) );
  INV_X2 U84 ( .A(carry[29]), .ZN(n42) );
  NAND2_X2 U85 ( .A1(n43), .A2(n44), .ZN(carry[3]) );
  XNOR2_X2 U86 ( .A(A[2]), .B(carry[2]), .ZN(DIFF[2]) );
  INV_X2 U87 ( .A(A[2]), .ZN(n43) );
  INV_X2 U88 ( .A(carry[2]), .ZN(n44) );
  NAND2_X2 U89 ( .A1(n45), .A2(n46), .ZN(carry[31]) );
  XNOR2_X2 U90 ( .A(A[30]), .B(carry[30]), .ZN(DIFF[30]) );
  INV_X2 U91 ( .A(A[30]), .ZN(n45) );
  INV_X2 U92 ( .A(carry[30]), .ZN(n46) );
  XNOR2_X2 U93 ( .A(A[31]), .B(carry[31]), .ZN(DIFF[31]) );
  NAND2_X2 U94 ( .A1(n47), .A2(n48), .ZN(carry[4]) );
  XNOR2_X2 U95 ( .A(A[3]), .B(carry[3]), .ZN(DIFF[3]) );
  INV_X2 U96 ( .A(A[3]), .ZN(n47) );
  INV_X2 U97 ( .A(carry[3]), .ZN(n48) );
  NAND2_X2 U98 ( .A1(n49), .A2(n50), .ZN(carry[5]) );
  XNOR2_X2 U99 ( .A(A[4]), .B(carry[4]), .ZN(DIFF[4]) );
  INV_X2 U100 ( .A(A[4]), .ZN(n49) );
  INV_X2 U101 ( .A(carry[4]), .ZN(n50) );
  NAND2_X2 U102 ( .A1(n51), .A2(n52), .ZN(carry[6]) );
  XNOR2_X2 U103 ( .A(A[5]), .B(carry[5]), .ZN(DIFF[5]) );
  INV_X2 U104 ( .A(A[5]), .ZN(n51) );
  INV_X2 U105 ( .A(carry[5]), .ZN(n52) );
  NAND2_X2 U106 ( .A1(n53), .A2(n54), .ZN(carry[7]) );
  XNOR2_X2 U107 ( .A(A[6]), .B(carry[6]), .ZN(DIFF[6]) );
  INV_X2 U108 ( .A(A[6]), .ZN(n53) );
  INV_X2 U109 ( .A(carry[6]), .ZN(n54) );
  NAND2_X2 U110 ( .A1(n55), .A2(n56), .ZN(carry[8]) );
  XNOR2_X2 U111 ( .A(A[7]), .B(carry[7]), .ZN(DIFF[7]) );
  INV_X2 U112 ( .A(A[7]), .ZN(n55) );
  INV_X2 U113 ( .A(carry[7]), .ZN(n56) );
  NAND2_X2 U114 ( .A1(n57), .A2(n58), .ZN(carry[9]) );
  XNOR2_X2 U115 ( .A(A[8]), .B(carry[8]), .ZN(DIFF[8]) );
  INV_X2 U116 ( .A(A[8]), .ZN(n57) );
  INV_X2 U117 ( .A(carry[8]), .ZN(n58) );
  NAND2_X2 U118 ( .A1(n59), .A2(n60), .ZN(carry[10]) );
  XNOR2_X2 U119 ( .A(A[9]), .B(carry[9]), .ZN(DIFF[9]) );
  INV_X2 U120 ( .A(A[9]), .ZN(n59) );
  INV_X2 U121 ( .A(carry[9]), .ZN(n60) );
  NAND2_X2 U122 ( .A1(n61), .A2(n62), .ZN(carry[1]) );
  XNOR2_X2 U123 ( .A(\B_not[0] ), .B(A[0]), .ZN(DIFF[0]) );
  INV_X2 U124 ( .A(\B_not[0] ), .ZN(n61) );
  INV_X2 U125 ( .A(A[0]), .ZN(n62) );
  INV_X1 U126 ( .A(B[0]), .ZN(\B_not[0] ) );
endmodule


module counter_32_4_1_DW01_inc_3 ( A, SUM );
  input [31:0] A;
  output [31:0] SUM;

  wire   [31:2] carry;

  HA_X1 U1_1_30 ( .A(A[30]), .B(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  HA_X1 U1_1_29 ( .A(A[29]), .B(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  HA_X1 U1_1_28 ( .A(A[28]), .B(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  HA_X1 U1_1_27 ( .A(A[27]), .B(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  HA_X1 U1_1_26 ( .A(A[26]), .B(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  HA_X1 U1_1_25 ( .A(A[25]), .B(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  HA_X1 U1_1_24 ( .A(A[24]), .B(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  HA_X1 U1_1_23 ( .A(A[23]), .B(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  HA_X1 U1_1_22 ( .A(A[22]), .B(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  HA_X1 U1_1_21 ( .A(A[21]), .B(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  HA_X1 U1_1_20 ( .A(A[20]), .B(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  HA_X1 U1_1_19 ( .A(A[19]), .B(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  HA_X1 U1_1_18 ( .A(A[18]), .B(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  HA_X1 U1_1_17 ( .A(A[17]), .B(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  HA_X1 U1_1_16 ( .A(A[16]), .B(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  HA_X1 U1_1_15 ( .A(A[15]), .B(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  HA_X1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  HA_X1 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  HA_X1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  HA_X1 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  HA_X1 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  HA_X1 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  HA_X1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  HA_X1 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  HA_X1 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  HA_X1 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  HA_X1 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  HA_X1 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  HA_X1 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  HA_X1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2_X1 U1 ( .A(carry[31]), .B(A[31]), .Z(SUM[31]) );
  INV_X1 U2 ( .A(A[0]), .ZN(SUM[0]) );
endmodule


module counter_32_4_1 ( clk, resetn, rdn, wrn, address, data_in, data_out );
  input [7:0] address;
  input [31:0] data_in;
  output [31:0] data_out;
  input clk, resetn, rdn, wrn;
  wire   N39, N40, address_1, address_0, \cstate[0][1] , \cstate[1][1] ,
         \cstate[2][1] , \cstate[3][1] , \count[0][31] , \count[0][30] ,
         \count[0][29] , \count[0][28] , \count[0][27] , \count[0][26] ,
         \count[0][25] , \count[0][24] , \count[0][23] , \count[0][22] ,
         \count[0][21] , \count[0][20] , \count[0][19] , \count[0][18] ,
         \count[0][17] , \count[0][16] , \count[0][15] , \count[0][14] ,
         \count[0][13] , \count[0][12] , \count[0][11] , \count[0][10] ,
         \count[0][9] , \count[0][8] , \count[0][7] , \count[0][6] ,
         \count[0][5] , \count[0][4] , \count[0][3] , \count[0][2] ,
         \count[0][1] , \count[0][0] , \count[1][31] , \count[1][30] ,
         \count[1][29] , \count[1][28] , \count[1][27] , \count[1][26] ,
         \count[1][25] , \count[1][24] , \count[1][23] , \count[1][22] ,
         \count[1][21] , \count[1][20] , \count[1][19] , \count[1][18] ,
         \count[1][17] , \count[1][16] , \count[1][15] , \count[1][14] ,
         \count[1][13] , \count[1][12] , \count[1][11] , \count[1][10] ,
         \count[1][9] , \count[1][8] , \count[1][7] , \count[1][6] ,
         \count[1][5] , \count[1][4] , \count[1][3] , \count[1][2] ,
         \count[1][1] , \count[1][0] , \count[2][31] , \count[2][30] ,
         \count[2][29] , \count[2][28] , \count[2][27] , \count[2][26] ,
         \count[2][25] , \count[2][24] , \count[2][23] , \count[2][22] ,
         \count[2][21] , \count[2][20] , \count[2][19] , \count[2][18] ,
         \count[2][17] , \count[2][16] , \count[2][15] , \count[2][14] ,
         \count[2][13] , \count[2][12] , \count[2][11] , \count[2][10] ,
         \count[2][9] , \count[2][8] , \count[2][7] , \count[2][6] ,
         \count[2][5] , \count[2][4] , \count[2][3] , \count[2][2] ,
         \count[2][1] , \count[2][0] , \count[3][31] , \count[3][30] ,
         \count[3][29] , \count[3][28] , \count[3][27] , \count[3][26] ,
         \count[3][25] , \count[3][24] , \count[3][23] , \count[3][22] ,
         \count[3][21] , \count[3][20] , \count[3][19] , \count[3][18] ,
         \count[3][17] , \count[3][16] , \count[3][15] , \count[3][14] ,
         \count[3][13] , \count[3][12] , \count[3][11] , \count[3][10] ,
         \count[3][9] , \count[3][8] , \count[3][7] , \count[3][6] ,
         \count[3][5] , \count[3][4] , \count[3][3] , \count[3][2] ,
         \count[3][1] , \count[3][0] , N147, N148, N149, N150, N151, N152,
         N153, N154, N155, N156, N157, N158, N159, N160, N161, N162, N163,
         N164, N165, N166, N167, N168, N169, N170, N171, N172, N173, N174,
         N175, N176, N177, N178, N181, N182, N183, N184, N185, N186, N187,
         N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198,
         N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209,
         N210, N211, N212, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, N343,
         N344, N345, N348, N349, N350, N351, N352, N353, N354, N355, N356,
         N357, N358, N359, N360, N361, N362, N363, N364, N365, N366, N367,
         N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378,
         N379, N481, N482, N483, N484, N485, N486, N487, N488, N489, N490,
         N491, N492, N493, N494, N495, N496, N497, N498, N499, N500, N501,
         N502, N503, N504, N505, N506, N507, N508, N509, N510, N511, N512,
         N515, N516, N517, N518, N519, N520, N521, N522, N523, N524, N525,
         N526, N527, N528, N529, N530, N531, N532, N533, N534, N535, N536,
         N537, N538, N539, N540, N541, N542, N543, N544, N545, N546, N648,
         N649, N650, N651, N652, N653, N654, N655, N656, N657, N658, N659,
         N660, N661, N662, N663, N664, N665, N666, N667, N668, N669, N670,
         N671, N672, N673, N674, N675, N676, N677, N678, N679, N682, N683,
         N684, N685, N686, N687, N688, N689, N690, N691, N692, N693, N694,
         N695, N696, N697, N698, N699, N700, N701, N702, N703, N704, N705,
         N706, N707, N708, N709, N710, N711, N712, N713, N778, N779, N780,
         N781, N782, N783, N784, N785, N786, N787, N788, N789, N790, N791,
         N792, N793, N794, N795, N796, N797, N798, N799, N800, N801, N802,
         N803, N804, N805, N806, N807, N808, N809, N812, N813, N814, N815,
         N816, N817, N818, N819, N820, N821, N822, N823, N824, N825, N826,
         N827, N828, N829, N830, N831, N832, N833, N834, N835, N836, N837,
         N838, N839, N840, N841, N842, N843, N846, N847, N848, N849, N850,
         N851, N852, N853, N854, N855, N856, N857, N858, N859, N860, N861,
         N862, N863, N864, N865, N866, N867, N868, N869, N870, N871, N872,
         N873, N874, N875, N876, N877, N880, N881, N882, N883, N884, N885,
         N886, N887, N888, N889, N890, N891, N892, N893, N894, N895, N896,
         N897, N898, N899, N900, N901, N902, N903, N904, N905, N906, N907,
         N908, N909, N910, N911, N940, N943, N946, N949, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n5, n6, n7, n8, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307, n308, n309, n310, n311, n312, n313, n314, n315,
         n316, n317, n318, n319, n320, n321, n322, n323, n324, n325, n326,
         n327, n328, n329, n330, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n343, n344, n345, n346, n347, n348,
         n349, n350, n351, n352, n353, n354, n355, n356, n357, n358, n359,
         n360, n361, n362, n363, n364, n365, n366, n367, n368, n369, n370,
         n371;
  assign address_1 = address[1];
  assign address_0 = address[0];

  DFF_X1 \cstate_reg[0][1]  ( .D(n282), .CK(clk), .Q(\cstate[0][1] ), .QN(n18)
         );
  DFF_X1 \cstate_reg[0][0]  ( .D(n283), .CK(clk), .QN(n20) );
  DFF_X1 \count_reg[0][0]  ( .D(N778), .CK(clk), .Q(\count[0][0] ) );
  DFF_X1 \count_reg[0][1]  ( .D(N779), .CK(clk), .Q(\count[0][1] ) );
  DFF_X1 \count_reg[0][31]  ( .D(N809), .CK(clk), .Q(\count[0][31] ) );
  DFF_X1 \count_reg[0][2]  ( .D(N780), .CK(clk), .Q(\count[0][2] ) );
  DFF_X1 \count_reg[0][3]  ( .D(N781), .CK(clk), .Q(\count[0][3] ) );
  DFF_X1 \count_reg[0][4]  ( .D(N782), .CK(clk), .Q(\count[0][4] ) );
  DFF_X1 \count_reg[0][5]  ( .D(N783), .CK(clk), .Q(\count[0][5] ) );
  DFF_X1 \count_reg[0][6]  ( .D(N784), .CK(clk), .Q(\count[0][6] ) );
  DFF_X1 \count_reg[0][7]  ( .D(N785), .CK(clk), .Q(\count[0][7] ) );
  DFF_X1 \count_reg[0][8]  ( .D(N786), .CK(clk), .Q(\count[0][8] ) );
  DFF_X1 \count_reg[0][9]  ( .D(N787), .CK(clk), .Q(\count[0][9] ) );
  DFF_X1 \count_reg[0][10]  ( .D(N788), .CK(clk), .Q(\count[0][10] ) );
  DFF_X1 \count_reg[0][11]  ( .D(N789), .CK(clk), .Q(\count[0][11] ) );
  DFF_X1 \count_reg[0][12]  ( .D(N790), .CK(clk), .Q(\count[0][12] ) );
  DFF_X1 \count_reg[0][13]  ( .D(N791), .CK(clk), .Q(\count[0][13] ) );
  DFF_X1 \count_reg[0][14]  ( .D(N792), .CK(clk), .Q(\count[0][14] ) );
  DFF_X1 \count_reg[0][15]  ( .D(N793), .CK(clk), .Q(\count[0][15] ) );
  DFF_X1 \count_reg[0][16]  ( .D(N794), .CK(clk), .Q(\count[0][16] ) );
  DFF_X1 \count_reg[0][17]  ( .D(N795), .CK(clk), .Q(\count[0][17] ) );
  DFF_X1 \count_reg[0][18]  ( .D(N796), .CK(clk), .Q(\count[0][18] ) );
  DFF_X1 \count_reg[0][19]  ( .D(N797), .CK(clk), .Q(\count[0][19] ) );
  DFF_X1 \count_reg[0][20]  ( .D(N798), .CK(clk), .Q(\count[0][20] ) );
  DFF_X1 \count_reg[0][21]  ( .D(N799), .CK(clk), .Q(\count[0][21] ) );
  DFF_X1 \count_reg[0][22]  ( .D(N800), .CK(clk), .Q(\count[0][22] ) );
  DFF_X1 \count_reg[0][23]  ( .D(N801), .CK(clk), .Q(\count[0][23] ) );
  DFF_X1 \count_reg[0][24]  ( .D(N802), .CK(clk), .Q(\count[0][24] ) );
  DFF_X1 \count_reg[0][25]  ( .D(N803), .CK(clk), .Q(\count[0][25] ) );
  DFF_X1 \count_reg[0][26]  ( .D(N804), .CK(clk), .Q(\count[0][26] ) );
  DFF_X1 \count_reg[0][27]  ( .D(N805), .CK(clk), .Q(\count[0][27] ) );
  DFF_X1 \count_reg[0][28]  ( .D(N806), .CK(clk), .Q(\count[0][28] ) );
  DFF_X1 \count_reg[0][29]  ( .D(N807), .CK(clk), .Q(\count[0][29] ) );
  DFF_X1 \count_reg[0][30]  ( .D(N808), .CK(clk), .Q(\count[0][30] ) );
  DFF_X1 \cstate_reg[1][1]  ( .D(n284), .CK(clk), .Q(\cstate[1][1] ), .QN(n24)
         );
  DFF_X1 \cstate_reg[1][0]  ( .D(n285), .CK(clk), .QN(n25) );
  DFF_X1 \count_reg[1][0]  ( .D(N812), .CK(clk), .Q(\count[1][0] ) );
  DFF_X1 \count_reg[1][1]  ( .D(N813), .CK(clk), .Q(\count[1][1] ) );
  DFF_X1 \count_reg[1][31]  ( .D(N843), .CK(clk), .Q(\count[1][31] ) );
  DFF_X1 \count_reg[1][2]  ( .D(N814), .CK(clk), .Q(\count[1][2] ) );
  DFF_X1 \count_reg[1][3]  ( .D(N815), .CK(clk), .Q(\count[1][3] ) );
  DFF_X1 \count_reg[1][4]  ( .D(N816), .CK(clk), .Q(\count[1][4] ) );
  DFF_X1 \count_reg[1][5]  ( .D(N817), .CK(clk), .Q(\count[1][5] ) );
  DFF_X1 \count_reg[1][6]  ( .D(N818), .CK(clk), .Q(\count[1][6] ) );
  DFF_X1 \count_reg[1][7]  ( .D(N819), .CK(clk), .Q(\count[1][7] ) );
  DFF_X1 \count_reg[1][8]  ( .D(N820), .CK(clk), .Q(\count[1][8] ) );
  DFF_X1 \count_reg[1][9]  ( .D(N821), .CK(clk), .Q(\count[1][9] ) );
  DFF_X1 \count_reg[1][10]  ( .D(N822), .CK(clk), .Q(\count[1][10] ) );
  DFF_X1 \count_reg[1][11]  ( .D(N823), .CK(clk), .Q(\count[1][11] ) );
  DFF_X1 \count_reg[1][12]  ( .D(N824), .CK(clk), .Q(\count[1][12] ) );
  DFF_X1 \count_reg[1][13]  ( .D(N825), .CK(clk), .Q(\count[1][13] ) );
  DFF_X1 \count_reg[1][14]  ( .D(N826), .CK(clk), .Q(\count[1][14] ) );
  DFF_X1 \count_reg[1][15]  ( .D(N827), .CK(clk), .Q(\count[1][15] ) );
  DFF_X1 \count_reg[1][16]  ( .D(N828), .CK(clk), .Q(\count[1][16] ) );
  DFF_X1 \count_reg[1][17]  ( .D(N829), .CK(clk), .Q(\count[1][17] ) );
  DFF_X1 \count_reg[1][18]  ( .D(N830), .CK(clk), .Q(\count[1][18] ) );
  DFF_X1 \count_reg[1][19]  ( .D(N831), .CK(clk), .Q(\count[1][19] ) );
  DFF_X1 \count_reg[1][20]  ( .D(N832), .CK(clk), .Q(\count[1][20] ) );
  DFF_X1 \count_reg[1][21]  ( .D(N833), .CK(clk), .Q(\count[1][21] ) );
  DFF_X1 \count_reg[1][22]  ( .D(N834), .CK(clk), .Q(\count[1][22] ) );
  DFF_X1 \count_reg[1][23]  ( .D(N835), .CK(clk), .Q(\count[1][23] ) );
  DFF_X1 \count_reg[1][24]  ( .D(N836), .CK(clk), .Q(\count[1][24] ) );
  DFF_X1 \count_reg[1][25]  ( .D(N837), .CK(clk), .Q(\count[1][25] ) );
  DFF_X1 \count_reg[1][26]  ( .D(N838), .CK(clk), .Q(\count[1][26] ) );
  DFF_X1 \count_reg[1][27]  ( .D(N839), .CK(clk), .Q(\count[1][27] ) );
  DFF_X1 \count_reg[1][28]  ( .D(N840), .CK(clk), .Q(\count[1][28] ) );
  DFF_X1 \count_reg[1][29]  ( .D(N841), .CK(clk), .Q(\count[1][29] ) );
  DFF_X1 \count_reg[1][30]  ( .D(N842), .CK(clk), .Q(\count[1][30] ) );
  DFF_X1 \cstate_reg[2][1]  ( .D(n286), .CK(clk), .Q(\cstate[2][1] ), .QN(n27)
         );
  DFF_X1 \cstate_reg[2][0]  ( .D(n287), .CK(clk), .QN(n29) );
  DFF_X1 \count_reg[2][0]  ( .D(N846), .CK(clk), .Q(\count[2][0] ) );
  DFF_X1 \count_reg[2][1]  ( .D(N847), .CK(clk), .Q(\count[2][1] ) );
  DFF_X1 \count_reg[2][31]  ( .D(N877), .CK(clk), .Q(\count[2][31] ) );
  DFF_X1 \count_reg[2][2]  ( .D(N848), .CK(clk), .Q(\count[2][2] ) );
  DFF_X1 \count_reg[2][3]  ( .D(N849), .CK(clk), .Q(\count[2][3] ) );
  DFF_X1 \count_reg[2][4]  ( .D(N850), .CK(clk), .Q(\count[2][4] ) );
  DFF_X1 \count_reg[2][5]  ( .D(N851), .CK(clk), .Q(\count[2][5] ) );
  DFF_X1 \count_reg[2][6]  ( .D(N852), .CK(clk), .Q(\count[2][6] ) );
  DFF_X1 \count_reg[2][7]  ( .D(N853), .CK(clk), .Q(\count[2][7] ) );
  DFF_X1 \count_reg[2][8]  ( .D(N854), .CK(clk), .Q(\count[2][8] ) );
  DFF_X1 \count_reg[2][9]  ( .D(N855), .CK(clk), .Q(\count[2][9] ) );
  DFF_X1 \count_reg[2][10]  ( .D(N856), .CK(clk), .Q(\count[2][10] ) );
  DFF_X1 \count_reg[2][11]  ( .D(N857), .CK(clk), .Q(\count[2][11] ) );
  DFF_X1 \count_reg[2][12]  ( .D(N858), .CK(clk), .Q(\count[2][12] ) );
  DFF_X1 \count_reg[2][13]  ( .D(N859), .CK(clk), .Q(\count[2][13] ) );
  DFF_X1 \count_reg[2][14]  ( .D(N860), .CK(clk), .Q(\count[2][14] ) );
  DFF_X1 \count_reg[2][15]  ( .D(N861), .CK(clk), .Q(\count[2][15] ) );
  DFF_X1 \count_reg[2][16]  ( .D(N862), .CK(clk), .Q(\count[2][16] ) );
  DFF_X1 \count_reg[2][17]  ( .D(N863), .CK(clk), .Q(\count[2][17] ) );
  DFF_X1 \count_reg[2][18]  ( .D(N864), .CK(clk), .Q(\count[2][18] ) );
  DFF_X1 \count_reg[2][19]  ( .D(N865), .CK(clk), .Q(\count[2][19] ) );
  DFF_X1 \count_reg[2][20]  ( .D(N866), .CK(clk), .Q(\count[2][20] ) );
  DFF_X1 \count_reg[2][21]  ( .D(N867), .CK(clk), .Q(\count[2][21] ) );
  DFF_X1 \count_reg[2][22]  ( .D(N868), .CK(clk), .Q(\count[2][22] ) );
  DFF_X1 \count_reg[2][23]  ( .D(N869), .CK(clk), .Q(\count[2][23] ) );
  DFF_X1 \count_reg[2][24]  ( .D(N870), .CK(clk), .Q(\count[2][24] ) );
  DFF_X1 \count_reg[2][25]  ( .D(N871), .CK(clk), .Q(\count[2][25] ) );
  DFF_X1 \count_reg[2][26]  ( .D(N872), .CK(clk), .Q(\count[2][26] ) );
  DFF_X1 \count_reg[2][27]  ( .D(N873), .CK(clk), .Q(\count[2][27] ) );
  DFF_X1 \count_reg[2][28]  ( .D(N874), .CK(clk), .Q(\count[2][28] ) );
  DFF_X1 \count_reg[2][29]  ( .D(N875), .CK(clk), .Q(\count[2][29] ) );
  DFF_X1 \count_reg[2][30]  ( .D(N876), .CK(clk), .Q(\count[2][30] ) );
  DFF_X1 \cstate_reg[3][1]  ( .D(n288), .CK(clk), .Q(\cstate[3][1] ), .QN(n31)
         );
  DFF_X1 \cstate_reg[3][0]  ( .D(n289), .CK(clk), .QN(n34) );
  DFF_X1 \count_reg[3][0]  ( .D(N880), .CK(clk), .Q(\count[3][0] ) );
  DFF_X1 \count_reg[3][1]  ( .D(N881), .CK(clk), .Q(\count[3][1] ) );
  DFF_X1 \count_reg[3][31]  ( .D(N911), .CK(clk), .Q(\count[3][31] ) );
  DFF_X1 \count_reg[3][2]  ( .D(N882), .CK(clk), .Q(\count[3][2] ) );
  DFF_X1 \count_reg[3][3]  ( .D(N883), .CK(clk), .Q(\count[3][3] ) );
  DFF_X1 \count_reg[3][4]  ( .D(N884), .CK(clk), .Q(\count[3][4] ) );
  DFF_X1 \count_reg[3][5]  ( .D(N885), .CK(clk), .Q(\count[3][5] ) );
  DFF_X1 \count_reg[3][6]  ( .D(N886), .CK(clk), .Q(\count[3][6] ) );
  DFF_X1 \count_reg[3][7]  ( .D(N887), .CK(clk), .Q(\count[3][7] ) );
  DFF_X1 \count_reg[3][8]  ( .D(N888), .CK(clk), .Q(\count[3][8] ) );
  DFF_X1 \count_reg[3][9]  ( .D(N889), .CK(clk), .Q(\count[3][9] ) );
  DFF_X1 \count_reg[3][10]  ( .D(N890), .CK(clk), .Q(\count[3][10] ) );
  DFF_X1 \count_reg[3][11]  ( .D(N891), .CK(clk), .Q(\count[3][11] ) );
  DFF_X1 \count_reg[3][12]  ( .D(N892), .CK(clk), .Q(\count[3][12] ) );
  DFF_X1 \count_reg[3][13]  ( .D(N893), .CK(clk), .Q(\count[3][13] ) );
  DFF_X1 \count_reg[3][14]  ( .D(N894), .CK(clk), .Q(\count[3][14] ) );
  DFF_X1 \count_reg[3][15]  ( .D(N895), .CK(clk), .Q(\count[3][15] ) );
  DFF_X1 \count_reg[3][16]  ( .D(N896), .CK(clk), .Q(\count[3][16] ) );
  DFF_X1 \count_reg[3][17]  ( .D(N897), .CK(clk), .Q(\count[3][17] ) );
  DFF_X1 \count_reg[3][18]  ( .D(N898), .CK(clk), .Q(\count[3][18] ) );
  DFF_X1 \count_reg[3][19]  ( .D(N899), .CK(clk), .Q(\count[3][19] ) );
  DFF_X1 \count_reg[3][20]  ( .D(N900), .CK(clk), .Q(\count[3][20] ) );
  DFF_X1 \count_reg[3][21]  ( .D(N901), .CK(clk), .Q(\count[3][21] ) );
  DFF_X1 \count_reg[3][22]  ( .D(N902), .CK(clk), .Q(\count[3][22] ) );
  DFF_X1 \count_reg[3][23]  ( .D(N903), .CK(clk), .Q(\count[3][23] ) );
  DFF_X1 \count_reg[3][24]  ( .D(N904), .CK(clk), .Q(\count[3][24] ) );
  DFF_X1 \count_reg[3][25]  ( .D(N905), .CK(clk), .Q(\count[3][25] ) );
  DFF_X1 \count_reg[3][26]  ( .D(N906), .CK(clk), .Q(\count[3][26] ) );
  DFF_X1 \count_reg[3][27]  ( .D(N907), .CK(clk), .Q(\count[3][27] ) );
  DFF_X1 \count_reg[3][28]  ( .D(N908), .CK(clk), .Q(\count[3][28] ) );
  DFF_X1 \count_reg[3][29]  ( .D(N909), .CK(clk), .Q(\count[3][29] ) );
  DFF_X1 \count_reg[3][30]  ( .D(N910), .CK(clk), .Q(\count[3][30] ) );
  DFF_X1 \read_addr_reg[1]  ( .D(n281), .CK(clk), .Q(N40), .QN(n12) );
  DFF_X1 \read_addr_reg[0]  ( .D(n280), .CK(clk), .Q(N39), .QN(n10) );
  OAI21_X1 U3 ( .B1(n9), .B2(n10), .A(n11), .ZN(n280) );
  NAND3_X1 U4 ( .A1(resetn), .A2(n9), .A3(address_0), .ZN(n11) );
  OAI21_X1 U5 ( .B1(n9), .B2(n12), .A(n13), .ZN(n281) );
  NAND3_X1 U6 ( .A1(resetn), .A2(n9), .A3(address_1), .ZN(n13) );
  OR2_X1 U7 ( .A1(rdn), .A2(n14), .ZN(n9) );
  OAI22_X1 U12 ( .A1(n15), .A2(n16), .B1(n17), .B2(n18), .ZN(n282) );
  OAI22_X1 U13 ( .A1(n16), .A2(n19), .B1(n17), .B2(n20), .ZN(n283) );
  AOI21_X1 U14 ( .B1(resetn), .B2(n16), .A(n21), .ZN(n17) );
  OAI22_X1 U15 ( .A1(n15), .A2(n22), .B1(n23), .B2(n24), .ZN(n284) );
  OAI22_X1 U16 ( .A1(n19), .A2(n22), .B1(n23), .B2(n25), .ZN(n285) );
  AOI21_X1 U17 ( .B1(resetn), .B2(n22), .A(n21), .ZN(n23) );
  OAI22_X1 U18 ( .A1(n26), .A2(n27), .B1(n15), .B2(n28), .ZN(n286) );
  OAI22_X1 U19 ( .A1(n26), .A2(n29), .B1(n19), .B2(n28), .ZN(n287) );
  AOI21_X1 U20 ( .B1(n28), .B2(resetn), .A(n21), .ZN(n26) );
  OAI22_X1 U21 ( .A1(n30), .A2(n31), .B1(n15), .B2(n32), .ZN(n288) );
  NAND2_X1 U22 ( .A1(n33), .A2(address[4]), .ZN(n15) );
  OAI22_X1 U23 ( .A1(n30), .A2(n34), .B1(n19), .B2(n32), .ZN(n289) );
  NAND3_X1 U24 ( .A1(n33), .A2(n35), .A3(address[5]), .ZN(n19) );
  NOR2_X1 U25 ( .A1(n14), .A2(n21), .ZN(n33) );
  AOI21_X1 U26 ( .B1(n32), .B2(resetn), .A(n21), .ZN(n30) );
  AND2_X1 U27 ( .A1(resetn), .A2(n36), .ZN(n21) );
  NAND4_X1 U28 ( .A1(n37), .A2(wrn), .A3(n38), .A4(n39), .ZN(n36) );
  INV_X1 U29 ( .A(n40), .ZN(n38) );
  XNOR2_X1 U30 ( .A(address[6]), .B(n41), .ZN(n37) );
  NOR2_X1 U31 ( .A1(address[4]), .A2(address[5]), .ZN(n41) );
  INV_X1 U32 ( .A(n42), .ZN(N949) );
  INV_X1 U33 ( .A(n43), .ZN(N946) );
  INV_X1 U34 ( .A(n44), .ZN(N943) );
  INV_X1 U35 ( .A(n45), .ZN(N940) );
  OAI21_X1 U36 ( .B1(n46), .B2(n47), .A(n48), .ZN(N911) );
  AOI22_X1 U37 ( .A1(N679), .A2(n49), .B1(N713), .B2(n8), .ZN(n48) );
  OAI21_X1 U38 ( .B1(n46), .B2(n51), .A(n52), .ZN(N910) );
  AOI22_X1 U39 ( .A1(N678), .A2(n49), .B1(N712), .B2(n8), .ZN(n52) );
  OAI21_X1 U40 ( .B1(n46), .B2(n53), .A(n54), .ZN(N909) );
  AOI22_X1 U41 ( .A1(N677), .A2(n49), .B1(N711), .B2(n8), .ZN(n54) );
  OAI21_X1 U42 ( .B1(n46), .B2(n55), .A(n56), .ZN(N908) );
  AOI22_X1 U43 ( .A1(N676), .A2(n49), .B1(N710), .B2(n8), .ZN(n56) );
  OAI21_X1 U44 ( .B1(n46), .B2(n57), .A(n58), .ZN(N907) );
  AOI22_X1 U45 ( .A1(N675), .A2(n49), .B1(N709), .B2(n8), .ZN(n58) );
  OAI21_X1 U46 ( .B1(n46), .B2(n59), .A(n60), .ZN(N906) );
  AOI22_X1 U47 ( .A1(N674), .A2(n49), .B1(N708), .B2(n8), .ZN(n60) );
  OAI21_X1 U48 ( .B1(n46), .B2(n61), .A(n62), .ZN(N905) );
  AOI22_X1 U49 ( .A1(N673), .A2(n49), .B1(N707), .B2(n8), .ZN(n62) );
  OAI21_X1 U50 ( .B1(n46), .B2(n63), .A(n64), .ZN(N904) );
  AOI22_X1 U51 ( .A1(N672), .A2(n49), .B1(N706), .B2(n8), .ZN(n64) );
  OAI21_X1 U52 ( .B1(n46), .B2(n65), .A(n66), .ZN(N903) );
  AOI22_X1 U53 ( .A1(N671), .A2(n49), .B1(N705), .B2(n8), .ZN(n66) );
  OAI21_X1 U54 ( .B1(n46), .B2(n67), .A(n68), .ZN(N902) );
  AOI22_X1 U55 ( .A1(N670), .A2(n49), .B1(N704), .B2(n8), .ZN(n68) );
  OAI21_X1 U56 ( .B1(n46), .B2(n69), .A(n70), .ZN(N901) );
  AOI22_X1 U57 ( .A1(N669), .A2(n49), .B1(N703), .B2(n8), .ZN(n70) );
  OAI21_X1 U58 ( .B1(n46), .B2(n71), .A(n72), .ZN(N900) );
  AOI22_X1 U59 ( .A1(N668), .A2(n49), .B1(N702), .B2(n8), .ZN(n72) );
  OAI21_X1 U60 ( .B1(n46), .B2(n73), .A(n74), .ZN(N899) );
  AOI22_X1 U61 ( .A1(N667), .A2(n49), .B1(N701), .B2(n8), .ZN(n74) );
  OAI21_X1 U62 ( .B1(n46), .B2(n75), .A(n76), .ZN(N898) );
  AOI22_X1 U63 ( .A1(N666), .A2(n49), .B1(N700), .B2(n8), .ZN(n76) );
  OAI21_X1 U64 ( .B1(n46), .B2(n77), .A(n78), .ZN(N897) );
  AOI22_X1 U65 ( .A1(N665), .A2(n49), .B1(N699), .B2(n8), .ZN(n78) );
  OAI21_X1 U66 ( .B1(n46), .B2(n79), .A(n80), .ZN(N896) );
  AOI22_X1 U67 ( .A1(N664), .A2(n49), .B1(N698), .B2(n8), .ZN(n80) );
  OAI21_X1 U68 ( .B1(n46), .B2(n81), .A(n82), .ZN(N895) );
  AOI22_X1 U69 ( .A1(N663), .A2(n49), .B1(N697), .B2(n8), .ZN(n82) );
  OAI21_X1 U70 ( .B1(n46), .B2(n83), .A(n84), .ZN(N894) );
  AOI22_X1 U71 ( .A1(N662), .A2(n49), .B1(N696), .B2(n8), .ZN(n84) );
  OAI21_X1 U72 ( .B1(n46), .B2(n85), .A(n86), .ZN(N893) );
  AOI22_X1 U73 ( .A1(N661), .A2(n49), .B1(N695), .B2(n8), .ZN(n86) );
  OAI21_X1 U74 ( .B1(n46), .B2(n87), .A(n88), .ZN(N892) );
  AOI22_X1 U75 ( .A1(N660), .A2(n49), .B1(N694), .B2(n8), .ZN(n88) );
  OAI21_X1 U76 ( .B1(n46), .B2(n89), .A(n90), .ZN(N891) );
  AOI22_X1 U77 ( .A1(N659), .A2(n49), .B1(N693), .B2(n8), .ZN(n90) );
  OAI21_X1 U78 ( .B1(n46), .B2(n91), .A(n92), .ZN(N890) );
  AOI22_X1 U79 ( .A1(N658), .A2(n49), .B1(N692), .B2(n8), .ZN(n92) );
  OAI21_X1 U80 ( .B1(n46), .B2(n93), .A(n94), .ZN(N889) );
  AOI22_X1 U81 ( .A1(N657), .A2(n49), .B1(N691), .B2(n8), .ZN(n94) );
  OAI21_X1 U82 ( .B1(n46), .B2(n95), .A(n96), .ZN(N888) );
  AOI22_X1 U83 ( .A1(N656), .A2(n49), .B1(N690), .B2(n8), .ZN(n96) );
  OAI21_X1 U84 ( .B1(n46), .B2(n97), .A(n98), .ZN(N887) );
  AOI22_X1 U85 ( .A1(N655), .A2(n49), .B1(N689), .B2(n8), .ZN(n98) );
  OAI21_X1 U86 ( .B1(n46), .B2(n99), .A(n100), .ZN(N886) );
  AOI22_X1 U87 ( .A1(N654), .A2(n49), .B1(N688), .B2(n8), .ZN(n100) );
  OAI21_X1 U88 ( .B1(n46), .B2(n101), .A(n102), .ZN(N885) );
  AOI22_X1 U89 ( .A1(N653), .A2(n49), .B1(N687), .B2(n8), .ZN(n102) );
  OAI21_X1 U90 ( .B1(n46), .B2(n103), .A(n104), .ZN(N884) );
  AOI22_X1 U91 ( .A1(N652), .A2(n49), .B1(N686), .B2(n8), .ZN(n104) );
  OAI21_X1 U92 ( .B1(n46), .B2(n105), .A(n106), .ZN(N883) );
  AOI22_X1 U93 ( .A1(N651), .A2(n49), .B1(N685), .B2(n8), .ZN(n106) );
  OAI21_X1 U94 ( .B1(n46), .B2(n107), .A(n108), .ZN(N882) );
  AOI22_X1 U95 ( .A1(N650), .A2(n49), .B1(N684), .B2(n8), .ZN(n108) );
  OAI21_X1 U96 ( .B1(n46), .B2(n109), .A(n110), .ZN(N881) );
  AOI22_X1 U97 ( .A1(N649), .A2(n49), .B1(N683), .B2(n8), .ZN(n110) );
  OAI21_X1 U98 ( .B1(n46), .B2(n111), .A(n112), .ZN(N880) );
  AOI22_X1 U99 ( .A1(N648), .A2(n49), .B1(N682), .B2(n8), .ZN(n112) );
  NOR2_X1 U100 ( .A1(n113), .A2(n114), .ZN(n50) );
  INV_X1 U101 ( .A(n115), .ZN(n113) );
  NOR2_X1 U103 ( .A1(n34), .A2(\cstate[3][1] ), .ZN(n114) );
  AOI211_X1 U104 ( .C1(n116), .C2(n117), .A(n118), .B(n14), .ZN(n115) );
  AND4_X1 U105 ( .A1(n119), .A2(n120), .A3(n121), .A4(n122), .ZN(n117) );
  NOR4_X1 U106 ( .A1(\count[3][22] ), .A2(\count[3][21] ), .A3(\count[3][20] ), 
        .A4(\count[3][1] ), .ZN(n122) );
  NOR4_X1 U107 ( .A1(\count[3][19] ), .A2(\count[3][18] ), .A3(\count[3][17] ), 
        .A4(\count[3][16] ), .ZN(n121) );
  NOR4_X1 U108 ( .A1(\count[3][15] ), .A2(\count[3][14] ), .A3(\count[3][13] ), 
        .A4(\count[3][12] ), .ZN(n120) );
  NOR4_X1 U109 ( .A1(\count[3][11] ), .A2(\count[3][10] ), .A3(\count[3][0] ), 
        .A4(n42), .ZN(n119) );
  NAND2_X1 U110 ( .A1(\cstate[3][1] ), .A2(n34), .ZN(n42) );
  AND4_X1 U111 ( .A1(n123), .A2(n124), .A3(n125), .A4(n126), .ZN(n116) );
  NOR4_X1 U112 ( .A1(n127), .A2(\count[3][7] ), .A3(\count[3][9] ), .A4(
        \count[3][8] ), .ZN(n126) );
  OR2_X1 U113 ( .A1(\count[3][6] ), .A2(\count[3][5] ), .ZN(n127) );
  NOR4_X1 U114 ( .A1(\count[3][4] ), .A2(\count[3][3] ), .A3(\count[3][31] ), 
        .A4(\count[3][30] ), .ZN(n125) );
  NOR4_X1 U115 ( .A1(\count[3][2] ), .A2(\count[3][29] ), .A3(\count[3][28] ), 
        .A4(\count[3][27] ), .ZN(n124) );
  NOR4_X1 U116 ( .A1(\count[3][26] ), .A2(\count[3][25] ), .A3(\count[3][24] ), 
        .A4(\count[3][23] ), .ZN(n123) );
  NOR2_X1 U118 ( .A1(n128), .A2(n32), .ZN(n118) );
  NAND2_X1 U119 ( .A1(address_1), .A2(address_0), .ZN(n32) );
  OAI21_X1 U120 ( .B1(n47), .B2(n129), .A(n130), .ZN(N877) );
  AOI22_X1 U121 ( .A1(N512), .A2(n131), .B1(N546), .B2(n6), .ZN(n130) );
  OAI21_X1 U122 ( .B1(n51), .B2(n129), .A(n133), .ZN(N876) );
  AOI22_X1 U123 ( .A1(N511), .A2(n131), .B1(N545), .B2(n6), .ZN(n133) );
  OAI21_X1 U124 ( .B1(n53), .B2(n129), .A(n134), .ZN(N875) );
  AOI22_X1 U125 ( .A1(N510), .A2(n131), .B1(N544), .B2(n6), .ZN(n134) );
  OAI21_X1 U126 ( .B1(n55), .B2(n129), .A(n135), .ZN(N874) );
  AOI22_X1 U127 ( .A1(N509), .A2(n131), .B1(N543), .B2(n6), .ZN(n135) );
  OAI21_X1 U128 ( .B1(n57), .B2(n129), .A(n136), .ZN(N873) );
  AOI22_X1 U129 ( .A1(N508), .A2(n131), .B1(N542), .B2(n6), .ZN(n136) );
  OAI21_X1 U130 ( .B1(n59), .B2(n129), .A(n137), .ZN(N872) );
  AOI22_X1 U131 ( .A1(N507), .A2(n131), .B1(N541), .B2(n6), .ZN(n137) );
  OAI21_X1 U132 ( .B1(n61), .B2(n129), .A(n138), .ZN(N871) );
  AOI22_X1 U133 ( .A1(N506), .A2(n131), .B1(N540), .B2(n6), .ZN(n138) );
  OAI21_X1 U134 ( .B1(n63), .B2(n129), .A(n139), .ZN(N870) );
  AOI22_X1 U135 ( .A1(N505), .A2(n131), .B1(N539), .B2(n6), .ZN(n139) );
  OAI21_X1 U136 ( .B1(n65), .B2(n129), .A(n140), .ZN(N869) );
  AOI22_X1 U137 ( .A1(N504), .A2(n131), .B1(N538), .B2(n6), .ZN(n140) );
  OAI21_X1 U138 ( .B1(n67), .B2(n129), .A(n141), .ZN(N868) );
  AOI22_X1 U139 ( .A1(N503), .A2(n131), .B1(N537), .B2(n6), .ZN(n141) );
  OAI21_X1 U140 ( .B1(n69), .B2(n129), .A(n142), .ZN(N867) );
  AOI22_X1 U141 ( .A1(N502), .A2(n131), .B1(N536), .B2(n6), .ZN(n142) );
  OAI21_X1 U142 ( .B1(n71), .B2(n129), .A(n143), .ZN(N866) );
  AOI22_X1 U143 ( .A1(N501), .A2(n131), .B1(N535), .B2(n6), .ZN(n143) );
  OAI21_X1 U144 ( .B1(n73), .B2(n129), .A(n144), .ZN(N865) );
  AOI22_X1 U145 ( .A1(N500), .A2(n131), .B1(N534), .B2(n6), .ZN(n144) );
  OAI21_X1 U146 ( .B1(n75), .B2(n129), .A(n145), .ZN(N864) );
  AOI22_X1 U147 ( .A1(N499), .A2(n131), .B1(N533), .B2(n6), .ZN(n145) );
  OAI21_X1 U148 ( .B1(n77), .B2(n129), .A(n146), .ZN(N863) );
  AOI22_X1 U149 ( .A1(N498), .A2(n131), .B1(N532), .B2(n6), .ZN(n146) );
  OAI21_X1 U150 ( .B1(n79), .B2(n129), .A(n147), .ZN(N862) );
  AOI22_X1 U151 ( .A1(N497), .A2(n131), .B1(N531), .B2(n6), .ZN(n147) );
  OAI21_X1 U152 ( .B1(n81), .B2(n129), .A(n148), .ZN(N861) );
  AOI22_X1 U153 ( .A1(N496), .A2(n131), .B1(N530), .B2(n6), .ZN(n148) );
  OAI21_X1 U154 ( .B1(n83), .B2(n129), .A(n149), .ZN(N860) );
  AOI22_X1 U155 ( .A1(N495), .A2(n131), .B1(N529), .B2(n6), .ZN(n149) );
  OAI21_X1 U156 ( .B1(n85), .B2(n129), .A(n150), .ZN(N859) );
  AOI22_X1 U157 ( .A1(N494), .A2(n131), .B1(N528), .B2(n6), .ZN(n150) );
  OAI21_X1 U158 ( .B1(n87), .B2(n129), .A(n151), .ZN(N858) );
  AOI22_X1 U159 ( .A1(N493), .A2(n131), .B1(N527), .B2(n6), .ZN(n151) );
  OAI21_X1 U160 ( .B1(n89), .B2(n129), .A(n152), .ZN(N857) );
  AOI22_X1 U161 ( .A1(N492), .A2(n131), .B1(N526), .B2(n6), .ZN(n152) );
  OAI21_X1 U162 ( .B1(n91), .B2(n129), .A(n153), .ZN(N856) );
  AOI22_X1 U163 ( .A1(N491), .A2(n131), .B1(N525), .B2(n6), .ZN(n153) );
  OAI21_X1 U164 ( .B1(n93), .B2(n129), .A(n154), .ZN(N855) );
  AOI22_X1 U165 ( .A1(N490), .A2(n131), .B1(N524), .B2(n6), .ZN(n154) );
  OAI21_X1 U166 ( .B1(n95), .B2(n129), .A(n155), .ZN(N854) );
  AOI22_X1 U167 ( .A1(N489), .A2(n131), .B1(N523), .B2(n6), .ZN(n155) );
  OAI21_X1 U168 ( .B1(n97), .B2(n129), .A(n156), .ZN(N853) );
  AOI22_X1 U169 ( .A1(N488), .A2(n131), .B1(N522), .B2(n6), .ZN(n156) );
  OAI21_X1 U170 ( .B1(n99), .B2(n129), .A(n157), .ZN(N852) );
  AOI22_X1 U171 ( .A1(N487), .A2(n131), .B1(N521), .B2(n6), .ZN(n157) );
  OAI21_X1 U172 ( .B1(n101), .B2(n129), .A(n158), .ZN(N851) );
  AOI22_X1 U173 ( .A1(N486), .A2(n131), .B1(N520), .B2(n6), .ZN(n158) );
  OAI21_X1 U174 ( .B1(n103), .B2(n129), .A(n159), .ZN(N850) );
  AOI22_X1 U175 ( .A1(N485), .A2(n131), .B1(N519), .B2(n6), .ZN(n159) );
  OAI21_X1 U176 ( .B1(n105), .B2(n129), .A(n160), .ZN(N849) );
  AOI22_X1 U177 ( .A1(N484), .A2(n131), .B1(N518), .B2(n6), .ZN(n160) );
  OAI21_X1 U178 ( .B1(n107), .B2(n129), .A(n161), .ZN(N848) );
  AOI22_X1 U179 ( .A1(N483), .A2(n131), .B1(N517), .B2(n6), .ZN(n161) );
  OAI21_X1 U180 ( .B1(n109), .B2(n129), .A(n162), .ZN(N847) );
  AOI22_X1 U181 ( .A1(N482), .A2(n131), .B1(N516), .B2(n6), .ZN(n162) );
  OAI21_X1 U182 ( .B1(n111), .B2(n129), .A(n163), .ZN(N846) );
  AOI22_X1 U183 ( .A1(N481), .A2(n131), .B1(N515), .B2(n6), .ZN(n163) );
  NOR2_X1 U184 ( .A1(n164), .A2(n165), .ZN(n132) );
  INV_X1 U185 ( .A(n166), .ZN(n164) );
  NOR2_X1 U187 ( .A1(n29), .A2(\cstate[2][1] ), .ZN(n165) );
  AOI211_X1 U188 ( .C1(n167), .C2(n168), .A(n169), .B(n14), .ZN(n166) );
  AND4_X1 U189 ( .A1(n170), .A2(n171), .A3(n172), .A4(n173), .ZN(n168) );
  NOR4_X1 U190 ( .A1(\count[2][22] ), .A2(\count[2][21] ), .A3(\count[2][20] ), 
        .A4(\count[2][1] ), .ZN(n173) );
  NOR4_X1 U191 ( .A1(\count[2][19] ), .A2(\count[2][18] ), .A3(\count[2][17] ), 
        .A4(\count[2][16] ), .ZN(n172) );
  NOR4_X1 U192 ( .A1(\count[2][15] ), .A2(\count[2][14] ), .A3(\count[2][13] ), 
        .A4(\count[2][12] ), .ZN(n171) );
  NOR4_X1 U193 ( .A1(\count[2][11] ), .A2(\count[2][10] ), .A3(\count[2][0] ), 
        .A4(n43), .ZN(n170) );
  NAND2_X1 U194 ( .A1(\cstate[2][1] ), .A2(n29), .ZN(n43) );
  AND4_X1 U195 ( .A1(n174), .A2(n175), .A3(n176), .A4(n177), .ZN(n167) );
  NOR4_X1 U196 ( .A1(n178), .A2(\count[2][7] ), .A3(\count[2][9] ), .A4(
        \count[2][8] ), .ZN(n177) );
  OR2_X1 U197 ( .A1(\count[2][6] ), .A2(\count[2][5] ), .ZN(n178) );
  NOR4_X1 U198 ( .A1(\count[2][4] ), .A2(\count[2][3] ), .A3(\count[2][31] ), 
        .A4(\count[2][30] ), .ZN(n176) );
  NOR4_X1 U199 ( .A1(\count[2][2] ), .A2(\count[2][29] ), .A3(\count[2][28] ), 
        .A4(\count[2][27] ), .ZN(n175) );
  NOR4_X1 U200 ( .A1(\count[2][26] ), .A2(\count[2][25] ), .A3(\count[2][24] ), 
        .A4(\count[2][23] ), .ZN(n174) );
  NOR2_X1 U202 ( .A1(n128), .A2(n28), .ZN(n169) );
  NAND2_X1 U203 ( .A1(address_1), .A2(n179), .ZN(n28) );
  OAI21_X1 U204 ( .B1(n47), .B2(n180), .A(n181), .ZN(N843) );
  AOI22_X1 U205 ( .A1(N345), .A2(n182), .B1(N379), .B2(n293), .ZN(n181) );
  OAI21_X1 U206 ( .B1(n51), .B2(n180), .A(n184), .ZN(N842) );
  AOI22_X1 U207 ( .A1(N344), .A2(n182), .B1(N378), .B2(n293), .ZN(n184) );
  OAI21_X1 U208 ( .B1(n53), .B2(n180), .A(n185), .ZN(N841) );
  AOI22_X1 U209 ( .A1(N343), .A2(n182), .B1(N377), .B2(n293), .ZN(n185) );
  OAI21_X1 U210 ( .B1(n55), .B2(n180), .A(n186), .ZN(N840) );
  AOI22_X1 U211 ( .A1(N342), .A2(n182), .B1(N376), .B2(n293), .ZN(n186) );
  OAI21_X1 U212 ( .B1(n57), .B2(n180), .A(n187), .ZN(N839) );
  AOI22_X1 U213 ( .A1(N341), .A2(n182), .B1(N375), .B2(n293), .ZN(n187) );
  OAI21_X1 U214 ( .B1(n59), .B2(n180), .A(n188), .ZN(N838) );
  AOI22_X1 U215 ( .A1(N340), .A2(n182), .B1(N374), .B2(n293), .ZN(n188) );
  OAI21_X1 U216 ( .B1(n61), .B2(n180), .A(n189), .ZN(N837) );
  AOI22_X1 U217 ( .A1(N339), .A2(n182), .B1(N373), .B2(n293), .ZN(n189) );
  OAI21_X1 U218 ( .B1(n63), .B2(n180), .A(n190), .ZN(N836) );
  AOI22_X1 U219 ( .A1(N338), .A2(n182), .B1(N372), .B2(n293), .ZN(n190) );
  OAI21_X1 U220 ( .B1(n65), .B2(n180), .A(n191), .ZN(N835) );
  AOI22_X1 U221 ( .A1(N337), .A2(n182), .B1(N371), .B2(n293), .ZN(n191) );
  OAI21_X1 U222 ( .B1(n67), .B2(n180), .A(n192), .ZN(N834) );
  AOI22_X1 U223 ( .A1(N336), .A2(n182), .B1(N370), .B2(n293), .ZN(n192) );
  OAI21_X1 U224 ( .B1(n69), .B2(n180), .A(n193), .ZN(N833) );
  AOI22_X1 U225 ( .A1(N335), .A2(n182), .B1(N369), .B2(n293), .ZN(n193) );
  OAI21_X1 U226 ( .B1(n71), .B2(n180), .A(n194), .ZN(N832) );
  AOI22_X1 U227 ( .A1(N334), .A2(n182), .B1(N368), .B2(n293), .ZN(n194) );
  OAI21_X1 U228 ( .B1(n73), .B2(n180), .A(n195), .ZN(N831) );
  AOI22_X1 U229 ( .A1(N333), .A2(n182), .B1(N367), .B2(n293), .ZN(n195) );
  OAI21_X1 U230 ( .B1(n75), .B2(n180), .A(n196), .ZN(N830) );
  AOI22_X1 U231 ( .A1(N332), .A2(n182), .B1(N366), .B2(n293), .ZN(n196) );
  OAI21_X1 U232 ( .B1(n77), .B2(n180), .A(n197), .ZN(N829) );
  AOI22_X1 U233 ( .A1(N331), .A2(n182), .B1(N365), .B2(n293), .ZN(n197) );
  OAI21_X1 U234 ( .B1(n79), .B2(n180), .A(n198), .ZN(N828) );
  AOI22_X1 U235 ( .A1(N330), .A2(n182), .B1(N364), .B2(n293), .ZN(n198) );
  OAI21_X1 U236 ( .B1(n81), .B2(n180), .A(n199), .ZN(N827) );
  AOI22_X1 U237 ( .A1(N329), .A2(n182), .B1(N363), .B2(n293), .ZN(n199) );
  OAI21_X1 U238 ( .B1(n83), .B2(n180), .A(n200), .ZN(N826) );
  AOI22_X1 U239 ( .A1(N328), .A2(n182), .B1(N362), .B2(n293), .ZN(n200) );
  OAI21_X1 U240 ( .B1(n85), .B2(n180), .A(n201), .ZN(N825) );
  AOI22_X1 U241 ( .A1(N327), .A2(n182), .B1(N361), .B2(n293), .ZN(n201) );
  OAI21_X1 U242 ( .B1(n87), .B2(n180), .A(n202), .ZN(N824) );
  AOI22_X1 U243 ( .A1(N326), .A2(n182), .B1(N360), .B2(n293), .ZN(n202) );
  OAI21_X1 U244 ( .B1(n89), .B2(n180), .A(n203), .ZN(N823) );
  AOI22_X1 U245 ( .A1(N325), .A2(n182), .B1(N359), .B2(n293), .ZN(n203) );
  OAI21_X1 U246 ( .B1(n91), .B2(n180), .A(n204), .ZN(N822) );
  AOI22_X1 U247 ( .A1(N324), .A2(n182), .B1(N358), .B2(n293), .ZN(n204) );
  OAI21_X1 U248 ( .B1(n93), .B2(n180), .A(n205), .ZN(N821) );
  AOI22_X1 U249 ( .A1(N323), .A2(n182), .B1(N357), .B2(n293), .ZN(n205) );
  OAI21_X1 U250 ( .B1(n95), .B2(n180), .A(n206), .ZN(N820) );
  AOI22_X1 U251 ( .A1(N322), .A2(n182), .B1(N356), .B2(n293), .ZN(n206) );
  OAI21_X1 U252 ( .B1(n97), .B2(n180), .A(n207), .ZN(N819) );
  AOI22_X1 U253 ( .A1(N321), .A2(n182), .B1(N355), .B2(n293), .ZN(n207) );
  OAI21_X1 U254 ( .B1(n99), .B2(n180), .A(n208), .ZN(N818) );
  AOI22_X1 U255 ( .A1(N320), .A2(n182), .B1(N354), .B2(n293), .ZN(n208) );
  OAI21_X1 U256 ( .B1(n101), .B2(n180), .A(n209), .ZN(N817) );
  AOI22_X1 U257 ( .A1(N319), .A2(n182), .B1(N353), .B2(n293), .ZN(n209) );
  OAI21_X1 U258 ( .B1(n103), .B2(n180), .A(n210), .ZN(N816) );
  AOI22_X1 U259 ( .A1(N318), .A2(n182), .B1(N352), .B2(n293), .ZN(n210) );
  OAI21_X1 U260 ( .B1(n105), .B2(n180), .A(n211), .ZN(N815) );
  AOI22_X1 U261 ( .A1(N317), .A2(n182), .B1(N351), .B2(n293), .ZN(n211) );
  OAI21_X1 U262 ( .B1(n107), .B2(n180), .A(n212), .ZN(N814) );
  AOI22_X1 U263 ( .A1(N316), .A2(n182), .B1(N350), .B2(n293), .ZN(n212) );
  OAI21_X1 U264 ( .B1(n109), .B2(n180), .A(n213), .ZN(N813) );
  AOI22_X1 U265 ( .A1(N315), .A2(n182), .B1(N349), .B2(n293), .ZN(n213) );
  OAI21_X1 U266 ( .B1(n111), .B2(n180), .A(n214), .ZN(N812) );
  AOI22_X1 U267 ( .A1(N314), .A2(n182), .B1(N348), .B2(n293), .ZN(n214) );
  NOR2_X1 U268 ( .A1(n215), .A2(n216), .ZN(n183) );
  INV_X1 U269 ( .A(n217), .ZN(n215) );
  NOR2_X1 U271 ( .A1(n25), .A2(\cstate[1][1] ), .ZN(n216) );
  AOI211_X1 U272 ( .C1(n218), .C2(n219), .A(n220), .B(n14), .ZN(n217) );
  AND4_X1 U273 ( .A1(n221), .A2(n222), .A3(n223), .A4(n224), .ZN(n219) );
  NOR4_X1 U274 ( .A1(\count[1][22] ), .A2(\count[1][21] ), .A3(\count[1][20] ), 
        .A4(\count[1][1] ), .ZN(n224) );
  NOR4_X1 U275 ( .A1(\count[1][19] ), .A2(\count[1][18] ), .A3(\count[1][17] ), 
        .A4(\count[1][16] ), .ZN(n223) );
  NOR4_X1 U276 ( .A1(\count[1][15] ), .A2(\count[1][14] ), .A3(\count[1][13] ), 
        .A4(\count[1][12] ), .ZN(n222) );
  NOR4_X1 U277 ( .A1(\count[1][11] ), .A2(\count[1][10] ), .A3(\count[1][0] ), 
        .A4(n44), .ZN(n221) );
  NAND2_X1 U278 ( .A1(\cstate[1][1] ), .A2(n25), .ZN(n44) );
  AND4_X1 U279 ( .A1(n225), .A2(n226), .A3(n227), .A4(n228), .ZN(n218) );
  NOR4_X1 U280 ( .A1(n229), .A2(\count[1][7] ), .A3(\count[1][9] ), .A4(
        \count[1][8] ), .ZN(n228) );
  OR2_X1 U281 ( .A1(\count[1][6] ), .A2(\count[1][5] ), .ZN(n229) );
  NOR4_X1 U282 ( .A1(\count[1][4] ), .A2(\count[1][3] ), .A3(\count[1][31] ), 
        .A4(\count[1][30] ), .ZN(n227) );
  NOR4_X1 U283 ( .A1(\count[1][2] ), .A2(\count[1][29] ), .A3(\count[1][28] ), 
        .A4(\count[1][27] ), .ZN(n226) );
  NOR4_X1 U284 ( .A1(\count[1][26] ), .A2(\count[1][25] ), .A3(\count[1][24] ), 
        .A4(\count[1][23] ), .ZN(n225) );
  NOR2_X1 U286 ( .A1(n128), .A2(n22), .ZN(n220) );
  OR2_X1 U287 ( .A1(n179), .A2(address_1), .ZN(n22) );
  INV_X1 U288 ( .A(address_0), .ZN(n179) );
  OAI21_X1 U289 ( .B1(n47), .B2(n230), .A(n231), .ZN(N809) );
  AOI22_X1 U290 ( .A1(N178), .A2(n232), .B1(N212), .B2(n291), .ZN(n231) );
  INV_X1 U291 ( .A(data_in[31]), .ZN(n47) );
  OAI21_X1 U292 ( .B1(n51), .B2(n230), .A(n234), .ZN(N808) );
  AOI22_X1 U293 ( .A1(N177), .A2(n232), .B1(N211), .B2(n291), .ZN(n234) );
  INV_X1 U294 ( .A(data_in[30]), .ZN(n51) );
  OAI21_X1 U295 ( .B1(n53), .B2(n230), .A(n235), .ZN(N807) );
  AOI22_X1 U296 ( .A1(N176), .A2(n232), .B1(N210), .B2(n291), .ZN(n235) );
  INV_X1 U297 ( .A(data_in[29]), .ZN(n53) );
  OAI21_X1 U298 ( .B1(n55), .B2(n230), .A(n236), .ZN(N806) );
  AOI22_X1 U299 ( .A1(N175), .A2(n232), .B1(N209), .B2(n291), .ZN(n236) );
  INV_X1 U300 ( .A(data_in[28]), .ZN(n55) );
  OAI21_X1 U301 ( .B1(n57), .B2(n230), .A(n237), .ZN(N805) );
  AOI22_X1 U302 ( .A1(N174), .A2(n232), .B1(N208), .B2(n291), .ZN(n237) );
  INV_X1 U303 ( .A(data_in[27]), .ZN(n57) );
  OAI21_X1 U304 ( .B1(n59), .B2(n230), .A(n238), .ZN(N804) );
  AOI22_X1 U305 ( .A1(N173), .A2(n232), .B1(N207), .B2(n291), .ZN(n238) );
  INV_X1 U306 ( .A(data_in[26]), .ZN(n59) );
  OAI21_X1 U307 ( .B1(n61), .B2(n230), .A(n239), .ZN(N803) );
  AOI22_X1 U308 ( .A1(N172), .A2(n232), .B1(N206), .B2(n291), .ZN(n239) );
  INV_X1 U309 ( .A(data_in[25]), .ZN(n61) );
  OAI21_X1 U310 ( .B1(n63), .B2(n230), .A(n240), .ZN(N802) );
  AOI22_X1 U311 ( .A1(N171), .A2(n232), .B1(N205), .B2(n291), .ZN(n240) );
  INV_X1 U312 ( .A(data_in[24]), .ZN(n63) );
  OAI21_X1 U313 ( .B1(n65), .B2(n230), .A(n241), .ZN(N801) );
  AOI22_X1 U314 ( .A1(N170), .A2(n232), .B1(N204), .B2(n291), .ZN(n241) );
  INV_X1 U315 ( .A(data_in[23]), .ZN(n65) );
  OAI21_X1 U316 ( .B1(n67), .B2(n230), .A(n242), .ZN(N800) );
  AOI22_X1 U317 ( .A1(N169), .A2(n232), .B1(N203), .B2(n291), .ZN(n242) );
  INV_X1 U318 ( .A(data_in[22]), .ZN(n67) );
  OAI21_X1 U319 ( .B1(n69), .B2(n230), .A(n243), .ZN(N799) );
  AOI22_X1 U320 ( .A1(N168), .A2(n232), .B1(N202), .B2(n291), .ZN(n243) );
  INV_X1 U321 ( .A(data_in[21]), .ZN(n69) );
  OAI21_X1 U322 ( .B1(n71), .B2(n230), .A(n244), .ZN(N798) );
  AOI22_X1 U323 ( .A1(N167), .A2(n232), .B1(N201), .B2(n291), .ZN(n244) );
  INV_X1 U324 ( .A(data_in[20]), .ZN(n71) );
  OAI21_X1 U325 ( .B1(n73), .B2(n230), .A(n245), .ZN(N797) );
  AOI22_X1 U326 ( .A1(N166), .A2(n232), .B1(N200), .B2(n291), .ZN(n245) );
  INV_X1 U327 ( .A(data_in[19]), .ZN(n73) );
  OAI21_X1 U328 ( .B1(n75), .B2(n230), .A(n246), .ZN(N796) );
  AOI22_X1 U329 ( .A1(N165), .A2(n232), .B1(N199), .B2(n291), .ZN(n246) );
  INV_X1 U330 ( .A(data_in[18]), .ZN(n75) );
  OAI21_X1 U331 ( .B1(n77), .B2(n230), .A(n247), .ZN(N795) );
  AOI22_X1 U332 ( .A1(N164), .A2(n232), .B1(N198), .B2(n291), .ZN(n247) );
  INV_X1 U333 ( .A(data_in[17]), .ZN(n77) );
  OAI21_X1 U334 ( .B1(n79), .B2(n230), .A(n248), .ZN(N794) );
  AOI22_X1 U335 ( .A1(N163), .A2(n232), .B1(N197), .B2(n291), .ZN(n248) );
  INV_X1 U336 ( .A(data_in[16]), .ZN(n79) );
  OAI21_X1 U337 ( .B1(n81), .B2(n230), .A(n249), .ZN(N793) );
  AOI22_X1 U338 ( .A1(N162), .A2(n232), .B1(N196), .B2(n291), .ZN(n249) );
  INV_X1 U339 ( .A(data_in[15]), .ZN(n81) );
  OAI21_X1 U340 ( .B1(n83), .B2(n230), .A(n250), .ZN(N792) );
  AOI22_X1 U341 ( .A1(N161), .A2(n232), .B1(N195), .B2(n291), .ZN(n250) );
  INV_X1 U342 ( .A(data_in[14]), .ZN(n83) );
  OAI21_X1 U343 ( .B1(n85), .B2(n230), .A(n251), .ZN(N791) );
  AOI22_X1 U344 ( .A1(N160), .A2(n232), .B1(N194), .B2(n291), .ZN(n251) );
  INV_X1 U345 ( .A(data_in[13]), .ZN(n85) );
  OAI21_X1 U346 ( .B1(n87), .B2(n230), .A(n252), .ZN(N790) );
  AOI22_X1 U347 ( .A1(N159), .A2(n232), .B1(N193), .B2(n291), .ZN(n252) );
  INV_X1 U348 ( .A(data_in[12]), .ZN(n87) );
  OAI21_X1 U349 ( .B1(n89), .B2(n230), .A(n253), .ZN(N789) );
  AOI22_X1 U350 ( .A1(N158), .A2(n232), .B1(N192), .B2(n291), .ZN(n253) );
  INV_X1 U351 ( .A(data_in[11]), .ZN(n89) );
  OAI21_X1 U352 ( .B1(n91), .B2(n230), .A(n254), .ZN(N788) );
  AOI22_X1 U353 ( .A1(N157), .A2(n232), .B1(N191), .B2(n291), .ZN(n254) );
  INV_X1 U354 ( .A(data_in[10]), .ZN(n91) );
  OAI21_X1 U355 ( .B1(n93), .B2(n230), .A(n255), .ZN(N787) );
  AOI22_X1 U356 ( .A1(N156), .A2(n232), .B1(N190), .B2(n291), .ZN(n255) );
  INV_X1 U357 ( .A(data_in[9]), .ZN(n93) );
  OAI21_X1 U358 ( .B1(n95), .B2(n230), .A(n256), .ZN(N786) );
  AOI22_X1 U359 ( .A1(N155), .A2(n232), .B1(N189), .B2(n291), .ZN(n256) );
  INV_X1 U360 ( .A(data_in[8]), .ZN(n95) );
  OAI21_X1 U361 ( .B1(n97), .B2(n230), .A(n257), .ZN(N785) );
  AOI22_X1 U362 ( .A1(N154), .A2(n232), .B1(N188), .B2(n291), .ZN(n257) );
  INV_X1 U363 ( .A(data_in[7]), .ZN(n97) );
  OAI21_X1 U364 ( .B1(n99), .B2(n230), .A(n258), .ZN(N784) );
  AOI22_X1 U365 ( .A1(N153), .A2(n232), .B1(N187), .B2(n291), .ZN(n258) );
  INV_X1 U366 ( .A(data_in[6]), .ZN(n99) );
  OAI21_X1 U367 ( .B1(n101), .B2(n230), .A(n259), .ZN(N783) );
  AOI22_X1 U368 ( .A1(N152), .A2(n232), .B1(N186), .B2(n291), .ZN(n259) );
  INV_X1 U369 ( .A(data_in[5]), .ZN(n101) );
  OAI21_X1 U370 ( .B1(n103), .B2(n230), .A(n260), .ZN(N782) );
  AOI22_X1 U371 ( .A1(N151), .A2(n232), .B1(N185), .B2(n291), .ZN(n260) );
  INV_X1 U372 ( .A(data_in[4]), .ZN(n103) );
  OAI21_X1 U373 ( .B1(n105), .B2(n230), .A(n261), .ZN(N781) );
  AOI22_X1 U374 ( .A1(N150), .A2(n232), .B1(N184), .B2(n291), .ZN(n261) );
  INV_X1 U375 ( .A(data_in[3]), .ZN(n105) );
  OAI21_X1 U376 ( .B1(n107), .B2(n230), .A(n262), .ZN(N780) );
  AOI22_X1 U377 ( .A1(N149), .A2(n232), .B1(N183), .B2(n291), .ZN(n262) );
  INV_X1 U378 ( .A(data_in[2]), .ZN(n107) );
  OAI21_X1 U379 ( .B1(n109), .B2(n230), .A(n263), .ZN(N779) );
  AOI22_X1 U380 ( .A1(N148), .A2(n232), .B1(N182), .B2(n291), .ZN(n263) );
  INV_X1 U381 ( .A(data_in[1]), .ZN(n109) );
  OAI21_X1 U382 ( .B1(n111), .B2(n230), .A(n264), .ZN(N778) );
  AOI22_X1 U383 ( .A1(N147), .A2(n232), .B1(N181), .B2(n291), .ZN(n264) );
  NOR2_X1 U384 ( .A1(n265), .A2(n266), .ZN(n233) );
  INV_X1 U385 ( .A(n267), .ZN(n265) );
  NOR2_X1 U387 ( .A1(n20), .A2(\cstate[0][1] ), .ZN(n266) );
  AOI211_X1 U388 ( .C1(n268), .C2(n269), .A(n270), .B(n14), .ZN(n267) );
  INV_X1 U389 ( .A(resetn), .ZN(n14) );
  AND4_X1 U390 ( .A1(n271), .A2(n272), .A3(n273), .A4(n274), .ZN(n269) );
  NOR4_X1 U391 ( .A1(\count[0][22] ), .A2(\count[0][21] ), .A3(\count[0][20] ), 
        .A4(\count[0][1] ), .ZN(n274) );
  NOR4_X1 U392 ( .A1(\count[0][19] ), .A2(\count[0][18] ), .A3(\count[0][17] ), 
        .A4(\count[0][16] ), .ZN(n273) );
  NOR4_X1 U393 ( .A1(\count[0][15] ), .A2(\count[0][14] ), .A3(\count[0][13] ), 
        .A4(\count[0][12] ), .ZN(n272) );
  NOR4_X1 U394 ( .A1(\count[0][11] ), .A2(\count[0][10] ), .A3(\count[0][0] ), 
        .A4(n45), .ZN(n271) );
  NAND2_X1 U395 ( .A1(\cstate[0][1] ), .A2(n20), .ZN(n45) );
  AND4_X1 U396 ( .A1(n275), .A2(n276), .A3(n277), .A4(n278), .ZN(n268) );
  NOR4_X1 U397 ( .A1(n279), .A2(\count[0][7] ), .A3(\count[0][9] ), .A4(
        \count[0][8] ), .ZN(n278) );
  OR2_X1 U398 ( .A1(\count[0][6] ), .A2(\count[0][5] ), .ZN(n279) );
  NOR4_X1 U399 ( .A1(\count[0][4] ), .A2(\count[0][3] ), .A3(\count[0][31] ), 
        .A4(\count[0][30] ), .ZN(n277) );
  NOR4_X1 U400 ( .A1(\count[0][2] ), .A2(\count[0][29] ), .A3(\count[0][28] ), 
        .A4(\count[0][27] ), .ZN(n276) );
  NOR4_X1 U401 ( .A1(\count[0][26] ), .A2(\count[0][25] ), .A3(\count[0][24] ), 
        .A4(\count[0][23] ), .ZN(n275) );
  NOR2_X1 U403 ( .A1(n128), .A2(n16), .ZN(n270) );
  OR2_X1 U404 ( .A1(address_0), .A2(address_1), .ZN(n16) );
  NAND3_X1 U405 ( .A1(wrn), .A2(n39), .A3(n40), .ZN(n128) );
  NOR3_X1 U406 ( .A1(address[5]), .A2(address[6]), .A3(n35), .ZN(n40) );
  INV_X1 U407 ( .A(address[4]), .ZN(n35) );
  INV_X1 U408 ( .A(address[7]), .ZN(n39) );
  INV_X1 U409 ( .A(data_in[0]), .ZN(n111) );
  counter_32_4_1_DW01_sub_0 sub_83_G4_aco ( .A({\count[3][31] , \count[3][30] , 
        \count[3][29] , \count[3][28] , \count[3][27] , \count[3][26] , 
        \count[3][25] , \count[3][24] , \count[3][23] , \count[3][22] , 
        \count[3][21] , \count[3][20] , \count[3][19] , \count[3][18] , 
        \count[3][17] , \count[3][16] , \count[3][15] , \count[3][14] , 
        \count[3][13] , \count[3][12] , \count[3][11] , \count[3][10] , 
        \count[3][9] , \count[3][8] , \count[3][7] , \count[3][6] , 
        \count[3][5] , \count[3][4] , \count[3][3] , \count[3][2] , 
        \count[3][1] , \count[3][0] }), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N949}), .CI(1'b0), .DIFF({N713, N712, N711, N710, N709, N708, 
        N707, N706, N705, N704, N703, N702, N701, N700, N699, N698, N697, N696, 
        N695, N694, N693, N692, N691, N690, N689, N688, N687, N686, N685, N684, 
        N683, N682}) );
  counter_32_4_1_DW01_inc_0 add_83_G4 ( .A({\count[3][31] , \count[3][30] , 
        \count[3][29] , \count[3][28] , \count[3][27] , \count[3][26] , 
        \count[3][25] , \count[3][24] , \count[3][23] , \count[3][22] , 
        \count[3][21] , \count[3][20] , \count[3][19] , \count[3][18] , 
        \count[3][17] , \count[3][16] , \count[3][15] , \count[3][14] , 
        \count[3][13] , \count[3][12] , \count[3][11] , \count[3][10] , 
        \count[3][9] , \count[3][8] , \count[3][7] , \count[3][6] , 
        \count[3][5] , \count[3][4] , \count[3][3] , \count[3][2] , 
        \count[3][1] , \count[3][0] }), .SUM({N679, N678, N677, N676, N675, 
        N674, N673, N672, N671, N670, N669, N668, N667, N666, N665, N664, N663, 
        N662, N661, N660, N659, N658, N657, N656, N655, N654, N653, N652, N651, 
        N650, N649, N648}) );
  counter_32_4_1_DW01_sub_1 sub_83_G3_aco ( .A({\count[2][31] , \count[2][30] , 
        \count[2][29] , \count[2][28] , \count[2][27] , \count[2][26] , 
        \count[2][25] , \count[2][24] , \count[2][23] , \count[2][22] , 
        \count[2][21] , \count[2][20] , \count[2][19] , \count[2][18] , 
        \count[2][17] , \count[2][16] , \count[2][15] , \count[2][14] , 
        \count[2][13] , \count[2][12] , \count[2][11] , \count[2][10] , 
        \count[2][9] , \count[2][8] , \count[2][7] , \count[2][6] , 
        \count[2][5] , \count[2][4] , \count[2][3] , \count[2][2] , 
        \count[2][1] , \count[2][0] }), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N946}), .CI(1'b0), .DIFF({N546, N545, N544, N543, N542, N541, 
        N540, N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529, 
        N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, 
        N516, N515}) );
  counter_32_4_1_DW01_inc_1 add_83_G3 ( .A({\count[2][31] , \count[2][30] , 
        \count[2][29] , \count[2][28] , \count[2][27] , \count[2][26] , 
        \count[2][25] , \count[2][24] , \count[2][23] , \count[2][22] , 
        \count[2][21] , \count[2][20] , \count[2][19] , \count[2][18] , 
        \count[2][17] , \count[2][16] , \count[2][15] , \count[2][14] , 
        \count[2][13] , \count[2][12] , \count[2][11] , \count[2][10] , 
        \count[2][9] , \count[2][8] , \count[2][7] , \count[2][6] , 
        \count[2][5] , \count[2][4] , \count[2][3] , \count[2][2] , 
        \count[2][1] , \count[2][0] }), .SUM({N512, N511, N510, N509, N508, 
        N507, N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496, 
        N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485, N484, 
        N483, N482, N481}) );
  counter_32_4_1_DW01_sub_2 sub_83_G2_aco ( .A({\count[1][31] , \count[1][30] , 
        \count[1][29] , \count[1][28] , \count[1][27] , \count[1][26] , 
        \count[1][25] , \count[1][24] , \count[1][23] , \count[1][22] , 
        \count[1][21] , \count[1][20] , \count[1][19] , \count[1][18] , 
        \count[1][17] , \count[1][16] , \count[1][15] , \count[1][14] , 
        \count[1][13] , \count[1][12] , \count[1][11] , \count[1][10] , 
        \count[1][9] , \count[1][8] , \count[1][7] , \count[1][6] , 
        \count[1][5] , \count[1][4] , \count[1][3] , \count[1][2] , 
        \count[1][1] , \count[1][0] }), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N943}), .CI(1'b0), .DIFF({N379, N378, N377, N376, N375, N374, 
        N373, N372, N371, N370, N369, N368, N367, N366, N365, N364, N363, N362, 
        N361, N360, N359, N358, N357, N356, N355, N354, N353, N352, N351, N350, 
        N349, N348}) );
  counter_32_4_1_DW01_inc_2 add_83_G2 ( .A({\count[1][31] , \count[1][30] , 
        \count[1][29] , \count[1][28] , \count[1][27] , \count[1][26] , 
        \count[1][25] , \count[1][24] , \count[1][23] , \count[1][22] , 
        \count[1][21] , \count[1][20] , \count[1][19] , \count[1][18] , 
        \count[1][17] , \count[1][16] , \count[1][15] , \count[1][14] , 
        \count[1][13] , \count[1][12] , \count[1][11] , \count[1][10] , 
        \count[1][9] , \count[1][8] , \count[1][7] , \count[1][6] , 
        \count[1][5] , \count[1][4] , \count[1][3] , \count[1][2] , 
        \count[1][1] , \count[1][0] }), .SUM({N345, N344, N343, N342, N341, 
        N340, N339, N338, N337, N336, N335, N334, N333, N332, N331, N330, N329, 
        N328, N327, N326, N325, N324, N323, N322, N321, N320, N319, N318, N317, 
        N316, N315, N314}) );
  counter_32_4_1_DW01_sub_3 sub_83_aco ( .A({\count[0][31] , \count[0][30] , 
        \count[0][29] , \count[0][28] , \count[0][27] , \count[0][26] , 
        \count[0][25] , \count[0][24] , \count[0][23] , \count[0][22] , 
        \count[0][21] , \count[0][20] , \count[0][19] , \count[0][18] , 
        \count[0][17] , \count[0][16] , \count[0][15] , \count[0][14] , 
        \count[0][13] , \count[0][12] , \count[0][11] , \count[0][10] , 
        \count[0][9] , \count[0][8] , \count[0][7] , \count[0][6] , 
        \count[0][5] , \count[0][4] , \count[0][3] , \count[0][2] , 
        \count[0][1] , \count[0][0] }), .B({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, N940}), .CI(1'b0), .DIFF({N212, N211, N210, N209, N208, N207, 
        N206, N205, N204, N203, N202, N201, N200, N199, N198, N197, N196, N195, 
        N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, N184, N183, 
        N182, N181}) );
  counter_32_4_1_DW01_inc_3 add_83 ( .A({\count[0][31] , \count[0][30] , 
        \count[0][29] , \count[0][28] , \count[0][27] , \count[0][26] , 
        \count[0][25] , \count[0][24] , \count[0][23] , \count[0][22] , 
        \count[0][21] , \count[0][20] , \count[0][19] , \count[0][18] , 
        \count[0][17] , \count[0][16] , \count[0][15] , \count[0][14] , 
        \count[0][13] , \count[0][12] , \count[0][11] , \count[0][10] , 
        \count[0][9] , \count[0][8] , \count[0][7] , \count[0][6] , 
        \count[0][5] , \count[0][4] , \count[0][3] , \count[0][2] , 
        \count[0][1] , \count[0][0] }), .SUM({N178, N177, N176, N175, N174, 
        N173, N172, N171, N170, N169, N168, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156, N155, N154, N153, N152, N151, N150, 
        N149, N148, N147}) );
  NAND2_X2 U102 ( .A1(n270), .A2(resetn), .ZN(n230) );
  NAND2_X2 U117 ( .A1(n220), .A2(resetn), .ZN(n180) );
  NAND2_X2 U186 ( .A1(n169), .A2(resetn), .ZN(n129) );
  AND2_X2 U201 ( .A1(n267), .A2(n266), .ZN(n232) );
  AND2_X2 U270 ( .A1(n217), .A2(n216), .ZN(n182) );
  AND2_X2 U285 ( .A1(n166), .A2(n165), .ZN(n131) );
  AND2_X2 U386 ( .A1(n115), .A2(n114), .ZN(n49) );
  NAND2_X2 U402 ( .A1(n118), .A2(resetn), .ZN(n46) );
  INV_X1 U410 ( .A(n132), .ZN(n5) );
  INV_X2 U411 ( .A(n5), .ZN(n6) );
  INV_X1 U412 ( .A(n50), .ZN(n7) );
  INV_X2 U413 ( .A(n7), .ZN(n8) );
  INV_X1 U414 ( .A(n233), .ZN(n290) );
  INV_X2 U415 ( .A(n290), .ZN(n291) );
  INV_X1 U416 ( .A(n183), .ZN(n292) );
  INV_X2 U417 ( .A(n292), .ZN(n293) );
  INV_X1 U418 ( .A(n366), .ZN(n294) );
  INV_X2 U419 ( .A(n294), .ZN(n295) );
  INV_X1 U420 ( .A(n368), .ZN(n296) );
  INV_X2 U421 ( .A(n296), .ZN(n297) );
  INV_X1 U422 ( .A(n367), .ZN(n298) );
  INV_X2 U423 ( .A(n298), .ZN(n299) );
  INV_X1 U424 ( .A(n369), .ZN(n300) );
  INV_X2 U425 ( .A(n300), .ZN(n301) );
  INV_X1 U426 ( .A(N40), .ZN(n302) );
  NOR2_X1 U427 ( .A1(n302), .A2(N39), .ZN(n367) );
  INV_X1 U428 ( .A(N39), .ZN(n303) );
  NOR2_X1 U429 ( .A1(n302), .A2(n303), .ZN(n366) );
  AOI22_X1 U430 ( .A1(\count[2][0] ), .A2(n299), .B1(\count[3][0] ), .B2(n295), 
        .ZN(n305) );
  NOR2_X1 U431 ( .A1(N39), .A2(N40), .ZN(n369) );
  NOR2_X1 U432 ( .A1(n303), .A2(N40), .ZN(n368) );
  AOI22_X1 U433 ( .A1(\count[0][0] ), .A2(n301), .B1(\count[1][0] ), .B2(n297), 
        .ZN(n304) );
  NAND2_X1 U434 ( .A1(n305), .A2(n304), .ZN(data_out[0]) );
  AOI22_X1 U435 ( .A1(\count[2][1] ), .A2(n299), .B1(\count[3][1] ), .B2(n295), 
        .ZN(n307) );
  AOI22_X1 U436 ( .A1(\count[0][1] ), .A2(n301), .B1(\count[1][1] ), .B2(n297), 
        .ZN(n306) );
  NAND2_X1 U437 ( .A1(n307), .A2(n306), .ZN(data_out[1]) );
  AOI22_X1 U438 ( .A1(\count[2][2] ), .A2(n299), .B1(\count[3][2] ), .B2(n295), 
        .ZN(n309) );
  AOI22_X1 U439 ( .A1(\count[0][2] ), .A2(n301), .B1(\count[1][2] ), .B2(n297), 
        .ZN(n308) );
  NAND2_X1 U440 ( .A1(n309), .A2(n308), .ZN(data_out[2]) );
  AOI22_X1 U441 ( .A1(\count[2][3] ), .A2(n299), .B1(\count[3][3] ), .B2(n295), 
        .ZN(n311) );
  AOI22_X1 U442 ( .A1(\count[0][3] ), .A2(n301), .B1(\count[1][3] ), .B2(n297), 
        .ZN(n310) );
  NAND2_X1 U443 ( .A1(n311), .A2(n310), .ZN(data_out[3]) );
  AOI22_X1 U444 ( .A1(\count[2][4] ), .A2(n299), .B1(\count[3][4] ), .B2(n295), 
        .ZN(n313) );
  AOI22_X1 U445 ( .A1(\count[0][4] ), .A2(n301), .B1(\count[1][4] ), .B2(n297), 
        .ZN(n312) );
  NAND2_X1 U446 ( .A1(n313), .A2(n312), .ZN(data_out[4]) );
  AOI22_X1 U447 ( .A1(\count[2][5] ), .A2(n299), .B1(\count[3][5] ), .B2(n295), 
        .ZN(n315) );
  AOI22_X1 U448 ( .A1(\count[0][5] ), .A2(n301), .B1(\count[1][5] ), .B2(n297), 
        .ZN(n314) );
  NAND2_X1 U449 ( .A1(n315), .A2(n314), .ZN(data_out[5]) );
  AOI22_X1 U450 ( .A1(\count[2][6] ), .A2(n299), .B1(\count[3][6] ), .B2(n295), 
        .ZN(n317) );
  AOI22_X1 U451 ( .A1(\count[0][6] ), .A2(n301), .B1(\count[1][6] ), .B2(n297), 
        .ZN(n316) );
  NAND2_X1 U452 ( .A1(n317), .A2(n316), .ZN(data_out[6]) );
  AOI22_X1 U453 ( .A1(\count[2][7] ), .A2(n299), .B1(\count[3][7] ), .B2(n295), 
        .ZN(n319) );
  AOI22_X1 U454 ( .A1(\count[0][7] ), .A2(n301), .B1(\count[1][7] ), .B2(n297), 
        .ZN(n318) );
  NAND2_X1 U455 ( .A1(n319), .A2(n318), .ZN(data_out[7]) );
  AOI22_X1 U456 ( .A1(\count[2][8] ), .A2(n299), .B1(\count[3][8] ), .B2(n295), 
        .ZN(n321) );
  AOI22_X1 U457 ( .A1(\count[0][8] ), .A2(n301), .B1(\count[1][8] ), .B2(n297), 
        .ZN(n320) );
  NAND2_X1 U458 ( .A1(n321), .A2(n320), .ZN(data_out[8]) );
  AOI22_X1 U459 ( .A1(\count[2][9] ), .A2(n299), .B1(\count[3][9] ), .B2(n295), 
        .ZN(n323) );
  AOI22_X1 U460 ( .A1(\count[0][9] ), .A2(n301), .B1(\count[1][9] ), .B2(n297), 
        .ZN(n322) );
  NAND2_X1 U461 ( .A1(n323), .A2(n322), .ZN(data_out[9]) );
  AOI22_X1 U462 ( .A1(\count[2][10] ), .A2(n299), .B1(\count[3][10] ), .B2(
        n295), .ZN(n325) );
  AOI22_X1 U463 ( .A1(\count[0][10] ), .A2(n301), .B1(\count[1][10] ), .B2(
        n297), .ZN(n324) );
  NAND2_X1 U464 ( .A1(n325), .A2(n324), .ZN(data_out[10]) );
  AOI22_X1 U465 ( .A1(\count[2][11] ), .A2(n299), .B1(\count[3][11] ), .B2(
        n295), .ZN(n327) );
  AOI22_X1 U466 ( .A1(\count[0][11] ), .A2(n301), .B1(\count[1][11] ), .B2(
        n297), .ZN(n326) );
  NAND2_X1 U467 ( .A1(n327), .A2(n326), .ZN(data_out[11]) );
  AOI22_X1 U468 ( .A1(\count[2][12] ), .A2(n299), .B1(\count[3][12] ), .B2(
        n295), .ZN(n329) );
  AOI22_X1 U469 ( .A1(\count[0][12] ), .A2(n301), .B1(\count[1][12] ), .B2(
        n297), .ZN(n328) );
  NAND2_X1 U470 ( .A1(n329), .A2(n328), .ZN(data_out[12]) );
  AOI22_X1 U471 ( .A1(\count[2][13] ), .A2(n299), .B1(\count[3][13] ), .B2(
        n295), .ZN(n331) );
  AOI22_X1 U472 ( .A1(\count[0][13] ), .A2(n301), .B1(\count[1][13] ), .B2(
        n297), .ZN(n330) );
  NAND2_X1 U473 ( .A1(n331), .A2(n330), .ZN(data_out[13]) );
  AOI22_X1 U474 ( .A1(\count[2][14] ), .A2(n299), .B1(\count[3][14] ), .B2(
        n295), .ZN(n333) );
  AOI22_X1 U475 ( .A1(\count[0][14] ), .A2(n301), .B1(\count[1][14] ), .B2(
        n297), .ZN(n332) );
  NAND2_X1 U476 ( .A1(n333), .A2(n332), .ZN(data_out[14]) );
  AOI22_X1 U477 ( .A1(\count[2][15] ), .A2(n299), .B1(\count[3][15] ), .B2(
        n295), .ZN(n335) );
  AOI22_X1 U478 ( .A1(\count[0][15] ), .A2(n301), .B1(\count[1][15] ), .B2(
        n297), .ZN(n334) );
  NAND2_X1 U479 ( .A1(n335), .A2(n334), .ZN(data_out[15]) );
  AOI22_X1 U480 ( .A1(\count[2][16] ), .A2(n299), .B1(\count[3][16] ), .B2(
        n295), .ZN(n337) );
  AOI22_X1 U481 ( .A1(\count[0][16] ), .A2(n301), .B1(\count[1][16] ), .B2(
        n297), .ZN(n336) );
  NAND2_X1 U482 ( .A1(n337), .A2(n336), .ZN(data_out[16]) );
  AOI22_X1 U483 ( .A1(\count[2][17] ), .A2(n299), .B1(\count[3][17] ), .B2(
        n295), .ZN(n339) );
  AOI22_X1 U484 ( .A1(\count[0][17] ), .A2(n301), .B1(\count[1][17] ), .B2(
        n297), .ZN(n338) );
  NAND2_X1 U485 ( .A1(n339), .A2(n338), .ZN(data_out[17]) );
  AOI22_X1 U486 ( .A1(\count[2][18] ), .A2(n299), .B1(\count[3][18] ), .B2(
        n295), .ZN(n341) );
  AOI22_X1 U487 ( .A1(\count[0][18] ), .A2(n301), .B1(\count[1][18] ), .B2(
        n297), .ZN(n340) );
  NAND2_X1 U488 ( .A1(n341), .A2(n340), .ZN(data_out[18]) );
  AOI22_X1 U489 ( .A1(\count[2][19] ), .A2(n299), .B1(\count[3][19] ), .B2(
        n295), .ZN(n343) );
  AOI22_X1 U490 ( .A1(\count[0][19] ), .A2(n301), .B1(\count[1][19] ), .B2(
        n297), .ZN(n342) );
  NAND2_X1 U491 ( .A1(n343), .A2(n342), .ZN(data_out[19]) );
  AOI22_X1 U492 ( .A1(\count[2][20] ), .A2(n299), .B1(\count[3][20] ), .B2(
        n295), .ZN(n345) );
  AOI22_X1 U493 ( .A1(\count[0][20] ), .A2(n301), .B1(\count[1][20] ), .B2(
        n297), .ZN(n344) );
  NAND2_X1 U494 ( .A1(n345), .A2(n344), .ZN(data_out[20]) );
  AOI22_X1 U495 ( .A1(\count[2][21] ), .A2(n299), .B1(\count[3][21] ), .B2(
        n295), .ZN(n347) );
  AOI22_X1 U496 ( .A1(\count[0][21] ), .A2(n301), .B1(\count[1][21] ), .B2(
        n297), .ZN(n346) );
  NAND2_X1 U497 ( .A1(n347), .A2(n346), .ZN(data_out[21]) );
  AOI22_X1 U498 ( .A1(\count[2][22] ), .A2(n299), .B1(\count[3][22] ), .B2(
        n295), .ZN(n349) );
  AOI22_X1 U499 ( .A1(\count[0][22] ), .A2(n301), .B1(\count[1][22] ), .B2(
        n297), .ZN(n348) );
  NAND2_X1 U500 ( .A1(n349), .A2(n348), .ZN(data_out[22]) );
  AOI22_X1 U501 ( .A1(\count[2][23] ), .A2(n299), .B1(\count[3][23] ), .B2(
        n295), .ZN(n351) );
  AOI22_X1 U502 ( .A1(\count[0][23] ), .A2(n301), .B1(\count[1][23] ), .B2(
        n297), .ZN(n350) );
  NAND2_X1 U503 ( .A1(n351), .A2(n350), .ZN(data_out[23]) );
  AOI22_X1 U504 ( .A1(\count[2][24] ), .A2(n299), .B1(\count[3][24] ), .B2(
        n295), .ZN(n353) );
  AOI22_X1 U505 ( .A1(\count[0][24] ), .A2(n301), .B1(\count[1][24] ), .B2(
        n297), .ZN(n352) );
  NAND2_X1 U506 ( .A1(n353), .A2(n352), .ZN(data_out[24]) );
  AOI22_X1 U507 ( .A1(\count[2][25] ), .A2(n299), .B1(\count[3][25] ), .B2(
        n295), .ZN(n355) );
  AOI22_X1 U508 ( .A1(\count[0][25] ), .A2(n301), .B1(\count[1][25] ), .B2(
        n297), .ZN(n354) );
  NAND2_X1 U509 ( .A1(n355), .A2(n354), .ZN(data_out[25]) );
  AOI22_X1 U510 ( .A1(\count[2][26] ), .A2(n299), .B1(\count[3][26] ), .B2(
        n295), .ZN(n357) );
  AOI22_X1 U511 ( .A1(\count[0][26] ), .A2(n301), .B1(\count[1][26] ), .B2(
        n297), .ZN(n356) );
  NAND2_X1 U512 ( .A1(n357), .A2(n356), .ZN(data_out[26]) );
  AOI22_X1 U513 ( .A1(\count[2][27] ), .A2(n299), .B1(\count[3][27] ), .B2(
        n295), .ZN(n359) );
  AOI22_X1 U514 ( .A1(\count[0][27] ), .A2(n301), .B1(\count[1][27] ), .B2(
        n297), .ZN(n358) );
  NAND2_X1 U515 ( .A1(n359), .A2(n358), .ZN(data_out[27]) );
  AOI22_X1 U516 ( .A1(\count[2][28] ), .A2(n299), .B1(\count[3][28] ), .B2(
        n295), .ZN(n361) );
  AOI22_X1 U517 ( .A1(\count[0][28] ), .A2(n301), .B1(\count[1][28] ), .B2(
        n297), .ZN(n360) );
  NAND2_X1 U518 ( .A1(n361), .A2(n360), .ZN(data_out[28]) );
  AOI22_X1 U519 ( .A1(\count[2][29] ), .A2(n299), .B1(\count[3][29] ), .B2(
        n295), .ZN(n363) );
  AOI22_X1 U520 ( .A1(\count[0][29] ), .A2(n301), .B1(\count[1][29] ), .B2(
        n297), .ZN(n362) );
  NAND2_X1 U521 ( .A1(n363), .A2(n362), .ZN(data_out[29]) );
  AOI22_X1 U522 ( .A1(\count[2][30] ), .A2(n299), .B1(\count[3][30] ), .B2(
        n295), .ZN(n365) );
  AOI22_X1 U523 ( .A1(\count[0][30] ), .A2(n301), .B1(\count[1][30] ), .B2(
        n297), .ZN(n364) );
  NAND2_X1 U524 ( .A1(n365), .A2(n364), .ZN(data_out[30]) );
  AOI22_X1 U525 ( .A1(\count[2][31] ), .A2(n299), .B1(\count[3][31] ), .B2(
        n295), .ZN(n371) );
  AOI22_X1 U526 ( .A1(\count[0][31] ), .A2(n301), .B1(\count[1][31] ), .B2(
        n297), .ZN(n370) );
  NAND2_X1 U527 ( .A1(n371), .A2(n370), .ZN(data_out[31]) );
endmodule


module ensc450 ( clk, resetn, EXT_NREADY, EXT_BUSY, EXT_MR, EXT_MW, 
        EXT_ADDRBUS, EXT_RDATABUS, EXT_WDATABUS );
  input [31:0] EXT_ADDRBUS;
  output [31:0] EXT_RDATABUS;
  input [31:0] EXT_WDATABUS;
  input clk, resetn, EXT_BUSY, EXT_MR, EXT_MW;
  output EXT_NREADY;
  wire   DMAM_MR, DMAM_MW, DMAM_NREADY, SRAM_MR, SRAM_MW, YOUR_MR, YOUR_MW,
         YOUR_NREADY, DMAS_BUSY, DMAS_MR, DMAS_MW, CNT_MR, CNT_MW, SRAM_MRN,
         SRAM_MWN;
  wire   [31:0] DMAM_ADDRBUS;
  wire   [31:0] DMAM_RDATABUS;
  wire   [31:0] DMAM_WDATABUS;
  wire   [10:0] SRAM_ADDRBUS;
  wire   [31:0] SRAM_RDATABUS;
  wire   [31:0] SRAM_WDATABUS;
  wire   [31:0] YOUR_ADDRBUS;
  wire   [31:0] YOUR_RDATABUS;
  wire   [31:0] YOUR_WDATABUS;
  wire   [3:0] DMAS_ADDRBUS;
  wire   [31:0] DMAS_RDATABUS;
  wire   [31:0] DMAS_WDATABUS;
  wire   [7:0] CNT_ADDRBUS;
  wire   [31:0] CNT_RDATABUS;
  wire   [31:0] CNT_WDATABUS;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, 
        SYNOPSYS_UNCONNECTED__56, SYNOPSYS_UNCONNECTED__57, 
        SYNOPSYS_UNCONNECTED__58, SYNOPSYS_UNCONNECTED__59, 
        SYNOPSYS_UNCONNECTED__60, SYNOPSYS_UNCONNECTED__61, 
        SYNOPSYS_UNCONNECTED__62, SYNOPSYS_UNCONNECTED__63, 
        SYNOPSYS_UNCONNECTED__64, SYNOPSYS_UNCONNECTED__65, 
        SYNOPSYS_UNCONNECTED__66, SYNOPSYS_UNCONNECTED__67, 
        SYNOPSYS_UNCONNECTED__68, SYNOPSYS_UNCONNECTED__69, 
        SYNOPSYS_UNCONNECTED__70, SYNOPSYS_UNCONNECTED__71, 
        SYNOPSYS_UNCONNECTED__72;

  SRAM my_Mem ( .address(SRAM_ADDRBUS), .bit_wen({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0}), .data_in(SRAM_WDATABUS), .data_out(SRAM_RDATABUS), 
        .clk(clk), .rdn(SRAM_MRN), .wrn(SRAM_MWN) );
  core_adapter my_core_adapter ( .data_out(YOUR_RDATABUS), .data_in(
        YOUR_WDATABUS), .addr_in(YOUR_ADDRBUS), .nready(YOUR_NREADY), .mw(
        YOUR_MW), .mr(YOUR_MR), .resetn(resetn), .clk(clk) );
  INV_X2 I_1 ( .A(SRAM_MW), .ZN(SRAM_MWN) );
  INV_X2 I_0 ( .A(SRAM_MR), .ZN(SRAM_MRN) );
  ubus_32_32_40001000_400017ff_20000000_200000ff_a0000000_a000000f_b0000000_b00000ff My_bus ( 
        .clk(clk), .reset(resetn), .M1_BUSY(EXT_BUSY), .M1_MR(EXT_MR), .M1_MW(
        EXT_MW), .M1_NREADY(EXT_NREADY), .M1_ADDRBUS(EXT_ADDRBUS), 
        .M1_RDATABUS(EXT_RDATABUS), .M1_WDATABUS(EXT_WDATABUS), .M2_BUSY(1'b0), 
        .M2_MR(DMAM_MR), .M2_MW(DMAM_MW), .M2_NREADY(DMAM_NREADY), 
        .M2_ADDRBUS(DMAM_ADDRBUS), .M2_RDATABUS(DMAM_RDATABUS), .M2_WDATABUS(
        DMAM_WDATABUS), .S1_MR(SRAM_MR), .S1_MW(SRAM_MW), .S1_NREADY(1'b0), 
        .S1_ADDRBUS({SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SRAM_ADDRBUS}), .S1_RDATABUS(SRAM_RDATABUS), 
        .S1_WDATABUS(SRAM_WDATABUS), .S2_MR(YOUR_MR), .S2_MW(YOUR_MW), 
        .S2_NREADY(YOUR_NREADY), .S2_ADDRBUS(YOUR_ADDRBUS), .S2_RDATABUS(
        YOUR_RDATABUS), .S2_WDATABUS(YOUR_WDATABUS), .S3_BUSY(DMAS_BUSY), 
        .S3_MR(DMAS_MR), .S3_MW(DMAS_MW), .S3_NREADY(1'b0), .S3_ADDRBUS({
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, 
        SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, 
        SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, 
        SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, DMAS_ADDRBUS}), 
        .S3_RDATABUS(DMAS_RDATABUS), .S3_WDATABUS(DMAS_WDATABUS), .S4_MR(
        CNT_MR), .S4_MW(CNT_MW), .S4_NREADY(1'b0), .S4_ADDRBUS({
        SYNOPSYS_UNCONNECTED__49, SYNOPSYS_UNCONNECTED__50, 
        SYNOPSYS_UNCONNECTED__51, SYNOPSYS_UNCONNECTED__52, 
        SYNOPSYS_UNCONNECTED__53, SYNOPSYS_UNCONNECTED__54, 
        SYNOPSYS_UNCONNECTED__55, SYNOPSYS_UNCONNECTED__56, 
        SYNOPSYS_UNCONNECTED__57, SYNOPSYS_UNCONNECTED__58, 
        SYNOPSYS_UNCONNECTED__59, SYNOPSYS_UNCONNECTED__60, 
        SYNOPSYS_UNCONNECTED__61, SYNOPSYS_UNCONNECTED__62, 
        SYNOPSYS_UNCONNECTED__63, SYNOPSYS_UNCONNECTED__64, 
        SYNOPSYS_UNCONNECTED__65, SYNOPSYS_UNCONNECTED__66, 
        SYNOPSYS_UNCONNECTED__67, SYNOPSYS_UNCONNECTED__68, 
        SYNOPSYS_UNCONNECTED__69, SYNOPSYS_UNCONNECTED__70, 
        SYNOPSYS_UNCONNECTED__71, SYNOPSYS_UNCONNECTED__72, CNT_ADDRBUS}), 
        .S4_RDATABUS(CNT_RDATABUS), .S4_WDATABUS(CNT_WDATABUS) );
  DMA_1_32_32 My_DMA ( .CLK(clk), .reset(resetn), .M1_MR(DMAM_MR), .M1_MW(
        DMAM_MW), .M1_NREADY(DMAM_NREADY), .M1_ADDRBUS(DMAM_ADDRBUS), 
        .M1_RDATABUS(DMAM_RDATABUS), .M1_WDATABUS(DMAM_WDATABUS), .S1_BUSY(
        DMAS_BUSY), .S1_MR(DMAS_MR), .S1_MW(DMAS_MW), .S1_ADDRBUS(DMAS_ADDRBUS), .S1_RDATABUS(DMAS_RDATABUS), .S1_WDATABUS(DMAS_WDATABUS) );
  counter_32_4_1 my_Counter ( .clk(clk), .resetn(resetn), .rdn(CNT_MR), .wrn(
        CNT_MW), .address(CNT_ADDRBUS), .data_in(CNT_WDATABUS), .data_out(
        CNT_RDATABUS) );
endmodule

