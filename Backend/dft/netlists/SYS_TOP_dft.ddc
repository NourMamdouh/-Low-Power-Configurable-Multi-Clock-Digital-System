/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Mon Sep 25 08:02:20 2023
/////////////////////////////////////////////////////////////


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X4M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;


  AO2B2X2M U1 ( .B0(SEL), .B1(IN_1), .A0(IN_0), .A1N(SEL), .Y(OUT) );
endmodule


module RST_SYNC_NUM_STAGES2_test_0 ( CLK, RST, SYNC_RST, test_si, test_so, 
        test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST, test_so;
  wire   \sychronizer[1] ;
  assign test_so = \sychronizer[1] ;

  SDFFRQX2M \sychronizer_reg[0]  ( .D(\sychronizer[1] ), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
  SDFFRQX2M \sychronizer_reg[1]  ( .D(1'b1), .SI(SYNC_RST), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\sychronizer[1] ) );
endmodule


module RST_SYNC_NUM_STAGES2_test_1 ( CLK, RST, SYNC_RST, test_si, test_so, 
        test_se );
  input CLK, RST, test_si, test_se;
  output SYNC_RST, test_so;
  wire   \sychronizer[1] ;
  assign test_so = \sychronizer[1] ;

  SDFFRQX2M \sychronizer_reg[1]  ( .D(1'b1), .SI(SYNC_RST), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(\sychronizer[1] ) );
  SDFFRQX1M \sychronizer_reg[0]  ( .D(\sychronizer[1] ), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(SYNC_RST) );
endmodule


module edge_bit_counter_prescale_wd6_bit_count_wd3_test_1 ( CLK, RST, prescale, 
        edge_cnt_en, bit_cnt_en, edge_count, bit_count, edge_count_done, 
        test_si, test_se );
  input [5:0] prescale;
  output [5:0] edge_count;
  output [2:0] bit_count;
  input CLK, RST, edge_cnt_en, bit_cnt_en, test_si, test_se;
  output edge_count_done;
  wire   N8, N9, N10, N11, N13, N14, N15, N16, N17, N18, edge_count_done_comb,
         N28, N29, N30, N31, N32, N33, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, \sub_58/carry[5] , \sub_58/carry[4] , \sub_58/carry[3] ,
         \add_23/carry[5] , \add_23/carry[4] , \add_23/carry[3] ,
         \add_23/carry[2] , n1, n2, n3, n4, n15, n16, n17, n18, n28, n29, n30,
         n31, n32, n33, n34;
  assign N28 = prescale[0];

  SDFFRQX2M \bit_count_reg[2]  ( .D(n25), .SI(n33), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[2]) );
  SDFFRQX2M edge_count_done_reg ( .D(edge_count_done_comb), .SI(bit_count[2]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(edge_count_done) );
  SDFFRQX2M \bit_count_reg[1]  ( .D(n26), .SI(n32), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[1]) );
  SDFFRQX2M \bit_count_reg[0]  ( .D(n27), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(bit_count[0]) );
  SDFFRQX2M \edge_count_reg[5]  ( .D(N18), .SI(edge_count[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  SDFFRQX2M \edge_count_reg[3]  ( .D(N16), .SI(edge_count[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  SDFFRQX2M \edge_count_reg[0]  ( .D(N13), .SI(edge_count_done), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[0]) );
  SDFFRQX2M \edge_count_reg[2]  ( .D(N15), .SI(edge_count[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  SDFFRQX2M \edge_count_reg[4]  ( .D(N17), .SI(edge_count[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  SDFFRQX2M \edge_count_reg[1]  ( .D(N14), .SI(edge_count[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  NOR2X2M U6 ( .A(prescale[5]), .B(\sub_58/carry[5] ), .Y(n1) );
  INVX2M U7 ( .A(bit_cnt_en), .Y(n34) );
  NOR2BX2M U15 ( .AN(N11), .B(n24), .Y(N17) );
  NOR2BX2M U16 ( .AN(N10), .B(n24), .Y(N16) );
  NOR2BX2M U17 ( .AN(N9), .B(n24), .Y(N15) );
  NOR2BX2M U18 ( .AN(N8), .B(n24), .Y(N14) );
  OAI32X1M U19 ( .A0(n34), .A1(bit_count[0]), .A2(n22), .B0(n32), .B1(n31), 
        .Y(n27) );
  INVX2M U20 ( .A(n22), .Y(n31) );
  OAI32X1M U21 ( .A0(n21), .A1(bit_count[1]), .A2(n22), .B0(n23), .B1(n33), 
        .Y(n26) );
  INVX2M U22 ( .A(bit_count[1]), .Y(n33) );
  NAND2X2M U23 ( .A(bit_cnt_en), .B(bit_count[0]), .Y(n21) );
  AOI21X2M U24 ( .A0(bit_cnt_en), .A1(n32), .B0(n22), .Y(n23) );
  NAND2BX2M U25 ( .AN(edge_count_done), .B(edge_cnt_en), .Y(n24) );
  NOR2X2M U26 ( .A(n34), .B(edge_count_done), .Y(n22) );
  INVX2M U27 ( .A(bit_count[0]), .Y(n32) );
  NOR2X2M U28 ( .A(n2), .B(n24), .Y(N18) );
  XNOR2X2M U29 ( .A(\add_23/carry[5] ), .B(edge_count[5]), .Y(n2) );
  NOR2X2M U30 ( .A(edge_count[0]), .B(n24), .Y(N13) );
  NOR2X2M U31 ( .A(n19), .B(n34), .Y(n25) );
  CLKXOR2X2M U32 ( .A(n20), .B(bit_count[2]), .Y(n19) );
  NAND3X2M U33 ( .A(bit_count[1]), .B(bit_count[0]), .C(edge_count_done), .Y(
        n20) );
  INVX2M U34 ( .A(prescale[1]), .Y(N29) );
  ADDHX1M U35 ( .A(edge_count[3]), .B(\add_23/carry[3] ), .CO(
        \add_23/carry[4] ), .S(N10) );
  ADDHX1M U36 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_23/carry[2] ), 
        .S(N8) );
  ADDHX1M U37 ( .A(edge_count[2]), .B(\add_23/carry[2] ), .CO(
        \add_23/carry[3] ), .S(N9) );
  ADDHX1M U38 ( .A(edge_count[4]), .B(\add_23/carry[4] ), .CO(
        \add_23/carry[5] ), .S(N11) );
  XNOR2X1M U39 ( .A(\sub_58/carry[5] ), .B(prescale[5]), .Y(N33) );
  OR2X1M U40 ( .A(prescale[4]), .B(\sub_58/carry[4] ), .Y(\sub_58/carry[5] )
         );
  XNOR2X1M U41 ( .A(\sub_58/carry[4] ), .B(prescale[4]), .Y(N32) );
  OR2X1M U42 ( .A(prescale[3]), .B(\sub_58/carry[3] ), .Y(\sub_58/carry[4] )
         );
  XNOR2X1M U43 ( .A(\sub_58/carry[3] ), .B(prescale[3]), .Y(N31) );
  OR2X1M U44 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_58/carry[3] ) );
  XNOR2X1M U45 ( .A(prescale[1]), .B(prescale[2]), .Y(N30) );
  NOR2BX1M U46 ( .AN(N28), .B(edge_count[0]), .Y(n3) );
  OAI2B2X1M U47 ( .A1N(edge_count[1]), .A0(n3), .B0(N29), .B1(n3), .Y(n17) );
  XNOR2X1M U48 ( .A(N33), .B(edge_count[5]), .Y(n16) );
  NOR2BX1M U49 ( .AN(edge_count[0]), .B(N28), .Y(n4) );
  OAI2B2X1M U50 ( .A1N(N29), .A0(n4), .B0(edge_count[1]), .B1(n4), .Y(n15) );
  NAND4BX1M U51 ( .AN(n1), .B(n17), .C(n16), .D(n15), .Y(n30) );
  CLKXOR2X2M U52 ( .A(N32), .B(edge_count[4]), .Y(n29) );
  CLKXOR2X2M U53 ( .A(N30), .B(edge_count[2]), .Y(n28) );
  CLKXOR2X2M U54 ( .A(N31), .B(edge_count[3]), .Y(n18) );
  NOR4X1M U55 ( .A(n30), .B(n29), .C(n28), .D(n18), .Y(edge_count_done_comb)
         );
endmodule


module data_smapling_prescale_wd6_test_1 ( CLK, RST, prescale, data_samp_en, 
        RX_IN, edge_count, sampled_bit, sampling_done, test_si, test_so, 
        test_se );
  input [5:0] prescale;
  input [5:0] edge_count;
  input CLK, RST, data_samp_en, RX_IN, test_si, test_se;
  output sampled_bit, sampling_done, test_so;
  wire   N29, N30, N31, N32, N33, n29, n30, n31, \add_45/carry[4] ,
         \add_45/carry[3] , \add_45/carry[2] , \add_65/carry[4] ,
         \add_65/carry[3] , \add_65/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60;
  wire   [2:0] samples;
  wire   [4:0] left_middle;
  wire   [4:0] middle;
  wire   [4:0] right_middle;
  assign test_so = samples[2];

  SDFFRQX2M \samples_reg[1]  ( .D(n30), .SI(samples[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(samples[1]) );
  SDFFRQX2M \samples_reg[0]  ( .D(n29), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(samples[0]) );
  SDFFRQX2M \samples_reg[2]  ( .D(n31), .SI(samples[1]), .SE(test_se), .CK(CLK), .RN(RST), .Q(samples[2]) );
  ADDHX1M U5 ( .A(right_middle[2]), .B(\add_45/carry[2] ), .CO(
        \add_45/carry[3] ), .S(N30) );
  ADDHX1M U6 ( .A(right_middle[4]), .B(\add_45/carry[4] ), .CO(N33), .S(N32)
         );
  ADDHX1M U7 ( .A(middle[2]), .B(\add_65/carry[2] ), .CO(\add_65/carry[3] ), 
        .S(right_middle[2]) );
  ADDHX1M U8 ( .A(right_middle[1]), .B(prescale[1]), .CO(\add_45/carry[2] ), 
        .S(N29) );
  ADDHX1M U9 ( .A(right_middle[3]), .B(\add_45/carry[3] ), .CO(
        \add_45/carry[4] ), .S(N31) );
  INVX2M U11 ( .A(middle[2]), .Y(n8) );
  ADDHX1M U12 ( .A(middle[1]), .B(middle[0]), .CO(\add_65/carry[2] ), .S(
        right_middle[1]) );
  ADDHX1M U13 ( .A(middle[3]), .B(\add_65/carry[3] ), .CO(\add_65/carry[4] ), 
        .S(right_middle[3]) );
  INVX2M U14 ( .A(prescale[3]), .Y(n4) );
  CLKINVX1M U15 ( .A(prescale[1]), .Y(middle[0]) );
  NOR2X1M U16 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  AO21XLM U17 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n1), .Y(middle[1]) );
  CLKNAND2X2M U18 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U19 ( .A0(n1), .A1(n4), .B0(n2), .Y(middle[2]) );
  XNOR2X1M U20 ( .A(prescale[4]), .B(n2), .Y(middle[3]) );
  NOR2X1M U21 ( .A(prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U22 ( .A(prescale[5]), .B(n3), .Y(middle[4]) );
  CLKXOR2X2M U23 ( .A(\add_65/carry[4] ), .B(middle[4]), .Y(right_middle[4])
         );
  NOR2X1M U24 ( .A(middle[1]), .B(middle[0]), .Y(n5) );
  AO21XLM U25 ( .A0(middle[0]), .A1(middle[1]), .B0(n5), .Y(left_middle[1]) );
  CLKNAND2X2M U26 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U27 ( .A0(n5), .A1(n8), .B0(n6), .Y(left_middle[2]) );
  XNOR2X1M U28 ( .A(middle[3]), .B(n6), .Y(left_middle[3]) );
  NOR2X1M U29 ( .A(middle[3]), .B(n6), .Y(n7) );
  CLKXOR2X2M U30 ( .A(middle[4]), .B(n7), .Y(left_middle[4]) );
  MXI2X1M U31 ( .A(n9), .B(n10), .S0(n11), .Y(sampling_done) );
  NAND4X1M U32 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n9) );
  NOR3X1M U33 ( .A(n19), .B(n20), .C(n21), .Y(n18) );
  CLKXOR2X2M U34 ( .A(edge_count[4]), .B(N32), .Y(n21) );
  CLKXOR2X2M U35 ( .A(edge_count[1]), .B(N29), .Y(n20) );
  CLKXOR2X2M U36 ( .A(edge_count[0]), .B(middle[0]), .Y(n19) );
  CLKXOR2X2M U37 ( .A(n22), .B(N30), .Y(n17) );
  XNOR2X1M U38 ( .A(edge_count[3]), .B(N31), .Y(n16) );
  CLKXOR2X2M U39 ( .A(n23), .B(N33), .Y(n15) );
  OAI31X1M U40 ( .A0(n24), .A1(n11), .A2(n25), .B0(n26), .Y(sampled_bit) );
  OAI31X1M U41 ( .A0(n11), .A1(samples[2]), .A2(samples[0]), .B0(samples[1]), 
        .Y(n26) );
  MXI2X1M U42 ( .A(n24), .B(n27), .S0(n28), .Y(n31) );
  NOR4X1M U43 ( .A(n32), .B(n33), .C(n11), .D(n34), .Y(n28) );
  NOR4X1M U44 ( .A(n35), .B(n36), .C(n37), .D(n38), .Y(n34) );
  NOR4X1M U45 ( .A(n39), .B(n40), .C(n41), .D(n42), .Y(n33) );
  OR2X1M U46 ( .A(n10), .B(n43), .Y(n32) );
  NAND4X1M U47 ( .A(n44), .B(n45), .C(n46), .D(n47), .Y(n10) );
  NOR3X1M U48 ( .A(n48), .B(edge_count[5]), .C(n49), .Y(n47) );
  CLKXOR2X2M U49 ( .A(prescale[1]), .B(edge_count[0]), .Y(n49) );
  CLKXOR2X2M U50 ( .A(right_middle[4]), .B(edge_count[4]), .Y(n48) );
  CLKXOR2X2M U51 ( .A(n22), .B(right_middle[2]), .Y(n46) );
  XNOR2X1M U52 ( .A(edge_count[3]), .B(right_middle[3]), .Y(n45) );
  XNOR2X1M U53 ( .A(edge_count[1]), .B(right_middle[1]), .Y(n44) );
  CLKINVX1M U54 ( .A(samples[2]), .Y(n24) );
  CLKMX2X2M U55 ( .A(samples[1]), .B(RX_IN), .S0(n50), .Y(n30) );
  NOR4X1M U56 ( .A(n51), .B(n36), .C(n52), .D(n35), .Y(n50) );
  CLKXOR2X2M U57 ( .A(edge_count[4]), .B(middle[4]), .Y(n35) );
  CLKXOR2X2M U58 ( .A(edge_count[3]), .B(middle[3]), .Y(n36) );
  OR3X1M U59 ( .A(n38), .B(n37), .C(n43), .Y(n51) );
  NAND3X1M U60 ( .A(n53), .B(n23), .C(n54), .Y(n37) );
  XNOR2X1M U61 ( .A(edge_count[0]), .B(middle[0]), .Y(n54) );
  XNOR2X1M U62 ( .A(edge_count[1]), .B(middle[1]), .Y(n53) );
  XNOR2X1M U63 ( .A(n22), .B(middle[2]), .Y(n38) );
  CLKINVX1M U64 ( .A(edge_count[2]), .Y(n22) );
  MXI2X1M U65 ( .A(n25), .B(n27), .S0(n55), .Y(n29) );
  NOR2BX1M U66 ( .AN(n52), .B(n43), .Y(n55) );
  CLKINVX1M U67 ( .A(data_samp_en), .Y(n43) );
  NOR4BX1M U68 ( .AN(n56), .B(n39), .C(n11), .D(n40), .Y(n52) );
  CLKXOR2X2M U69 ( .A(edge_count[3]), .B(left_middle[3]), .Y(n40) );
  NOR4BX1M U70 ( .AN(prescale[2]), .B(prescale[1]), .C(prescale[0]), .D(n57), 
        .Y(n11) );
  OR3X1M U71 ( .A(prescale[3]), .B(prescale[5]), .C(prescale[4]), .Y(n57) );
  XNOR2X1M U72 ( .A(n58), .B(left_middle[4]), .Y(n39) );
  CLKINVX1M U73 ( .A(edge_count[4]), .Y(n58) );
  NOR2X1M U74 ( .A(n41), .B(n42), .Y(n56) );
  CLKXOR2X2M U75 ( .A(edge_count[2]), .B(left_middle[2]), .Y(n42) );
  NAND3X1M U76 ( .A(n59), .B(n23), .C(n60), .Y(n41) );
  XNOR2X1M U77 ( .A(edge_count[0]), .B(prescale[1]), .Y(n60) );
  CLKINVX1M U78 ( .A(edge_count[5]), .Y(n23) );
  XNOR2X1M U79 ( .A(edge_count[1]), .B(left_middle[1]), .Y(n59) );
  CLKINVX1M U80 ( .A(RX_IN), .Y(n27) );
  CLKINVX1M U81 ( .A(samples[0]), .Y(n25) );
endmodule


module deserializer_data_wd8_bit_count_wd3_test_1 ( CLK, RST, bit_count, 
        sampled_bit, enable, P_DATA, test_si, test_se );
  input [2:0] bit_count;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, enable, test_si, test_se;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n9, n10;

  SDFFRQX2M \P_DATA_reg[5]  ( .D(n32), .SI(P_DATA[4]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[5]) );
  SDFFRQX2M \P_DATA_reg[1]  ( .D(n28), .SI(P_DATA[0]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[1]) );
  SDFFRQX2M \P_DATA_reg[4]  ( .D(n31), .SI(P_DATA[3]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[4]) );
  SDFFRQX2M \P_DATA_reg[0]  ( .D(n27), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[0]) );
  SDFFRQX2M \P_DATA_reg[7]  ( .D(n34), .SI(P_DATA[6]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[7]) );
  SDFFRQX2M \P_DATA_reg[3]  ( .D(n30), .SI(P_DATA[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[3]) );
  SDFFRQX2M \P_DATA_reg[6]  ( .D(n33), .SI(P_DATA[5]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[6]) );
  SDFFRQX2M \P_DATA_reg[2]  ( .D(n29), .SI(P_DATA[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(P_DATA[2]) );
  NAND2BX2M U10 ( .AN(n23), .B(sampled_bit), .Y(n21) );
  NAND2BX1M U11 ( .AN(n14), .B(sampled_bit), .Y(n12) );
  NAND2X2M U12 ( .A(n10), .B(n9), .Y(n11) );
  OAI21X2M U13 ( .A0(n12), .A1(n15), .B0(n16), .Y(n28) );
  OAI21X2M U14 ( .A0(n14), .A1(n15), .B0(P_DATA[1]), .Y(n16) );
  OAI21X2M U15 ( .A0(n12), .A1(n17), .B0(n18), .Y(n29) );
  OAI21X2M U16 ( .A0(n14), .A1(n17), .B0(P_DATA[2]), .Y(n18) );
  OAI21X2M U17 ( .A0(n12), .A1(n19), .B0(n20), .Y(n30) );
  OAI21X2M U18 ( .A0(n14), .A1(n19), .B0(P_DATA[3]), .Y(n20) );
  OAI21X2M U19 ( .A0(n11), .A1(n21), .B0(n22), .Y(n31) );
  OAI21X2M U20 ( .A0(n11), .A1(n23), .B0(P_DATA[4]), .Y(n22) );
  OAI21X2M U21 ( .A0(n15), .A1(n21), .B0(n24), .Y(n32) );
  OAI21X2M U22 ( .A0(n15), .A1(n23), .B0(P_DATA[5]), .Y(n24) );
  OAI21X2M U23 ( .A0(n17), .A1(n21), .B0(n25), .Y(n33) );
  OAI21X2M U24 ( .A0(n17), .A1(n23), .B0(P_DATA[6]), .Y(n25) );
  OAI21X2M U25 ( .A0(n19), .A1(n21), .B0(n26), .Y(n34) );
  OAI21X2M U26 ( .A0(n19), .A1(n23), .B0(P_DATA[7]), .Y(n26) );
  OAI21X2M U27 ( .A0(n11), .A1(n12), .B0(n13), .Y(n27) );
  OAI21X2M U28 ( .A0(n14), .A1(n11), .B0(P_DATA[0]), .Y(n13) );
  NAND2BX2M U29 ( .AN(bit_count[2]), .B(enable), .Y(n14) );
  NAND2X2M U30 ( .A(bit_count[2]), .B(enable), .Y(n23) );
  NAND2X2M U31 ( .A(bit_count[0]), .B(n10), .Y(n15) );
  NAND2X2M U32 ( .A(bit_count[1]), .B(n9), .Y(n17) );
  NAND2X2M U33 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n19) );
  INVX2M U34 ( .A(bit_count[0]), .Y(n9) );
  INVX2M U35 ( .A(bit_count[1]), .Y(n10) );
endmodule


module par_chk_data_wd8_test_1 ( CLK, RST, P_DATA, PAR_TYP, sampled_bit, 
        enable, par_err, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, sampled_bit, enable, test_si, test_se;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n9, n2;

  SDFFRQX2M par_err_reg ( .D(n9), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_err) );
  XNOR2XLM U2 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n9) );
  XOR3XLM U4 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  INVX2M U5 ( .A(enable), .Y(n2) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module stp_chk_test_1 ( CLK, RST, sampled_bit, enable, stp_err, test_si, 
        test_se );
  input CLK, RST, sampled_bit, enable, test_si, test_se;
  output stp_err;
  wire   n3, n1;

  SDFFRQX2M stp_err_reg ( .D(n3), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(stp_err) );
  OAI2BB2XLM U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n3)
         );
  INVX2M U3 ( .A(enable), .Y(n1) );
endmodule


module UART_RX_DATAPATH_data_wd8_bit_count_wd3_prescale_wd6_test_1 ( CLK, RST, 
        prescale, RX_IN, PAR_TYP, edge_cnt_en, bit_cnt_en, data_samp_en, 
        deser_en, par_chk_en, stp_chk_en, bit_count, sampled_bit, 
        sampling_done, edge_count_done, par_err, stp_err, P_DATA, test_si2, 
        test_si1, test_se );
  input [5:0] prescale;
  output [2:0] bit_count;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, edge_cnt_en, bit_cnt_en, data_samp_en,
         deser_en, par_chk_en, stp_chk_en, test_si2, test_si1, test_se;
  output sampled_bit, sampling_done, edge_count_done, par_err, stp_err;
  wire   n1, n2, n3;
  wire   [5:0] edge_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  edge_bit_counter_prescale_wd6_bit_count_wd3_test_1 U0_edge_bit_counter ( 
        .CLK(CLK), .RST(n1), .prescale(prescale), .edge_cnt_en(edge_cnt_en), 
        .bit_cnt_en(bit_cnt_en), .edge_count(edge_count), .bit_count(bit_count), .edge_count_done(edge_count_done), .test_si(P_DATA[7]), .test_se(test_se) );
  data_smapling_prescale_wd6_test_1 U0_data_smapling ( .CLK(CLK), .RST(n1), 
        .prescale(prescale), .data_samp_en(data_samp_en), .RX_IN(RX_IN), 
        .edge_count(edge_count), .sampled_bit(sampled_bit), .sampling_done(
        sampling_done), .test_si(test_si1), .test_so(n3), .test_se(test_se) );
  deserializer_data_wd8_bit_count_wd3_test_1 U0_deserializer ( .CLK(CLK), 
        .RST(n1), .bit_count(bit_count), .sampled_bit(sampled_bit), .enable(
        deser_en), .P_DATA(P_DATA), .test_si(n3), .test_se(test_se) );
  par_chk_data_wd8_test_1 U0_par_chk ( .CLK(CLK), .RST(n1), .P_DATA(P_DATA), 
        .PAR_TYP(PAR_TYP), .sampled_bit(sampled_bit), .enable(par_chk_en), 
        .par_err(par_err), .test_si(edge_count[5]), .test_se(test_se) );
  stp_chk_test_1 U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .enable(stp_chk_en), .stp_err(stp_err), .test_si(test_si2), .test_se(
        test_se) );
endmodule


module UART_RX_fsm_data_wd8_bit_count_wd3_prescale_wd6_test_1 ( CLK, RST, 
        RX_IN, PAR_EN, bit_count, sampled_bit, sampling_done, edge_count_done, 
        par_err, stp_err, data_valid, edge_cnt_en, bit_cnt_en, data_samp_en, 
        deser_en, par_chk_en, stp_chk_en, test_so, test_se );
  input [2:0] bit_count;
  input CLK, RST, RX_IN, PAR_EN, sampled_bit, sampling_done, edge_count_done,
         par_err, stp_err, test_se;
  output data_valid, edge_cnt_en, bit_cnt_en, data_samp_en, deser_en,
         par_chk_en, stp_chk_en, test_so;
  wire   n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n5, n6, n7, n8,
         n9, n10, n11, n12, n13;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = n12;

  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n9), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n10), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(par_err), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  NOR3X2M U6 ( .A(n10), .B(current_state[2]), .C(n9), .Y(bit_cnt_en) );
  NOR2X2M U7 ( .A(n7), .B(n8), .Y(deser_en) );
  NOR2X2M U8 ( .A(n7), .B(n14), .Y(par_chk_en) );
  INVX2M U9 ( .A(n21), .Y(n5) );
  INVX2M U10 ( .A(sampling_done), .Y(n7) );
  NAND2XLM U11 ( .A(sampled_bit), .B(sampling_done), .Y(n21) );
  INVX2M U12 ( .A(bit_cnt_en), .Y(n8) );
  NAND2X2M U13 ( .A(n16), .B(n12), .Y(n14) );
  NOR4X1M U14 ( .A(current_state[0]), .B(n10), .C(n12), .D(n7), .Y(stp_chk_en)
         );
  OAI21BX1M U15 ( .A0(n17), .A1(n8), .B0N(n22), .Y(next_state[0]) );
  OAI33X2M U16 ( .A0(n23), .A1(current_state[0]), .A2(RX_IN), .B0(n11), .B1(n5), .B2(n9), .Y(n22) );
  AOI31X2M U17 ( .A0(current_state[2]), .A1(current_state[1]), .A2(
        edge_count_done), .B0(n20), .Y(n23) );
  INVX2M U18 ( .A(n20), .Y(n11) );
  NAND4X2M U19 ( .A(n18), .B(n8), .C(n14), .D(n19), .Y(next_state[1]) );
  NAND2X2M U20 ( .A(n16), .B(n6), .Y(n18) );
  NAND4X2M U21 ( .A(n20), .B(edge_count_done), .C(current_state[0]), .D(n21), 
        .Y(n19) );
  NOR2X2M U22 ( .A(n10), .B(current_state[0]), .Y(n16) );
  OAI21BX1M U23 ( .A0(current_state[2]), .A1(n9), .B0N(n16), .Y(data_samp_en)
         );
  INVX2M U24 ( .A(current_state[1]), .Y(n10) );
  INVX2M U25 ( .A(current_state[0]), .Y(n9) );
  NOR2X2M U26 ( .A(current_state[1]), .B(current_state[2]), .Y(n20) );
  OAI21X2M U27 ( .A0(n14), .A1(n6), .B0(n15), .Y(next_state[2]) );
  AOI33X2M U28 ( .A0(current_state[2]), .A1(n6), .A2(n16), .B0(n17), .B1(n13), 
        .B2(bit_cnt_en), .Y(n15) );
  INVX2M U29 ( .A(PAR_EN), .Y(n13) );
  INVX2M U30 ( .A(current_state[2]), .Y(n12) );
  INVX2M U31 ( .A(edge_count_done), .Y(n6) );
  AND4X2M U32 ( .A(edge_count_done), .B(bit_count[2]), .C(bit_count[1]), .D(
        bit_count[0]), .Y(n17) );
  AND4X2M U33 ( .A(n24), .B(n16), .C(edge_count_done), .D(current_state[2]), 
        .Y(data_valid) );
  AOI21X2M U34 ( .A0(par_err), .A1(PAR_EN), .B0(stp_err), .Y(n24) );
  BUFX2M U35 ( .A(data_samp_en), .Y(edge_cnt_en) );
endmodule


module UART_RX_RX_data_wd8_RX_bit_count_wd3_prescale_wd6_test_1 ( CLK, RST, 
        prescale, RX_IN, PAR_TYP, PAR_EN, P_DATA, data_valid, par_err, stp_err, 
        test_si2, test_si1, test_so1, test_se );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN, test_si2, test_si1, test_se;
  output data_valid, par_err, stp_err, test_so1;
  wire   edge_cnt_en, bit_cnt_en, data_samp_en, deser_en, par_chk_en,
         stp_chk_en, sampled_bit, sampling_done, edge_count_done, n1, n2;
  wire   [2:0] bit_count;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_RX_DATAPATH_data_wd8_bit_count_wd3_prescale_wd6_test_1 U0_UART_RX_DATAPATH ( 
        .CLK(CLK), .RST(n1), .prescale(prescale), .RX_IN(RX_IN), .PAR_TYP(
        PAR_TYP), .edge_cnt_en(edge_cnt_en), .bit_cnt_en(bit_cnt_en), 
        .data_samp_en(data_samp_en), .deser_en(deser_en), .par_chk_en(
        par_chk_en), .stp_chk_en(stp_chk_en), .bit_count(bit_count), 
        .sampled_bit(sampled_bit), .sampling_done(sampling_done), 
        .edge_count_done(edge_count_done), .par_err(par_err), .stp_err(stp_err), .P_DATA(P_DATA), .test_si2(test_si2), .test_si1(test_si1), .test_se(test_se)
         );
  UART_RX_fsm_data_wd8_bit_count_wd3_prescale_wd6_test_1 U0_UART_RX_fsm ( 
        .CLK(CLK), .RST(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), .bit_count(
        bit_count), .sampled_bit(sampled_bit), .sampling_done(sampling_done), 
        .edge_count_done(edge_count_done), .par_err(par_err), .stp_err(stp_err), .data_valid(data_valid), .edge_cnt_en(edge_cnt_en), .bit_cnt_en(bit_cnt_en), 
        .data_samp_en(data_samp_en), .deser_en(deser_en), .par_chk_en(
        par_chk_en), .stp_chk_en(stp_chk_en), .test_so(test_so1), .test_se(
        test_se) );
endmodule


module serializer_width8_test_1 ( CLK, RST, P_DATA, DATA_VALID, ser_en, 
        load_en, ser_data, ser_done, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, ser_en, load_en, test_si, test_se;
  output ser_data, ser_done, test_so;
  wire   N2, N3, N4, N12, N13, N14, n1, n2, n4, n13, n15, n17, n19, n21, n23,
         n25, n27, n3, n5, n6, n7, n8, n28, n29;
  wire   [7:0] P_DATA_reg;
  assign test_so = n8;

  SDFFRQX2M \P_DATA_reg_reg[5]  ( .D(n23), .SI(P_DATA_reg[4]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[5]) );
  SDFFRQX2M \P_DATA_reg_reg[1]  ( .D(n15), .SI(P_DATA_reg[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[1]) );
  SDFFRQX2M \P_DATA_reg_reg[7]  ( .D(n27), .SI(P_DATA_reg[6]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[7]) );
  SDFFRQX2M \P_DATA_reg_reg[3]  ( .D(n19), .SI(P_DATA_reg[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[3]) );
  SDFFRQX2M \P_DATA_reg_reg[6]  ( .D(n25), .SI(P_DATA_reg[5]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[6]) );
  SDFFRQX2M \P_DATA_reg_reg[2]  ( .D(n17), .SI(P_DATA_reg[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[2]) );
  SDFFRQX2M \P_DATA_reg_reg[4]  ( .D(n21), .SI(P_DATA_reg[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(P_DATA_reg[4]) );
  SDFFRQX2M \P_DATA_reg_reg[0]  ( .D(n13), .SI(test_si), .SE(test_se), .CK(CLK), .RN(RST), .Q(P_DATA_reg[0]) );
  SDFFRQX2M \count_reg[1]  ( .D(N13), .SI(n6), .SE(test_se), .CK(CLK), .RN(RST), .Q(N3) );
  SDFFRQX2M \count_reg[2]  ( .D(N14), .SI(N3), .SE(test_se), .CK(CLK), .RN(RST), .Q(N4) );
  SDFFRQX2M \count_reg[0]  ( .D(N12), .SI(P_DATA_reg[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(N2) );
  INVX2M U3 ( .A(n2), .Y(n29) );
  INVX2M U4 ( .A(ser_en), .Y(n28) );
  NAND2X2M U5 ( .A(load_en), .B(DATA_VALID), .Y(n2) );
  AOI211X2M U6 ( .A0(n6), .A1(n7), .B0(n28), .C0(n1), .Y(N13) );
  NOR2X2M U7 ( .A(n7), .B(n6), .Y(n1) );
  MX2X2M U8 ( .A(n5), .B(n3), .S0(N4), .Y(ser_data) );
  MX4X1M U9 ( .A(P_DATA_reg[0]), .B(P_DATA_reg[1]), .C(P_DATA_reg[2]), .D(
        P_DATA_reg[3]), .S0(N2), .S1(N3), .Y(n5) );
  MX4X1M U10 ( .A(P_DATA_reg[4]), .B(P_DATA_reg[5]), .C(P_DATA_reg[6]), .D(
        P_DATA_reg[7]), .S0(N2), .S1(N3), .Y(n3) );
  AO22X1M U11 ( .A0(P_DATA_reg[0]), .A1(n2), .B0(P_DATA[0]), .B1(n29), .Y(n13)
         );
  AO22X1M U12 ( .A0(P_DATA_reg[1]), .A1(n2), .B0(P_DATA[1]), .B1(n29), .Y(n15)
         );
  AO22X1M U13 ( .A0(P_DATA_reg[2]), .A1(n2), .B0(P_DATA[2]), .B1(n29), .Y(n17)
         );
  AO22X1M U14 ( .A0(P_DATA_reg[3]), .A1(n2), .B0(P_DATA[3]), .B1(n29), .Y(n19)
         );
  AO22X1M U15 ( .A0(P_DATA_reg[4]), .A1(n2), .B0(P_DATA[4]), .B1(n29), .Y(n21)
         );
  AO22X1M U16 ( .A0(P_DATA_reg[5]), .A1(n2), .B0(P_DATA[5]), .B1(n29), .Y(n23)
         );
  AO22X1M U17 ( .A0(P_DATA_reg[6]), .A1(n2), .B0(P_DATA[6]), .B1(n29), .Y(n25)
         );
  AO22X1M U18 ( .A0(P_DATA_reg[7]), .A1(n2), .B0(P_DATA[7]), .B1(n29), .Y(n27)
         );
  OAI2BB2X1M U19 ( .B0(n4), .B1(n28), .A0N(N4), .A1N(N12), .Y(N14) );
  AOI22X1M U20 ( .A0(n1), .A1(n8), .B0(N4), .B1(n7), .Y(n4) );
  INVX2M U21 ( .A(N4), .Y(n8) );
  NOR2X2M U22 ( .A(n28), .B(N2), .Y(N12) );
  INVX2M U34 ( .A(N2), .Y(n6) );
  INVX2M U35 ( .A(N3), .Y(n7) );
  AND2X2M U36 ( .A(n1), .B(N4), .Y(ser_done) );
endmodule


module parity_calc_width8_test_1 ( CLK, RST, P_DATA, DATA_VALID, load_en, 
        PAR_TYP, PAR_EN, par_bit, test_si, test_se );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, load_en, PAR_TYP, PAR_EN, test_si, test_se;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n8;

  SDFFRQX2M par_bit_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(par_bit) );
  XNOR2X2M U2 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n8) );
  NAND3X2M U6 ( .A(PAR_EN), .B(DATA_VALID), .C(load_en), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module UART_TX_DATA_PATH_width8_test_1 ( CLK, RST, P_DATA, DATA_VALID, PAR_EN, 
        PAR_TYP, ser_en, load_en, mux_sel, ser_done, TX_OUT, TX_OUT_reg, 
        test_si, test_se );
  input [7:0] P_DATA;
  input [1:0] mux_sel;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, ser_en, load_en, test_si,
         test_se;
  output ser_done, TX_OUT, TX_OUT_reg;
  wire   n7, ser_data, par_bit, n3, n4, n6, n8;

  SDFFRQX1M TX_OUT_reg_reg ( .D(n7), .SI(n8), .SE(test_se), .CK(CLK), .RN(RST), 
        .Q(TX_OUT_reg) );
  NAND3X2M U4 ( .A(mux_sel[0]), .B(n6), .C(ser_data), .Y(n4) );
  CLKBUFX8M U6 ( .A(n7), .Y(TX_OUT) );
  CLKINVX1M U7 ( .A(mux_sel[1]), .Y(n6) );
  OAI21X2M U8 ( .A0(n3), .A1(n6), .B0(n4), .Y(n7) );
  NOR2BX2M U9 ( .AN(mux_sel[0]), .B(par_bit), .Y(n3) );
  serializer_width8_test_1 SERIAL_BLOCK ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), .DATA_VALID(DATA_VALID), .ser_en(ser_en), .load_en(load_en), .ser_data(
        ser_data), .ser_done(ser_done), .test_si(par_bit), .test_so(n8), 
        .test_se(test_se) );
  parity_calc_width8_test_1 PARITY_BLOCK ( .CLK(CLK), .RST(RST), .P_DATA(
        P_DATA), .DATA_VALID(DATA_VALID), .load_en(load_en), .PAR_TYP(PAR_TYP), 
        .PAR_EN(PAR_EN), .par_bit(par_bit), .test_si(test_si), .test_se(
        test_se) );
endmodule


module UART_TX_fsm_test_1 ( CLK, RST, DATA_VALID, ser_done, PAR_EN, mux_sel, 
        ser_en, load_en, Busy, test_si, test_so, test_se );
  output [1:0] mux_sel;
  input CLK, RST, DATA_VALID, ser_done, PAR_EN, test_si, test_se;
  output ser_en, load_en, Busy, test_so;
  wire   n8, n9, n10, n11, n12, n13, n14, n4, n5, n6;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(test_si), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n4), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(current_state[2]) );
  OAI32X1M U6 ( .A0(current_state[0]), .A1(current_state[2]), .A2(
        current_state[1]), .B0(n12), .B1(n5), .Y(load_en) );
  INVX2M U7 ( .A(n8), .Y(ser_en) );
  INVX2M U8 ( .A(n10), .Y(mux_sel[0]) );
  NAND2BX2M U9 ( .AN(n10), .B(n11), .Y(n8) );
  NAND2X2M U10 ( .A(current_state[1]), .B(n5), .Y(n10) );
  INVX2M U11 ( .A(current_state[2]), .Y(n5) );
  OAI221X1M U12 ( .A0(DATA_VALID), .A1(n12), .B0(current_state[2]), .B1(n4), 
        .C0(n10), .Y(Busy) );
  OAI21X2M U13 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n12), .Y(
        mux_sel[1]) );
  NAND2X2M U14 ( .A(current_state[1]), .B(n4), .Y(n12) );
  INVX2M U15 ( .A(current_state[0]), .Y(n4) );
  OAI32X1M U16 ( .A0(n5), .A1(n12), .A2(n6), .B0(current_state[2]), .B1(n13), 
        .Y(next_state[0]) );
  AOI2BB1X2M U17 ( .A0N(ser_done), .A1N(n4), .B0(n14), .Y(n13) );
  AOI21X2M U18 ( .A0(n4), .A1(n6), .B0(current_state[1]), .Y(n14) );
  INVX2M U19 ( .A(DATA_VALID), .Y(n6) );
  OAI21X2M U20 ( .A0(current_state[2]), .A1(n11), .B0(n8), .Y(next_state[1])
         );
  OA21X2M U21 ( .A0(current_state[1]), .A1(n4), .B0(n12), .Y(n11) );
  NOR2X2M U22 ( .A(n9), .B(n10), .Y(next_state[2]) );
  AOI2B1X1M U23 ( .A1N(PAR_EN), .A0(ser_done), .B0(n4), .Y(n9) );
endmodule


module UART_TX_TOP_TX_data_width8_test_1 ( CLK, RST, P_DATA, DATA_VALID, 
        PAR_EN, PAR_TYP, TX_OUT, Busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, test_si, test_se;
  output TX_OUT, Busy, test_so;
  wire   ser_en, load_en, ser_done, n2;
  wire   [1:0] mux_sel;

  UART_TX_DATA_PATH_width8_test_1 DATAPATH ( .CLK(CLK), .RST(RST), .P_DATA(
        P_DATA), .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), 
        .ser_en(ser_en), .load_en(load_en), .mux_sel(mux_sel), .ser_done(
        ser_done), .TX_OUT(TX_OUT), .TX_OUT_reg(n2), .test_si(test_si), 
        .test_se(test_se) );
  UART_TX_fsm_test_1 FSM ( .CLK(CLK), .RST(RST), .DATA_VALID(DATA_VALID), 
        .ser_done(ser_done), .PAR_EN(PAR_EN), .mux_sel(mux_sel), .ser_en(
        ser_en), .load_en(load_en), .Busy(Busy), .test_si(n2), .test_so(
        test_so), .test_se(test_se) );
endmodule


module UART_RX_data_wd8_RX_bit_count_wd3_prescale_wd6_TX_data_width8_test_1 ( 
        RST, PAR_EN, PAR_TYP, RX_CLK, TX_P_DATA, TX_DATA_VALID, TX_OUT, 
        TX_Busy, TX_CLK, prescale, RX_IN, RX_P_DATA, RX_data_valid, par_err, 
        stp_err, test_si, test_se );
  input [7:0] TX_P_DATA;
  input [5:0] prescale;
  output [7:0] RX_P_DATA;
  input RST, PAR_EN, PAR_TYP, RX_CLK, TX_DATA_VALID, TX_CLK, RX_IN, test_si,
         test_se;
  output TX_OUT, TX_Busy, RX_data_valid, par_err, stp_err;
  wire   n1, n2, n3, n4;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  UART_RX_RX_data_wd8_RX_bit_count_wd3_prescale_wd6_test_1 U0_UART_RX ( .CLK(
        RX_CLK), .RST(n1), .prescale(prescale), .RX_IN(RX_IN), .PAR_TYP(
        PAR_TYP), .PAR_EN(PAR_EN), .P_DATA(RX_P_DATA), .data_valid(
        RX_data_valid), .par_err(par_err), .stp_err(stp_err), .test_si2(n3), 
        .test_si1(test_si), .test_so1(n4), .test_se(test_se) );
  UART_TX_TOP_TX_data_width8_test_1 U0_UART_TX ( .CLK(TX_CLK), .RST(n1), 
        .P_DATA(TX_P_DATA), .DATA_VALID(TX_DATA_VALID), .PAR_EN(PAR_EN), 
        .PAR_TYP(PAR_TYP), .TX_OUT(TX_OUT), .Busy(TX_Busy), .test_si(n4), 
        .test_so(n3), .test_se(test_se) );
endmodule


module ClkDiv_DIV_RATIO_WIDTH6_test_1 ( i_ref_clk, i_rst_n, i_clk_en, 
        i_div_ratio, o_div_clk, test_si, test_so, test_se );
  input [5:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, div_clk, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N27, N28, N29, N30, N32, N33, N34, N35, N36, N37, n12,
         n13, n14, n17, \add_35/carry[5] , \add_35/carry[4] ,
         \add_35/carry[3] , \add_35/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n15, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40;
  wire   [5:0] count;
  assign test_so = div_clk;

  SDFFRQX2M div_clk_reg ( .D(n17), .SI(count[5]), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M clk_en_reg_reg ( .D(n40), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(N1) );
  SDFFRQX2M \count_reg[5]  ( .D(N37), .SI(count[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  SDFFRQX2M \count_reg[0]  ( .D(N32), .SI(N1), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[2]  ( .D(N34), .SI(count[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  SDFFRQX2M \count_reg[3]  ( .D(N35), .SI(count[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[4]  ( .D(N36), .SI(count[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  SDFFRQX2M \count_reg[1]  ( .D(N33), .SI(count[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  OAI2B11X2M U3 ( .A1N(N11), .A0(i_div_ratio[0]), .B0(n39), .C0(N1), .Y(n14)
         );
  NOR2BX2M U4 ( .AN(N30), .B(n14), .Y(N36) );
  NOR2BX2M U5 ( .AN(N29), .B(n14), .Y(N35) );
  NOR2BX2M U6 ( .AN(N28), .B(n14), .Y(N34) );
  NOR2BX2M U7 ( .AN(N27), .B(n14), .Y(N33) );
  INVX2M U8 ( .A(N19), .Y(n39) );
  NOR2X2M U9 ( .A(n1), .B(n14), .Y(N37) );
  XNOR2X2M U10 ( .A(\add_35/carry[5] ), .B(count[5]), .Y(n1) );
  NOR2X2M U11 ( .A(count[0]), .B(n14), .Y(N32) );
  OR2X2M U12 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n6) );
  OR2X2M U13 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  XNOR2X2M U14 ( .A(div_clk), .B(n2), .Y(n17) );
  OAI21X2M U15 ( .A0(N11), .A1(N19), .B0(N1), .Y(n2) );
  INVX2M U16 ( .A(n12), .Y(n40) );
  OAI31X1M U17 ( .A0(n13), .A1(i_div_ratio[2]), .A2(i_div_ratio[1]), .B0(
        i_clk_en), .Y(n12) );
  OR3X2M U18 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[3]), .Y(
        n13) );
  ADDHX1M U19 ( .A(count[1]), .B(count[0]), .CO(\add_35/carry[2] ), .S(N27) );
  ADDHX1M U20 ( .A(count[2]), .B(\add_35/carry[2] ), .CO(\add_35/carry[3] ), 
        .S(N28) );
  ADDHX1M U29 ( .A(count[3]), .B(\add_35/carry[3] ), .CO(\add_35/carry[4] ), 
        .S(N29) );
  ADDHX1M U30 ( .A(count[4]), .B(\add_35/carry[4] ), .CO(\add_35/carry[5] ), 
        .S(N30) );
  MX2X2M U31 ( .A(i_ref_clk), .B(div_clk), .S0(N1), .Y(o_div_clk) );
  CLKINVX1M U32 ( .A(i_div_ratio[1]), .Y(N5) );
  OAI2BB1X1M U33 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n3), .Y(N6)
         );
  OR2X1M U34 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U35 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(N7) );
  XNOR2X1M U36 ( .A(i_div_ratio[4]), .B(n4), .Y(N8) );
  NOR3X1M U37 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(n4), .Y(N10) );
  OAI21X1M U38 ( .A0(i_div_ratio[4]), .A1(n4), .B0(i_div_ratio[5]), .Y(n5) );
  NAND2BX1M U39 ( .AN(N10), .B(n5), .Y(N9) );
  CLKINVX1M U40 ( .A(i_div_ratio[0]), .Y(N12) );
  OAI2BB1X1M U41 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n6), .Y(N13) );
  OR2X1M U42 ( .A(n6), .B(i_div_ratio[2]), .Y(n7) );
  OAI2BB1X1M U43 ( .A0N(n6), .A1N(i_div_ratio[2]), .B0(n7), .Y(N14) );
  OR2X1M U44 ( .A(n7), .B(i_div_ratio[3]), .Y(n8) );
  OAI2BB1X1M U45 ( .A0N(n7), .A1N(i_div_ratio[3]), .B0(n8), .Y(N15) );
  OR2X1M U46 ( .A(n8), .B(i_div_ratio[4]), .Y(n9) );
  OAI2BB1X1M U47 ( .A0N(n8), .A1N(i_div_ratio[4]), .B0(n9), .Y(N16) );
  NOR2X1M U48 ( .A(n9), .B(i_div_ratio[5]), .Y(N18) );
  AO21XLM U49 ( .A0(n9), .A1(i_div_ratio[5]), .B0(N18), .Y(N17) );
  NOR2BX1M U50 ( .AN(count[0]), .B(N5), .Y(n10) );
  OAI2B2X1M U51 ( .A1N(N6), .A0(n10), .B0(count[1]), .B1(n10), .Y(n25) );
  NOR2BX1M U52 ( .AN(N5), .B(count[0]), .Y(n11) );
  OAI2B2X1M U53 ( .A1N(count[1]), .A0(n11), .B0(N6), .B1(n11), .Y(n15) );
  NAND4BBX1M U54 ( .AN(N10), .BN(count[5]), .C(n25), .D(n15), .Y(n29) );
  CLKXOR2X2M U55 ( .A(N9), .B(count[4]), .Y(n28) );
  CLKXOR2X2M U56 ( .A(N7), .B(count[2]), .Y(n27) );
  CLKXOR2X2M U57 ( .A(N8), .B(count[3]), .Y(n26) );
  NOR4X1M U58 ( .A(n29), .B(n28), .C(n27), .D(n26), .Y(N11) );
  NOR2BX1M U59 ( .AN(N12), .B(count[0]), .Y(n30) );
  OAI2B2X1M U60 ( .A1N(count[1]), .A0(n30), .B0(N13), .B1(n30), .Y(n34) );
  XNOR2X1M U61 ( .A(N17), .B(count[5]), .Y(n33) );
  NOR2BX1M U62 ( .AN(count[0]), .B(N12), .Y(n31) );
  OAI2B2X1M U63 ( .A1N(N13), .A0(n31), .B0(count[1]), .B1(n31), .Y(n32) );
  NAND4BX1M U64 ( .AN(N18), .B(n34), .C(n33), .D(n32), .Y(n38) );
  CLKXOR2X2M U65 ( .A(N16), .B(count[4]), .Y(n37) );
  CLKXOR2X2M U66 ( .A(N14), .B(count[2]), .Y(n36) );
  CLKXOR2X2M U67 ( .A(N15), .B(count[3]), .Y(n35) );
  NOR4X1M U68 ( .A(n38), .B(n37), .C(n36), .D(n35), .Y(N19) );
endmodule


module ClkDiv_DIV_RATIO_WIDTH4_test_1 ( i_ref_clk, i_rst_n, i_clk_en, 
        i_div_ratio, o_div_clk, test_si, test_so, test_se );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N1, div_clk, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N26, N27,
         N29, clk_en, n12, n13, n15, n16, n19, n20, n21, n26, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n14, n17, n18, n22, n23, n24, n32, n33;
  wire   [3:0] count;
  assign test_so = div_clk;

  SDFFRQX2M div_clk_reg ( .D(n26), .SI(n33), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(div_clk) );
  SDFFRQX2M clk_en_reg_reg ( .D(clk_en), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(N1) );
  SDFFRQX2M \count_reg[1]  ( .D(N27), .SI(n23), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(count[1]) );
  SDFFRQX2M \count_reg[3]  ( .D(N29), .SI(n32), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(count[3]) );
  SDFFRQX2M \count_reg[0]  ( .D(N26), .SI(N1), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(count[0]) );
  SDFFRQX2M \count_reg[2]  ( .D(n17), .SI(n24), .SE(test_se), .CK(i_ref_clk), 
        .RN(i_rst_n), .Q(count[2]) );
  INVX2M U3 ( .A(n21), .Y(n18) );
  NOR2X2M U4 ( .A(n21), .B(n16), .Y(n19) );
  OR2X2M U5 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n2) );
  NOR3X2M U6 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        N8) );
  AOI211X2M U7 ( .A0(n23), .A1(n24), .B0(n21), .C0(n16), .Y(N27) );
  NOR2X2M U8 ( .A(n24), .B(n23), .Y(n16) );
  OAI2B11X2M U9 ( .A1N(N9), .A0(i_div_ratio[0]), .B0(n22), .C0(N1), .Y(n21) );
  INVX2M U10 ( .A(N15), .Y(n22) );
  OAI21X2M U11 ( .A0(n13), .A1(n33), .B0(n15), .Y(N29) );
  NAND4X2M U12 ( .A(count[2]), .B(n16), .C(n18), .D(n33), .Y(n15) );
  AOI21X2M U13 ( .A0(n18), .A1(n32), .B0(n19), .Y(n13) );
  INVX2M U14 ( .A(count[3]), .Y(n33) );
  INVX2M U15 ( .A(n20), .Y(n17) );
  AOI32X1M U16 ( .A0(n16), .A1(n32), .A2(n18), .B0(count[2]), .B1(n19), .Y(n20) );
  XNOR2X2M U17 ( .A(i_div_ratio[1]), .B(count[0]), .Y(n6) );
  XNOR2X2M U18 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(N6) );
  NAND2BX2M U19 ( .AN(N8), .B(n12), .Y(N7) );
  OAI21X2M U20 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0(i_div_ratio[3]), 
        .Y(n12) );
  NOR2X2M U21 ( .A(count[0]), .B(n21), .Y(N26) );
  XNOR2X2M U22 ( .A(div_clk), .B(n1), .Y(n26) );
  OAI21X2M U23 ( .A0(N15), .A1(N9), .B0(N1), .Y(n1) );
  NOR2BX2M U24 ( .AN(i_clk_en), .B(N8), .Y(clk_en) );
  INVX2M U25 ( .A(count[0]), .Y(n23) );
  INVX2M U26 ( .A(count[2]), .Y(n32) );
  INVX2M U27 ( .A(count[1]), .Y(n24) );
  MX2X2M U28 ( .A(i_ref_clk), .B(div_clk), .S0(N1), .Y(o_div_clk) );
  CLKINVX1M U29 ( .A(i_div_ratio[0]), .Y(N10) );
  OAI2BB1X1M U30 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n2), .Y(N11) );
  OR2X1M U37 ( .A(n2), .B(i_div_ratio[2]), .Y(n3) );
  OAI2BB1X1M U38 ( .A0N(n2), .A1N(i_div_ratio[2]), .B0(n3), .Y(N12) );
  NOR2X1M U39 ( .A(n3), .B(i_div_ratio[3]), .Y(N14) );
  AO21XLM U40 ( .A0(n3), .A1(i_div_ratio[3]), .B0(N14), .Y(N13) );
  XNOR2X1M U41 ( .A(N7), .B(count[2]), .Y(n5) );
  XNOR2X1M U42 ( .A(N6), .B(count[1]), .Y(n4) );
  CLKNAND2X2M U43 ( .A(n5), .B(n4), .Y(n7) );
  NOR4X1M U44 ( .A(n7), .B(n6), .C(N8), .D(count[3]), .Y(N9) );
  XNOR2X1M U45 ( .A(N12), .B(count[2]), .Y(n9) );
  XNOR2X1M U46 ( .A(N13), .B(count[3]), .Y(n8) );
  CLKNAND2X2M U47 ( .A(n9), .B(n8), .Y(n14) );
  CLKXOR2X2M U48 ( .A(N11), .B(count[1]), .Y(n11) );
  CLKXOR2X2M U49 ( .A(N10), .B(count[0]), .Y(n10) );
  NOR4X1M U50 ( .A(n14), .B(n11), .C(N14), .D(n10), .Y(N15) );
endmodule


module RX_DIV_R_CALC_DIV_RATIO_WIDTH4_prescale_wd6 ( prescale, RX_Div_Ratio );
  input [5:0] prescale;
  output [3:0] RX_Div_Ratio;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NOR3X2M U3 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(RX_Div_Ratio[1])
         );
  NOR3X2M U4 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(RX_Div_Ratio[2])
         );
  NAND4BX1M U5 ( .AN(prescale[4]), .B(prescale[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U6 ( .AN(prescale[3]), .B(prescale[4]), .C(n2), .D(n1), .Y(n7) );
  OAI211X2M U7 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(RX_Div_Ratio[0]) );
  NOR4X1M U8 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n2), .Y(
        n8) );
  NAND2X2M U9 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U10 ( .A(prescale[2]), .Y(n2) );
  INVX2M U11 ( .A(prescale[5]), .Y(n1) );
  NOR4X1M U12 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        RX_Div_Ratio[3]) );
  NAND3X2M U13 ( .A(n4), .B(n3), .C(prescale[2]), .Y(n5) );
  INVX2M U14 ( .A(prescale[1]), .Y(n3) );
  INVX2M U15 ( .A(prescale[0]), .Y(n4) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
  AND2X2M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 ( CLK, RST, bus_enable, 
        Unsync_bus, sync_bus, enable_pulse, test_si, test_se );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse;
  wire   pulse_gen, n1, n3, n5, n7, n9, n11, n13, n15, n17, n23;
  wire   [1:0] en_sychronizer;

  SDFFRQX2M pulse_gen_reg ( .D(en_sychronizer[0]), .SI(enable_pulse), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(pulse_gen) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n17), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n15), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n13), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n11), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n9), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M enable_pulse_reg ( .D(n23), .SI(en_sychronizer[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_pulse) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n7), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n3), .SI(pulse_gen), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n5), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \en_sychronizer_reg[1]  ( .D(bus_enable), .SI(en_sychronizer[0]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(en_sychronizer[1]) );
  SDFFRQX1M \en_sychronizer_reg[0]  ( .D(en_sychronizer[1]), .SI(test_si), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(en_sychronizer[0]) );
  INVX2M U4 ( .A(n1), .Y(n23) );
  NAND2BX2M U5 ( .AN(pulse_gen), .B(en_sychronizer[0]), .Y(n1) );
  AO22X1M U6 ( .A0(Unsync_bus[0]), .A1(n23), .B0(sync_bus[0]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(Unsync_bus[1]), .A1(n23), .B0(sync_bus[1]), .B1(n1), .Y(n5)
         );
  AO22X1M U8 ( .A0(Unsync_bus[2]), .A1(n23), .B0(sync_bus[2]), .B1(n1), .Y(n7)
         );
  AO22X1M U9 ( .A0(Unsync_bus[3]), .A1(n23), .B0(sync_bus[3]), .B1(n1), .Y(n9)
         );
  AO22X1M U10 ( .A0(Unsync_bus[4]), .A1(n23), .B0(sync_bus[4]), .B1(n1), .Y(
        n11) );
  AO22X1M U11 ( .A0(Unsync_bus[5]), .A1(n23), .B0(sync_bus[5]), .B1(n1), .Y(
        n13) );
  AO22X1M U12 ( .A0(Unsync_bus[6]), .A1(n23), .B0(sync_bus[6]), .B1(n1), .Y(
        n15) );
  AO22X1M U25 ( .A0(Unsync_bus[7]), .A1(n23), .B0(sync_bus[7]), .B1(n1), .Y(
        n17) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH3_test_1 ( CLK, RST, W_ADDR, R_ADDR, 
        W_DATA, W_EN, R_DATA, test_si, test_so, test_se );
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  input [7:0] W_DATA;
  output [7:0] R_DATA;
  input CLK, RST, W_EN, test_si, test_se;
  output test_so;
  wire   N10, N11, N12, \FIFO[0][7] , \FIFO[0][6] , \FIFO[0][5] , \FIFO[0][4] ,
         \FIFO[0][3] , \FIFO[0][2] , \FIFO[0][1] , \FIFO[0][0] , \FIFO[1][7] ,
         \FIFO[1][6] , \FIFO[1][5] , \FIFO[1][4] , \FIFO[1][3] , \FIFO[1][2] ,
         \FIFO[1][1] , \FIFO[1][0] , \FIFO[2][7] , \FIFO[2][6] , \FIFO[2][5] ,
         \FIFO[2][4] , \FIFO[2][3] , \FIFO[2][2] , \FIFO[2][1] , \FIFO[2][0] ,
         \FIFO[3][7] , \FIFO[3][6] , \FIFO[3][5] , \FIFO[3][4] , \FIFO[3][3] ,
         \FIFO[3][2] , \FIFO[3][1] , \FIFO[3][0] , \FIFO[4][7] , \FIFO[4][6] ,
         \FIFO[4][5] , \FIFO[4][4] , \FIFO[4][3] , \FIFO[4][2] , \FIFO[4][1] ,
         \FIFO[4][0] , \FIFO[5][7] , \FIFO[5][6] , \FIFO[5][5] , \FIFO[5][4] ,
         \FIFO[5][3] , \FIFO[5][2] , \FIFO[5][1] , \FIFO[5][0] , \FIFO[6][7] ,
         \FIFO[6][6] , \FIFO[6][5] , \FIFO[6][4] , \FIFO[6][3] , \FIFO[6][2] ,
         \FIFO[6][1] , \FIFO[6][0] , \FIFO[7][7] , \FIFO[7][6] , \FIFO[7][5] ,
         \FIFO[7][4] , \FIFO[7][3] , \FIFO[7][2] , \FIFO[7][1] , \FIFO[7][0] ,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179;
  assign N10 = R_ADDR[0];
  assign N11 = R_ADDR[1];
  assign N12 = R_ADDR[2];
  assign test_so = \FIFO[7][7] ;

  SDFFRQX2M \FIFO_reg[1][7]  ( .D(n140), .SI(\FIFO[1][6] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[1][7] ) );
  SDFFRQX2M \FIFO_reg[1][6]  ( .D(n139), .SI(\FIFO[1][5] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[1][6] ) );
  SDFFRQX2M \FIFO_reg[1][5]  ( .D(n138), .SI(\FIFO[1][4] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[1][5] ) );
  SDFFRQX2M \FIFO_reg[1][4]  ( .D(n137), .SI(\FIFO[1][3] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[1][4] ) );
  SDFFRQX2M \FIFO_reg[1][3]  ( .D(n136), .SI(\FIFO[1][2] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[1][3] ) );
  SDFFRQX2M \FIFO_reg[1][2]  ( .D(n135), .SI(\FIFO[1][1] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[1][2] ) );
  SDFFRQX2M \FIFO_reg[1][1]  ( .D(n134), .SI(\FIFO[1][0] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[1][1] ) );
  SDFFRQX2M \FIFO_reg[1][0]  ( .D(n133), .SI(\FIFO[0][7] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[1][0] ) );
  SDFFRQX2M \FIFO_reg[5][7]  ( .D(n108), .SI(\FIFO[5][6] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][7] ) );
  SDFFRQX2M \FIFO_reg[5][6]  ( .D(n107), .SI(\FIFO[5][5] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][6] ) );
  SDFFRQX2M \FIFO_reg[5][5]  ( .D(n106), .SI(\FIFO[5][4] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][5] ) );
  SDFFRQX2M \FIFO_reg[5][4]  ( .D(n105), .SI(\FIFO[5][3] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][4] ) );
  SDFFRQX2M \FIFO_reg[5][3]  ( .D(n104), .SI(\FIFO[5][2] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][3] ) );
  SDFFRQX2M \FIFO_reg[5][2]  ( .D(n103), .SI(\FIFO[5][1] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][2] ) );
  SDFFRQX2M \FIFO_reg[5][1]  ( .D(n102), .SI(\FIFO[5][0] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][1] ) );
  SDFFRQX2M \FIFO_reg[5][0]  ( .D(n101), .SI(\FIFO[4][7] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[5][0] ) );
  SDFFRQX2M \FIFO_reg[3][7]  ( .D(n124), .SI(\FIFO[3][6] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][7] ) );
  SDFFRQX2M \FIFO_reg[3][6]  ( .D(n123), .SI(\FIFO[3][5] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][6] ) );
  SDFFRQX2M \FIFO_reg[3][5]  ( .D(n122), .SI(\FIFO[3][4] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][5] ) );
  SDFFRQX2M \FIFO_reg[3][4]  ( .D(n121), .SI(\FIFO[3][3] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][4] ) );
  SDFFRQX2M \FIFO_reg[3][3]  ( .D(n120), .SI(\FIFO[3][2] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][3] ) );
  SDFFRQX2M \FIFO_reg[3][2]  ( .D(n119), .SI(\FIFO[3][1] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][2] ) );
  SDFFRQX2M \FIFO_reg[3][1]  ( .D(n118), .SI(\FIFO[3][0] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][1] ) );
  SDFFRQX2M \FIFO_reg[3][0]  ( .D(n117), .SI(\FIFO[2][7] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[3][0] ) );
  SDFFRQX2M \FIFO_reg[7][7]  ( .D(n92), .SI(\FIFO[7][6] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[7][7] ) );
  SDFFRQX2M \FIFO_reg[7][6]  ( .D(n91), .SI(\FIFO[7][5] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[7][6] ) );
  SDFFRQX2M \FIFO_reg[7][5]  ( .D(n90), .SI(\FIFO[7][4] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[7][5] ) );
  SDFFRQX2M \FIFO_reg[7][4]  ( .D(n89), .SI(\FIFO[7][3] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[7][4] ) );
  SDFFRQX2M \FIFO_reg[7][3]  ( .D(n88), .SI(\FIFO[7][2] ), .SE(test_se), .CK(
        CLK), .RN(n169), .Q(\FIFO[7][3] ) );
  SDFFRQX2M \FIFO_reg[7][2]  ( .D(n87), .SI(\FIFO[7][1] ), .SE(test_se), .CK(
        CLK), .RN(n169), .Q(\FIFO[7][2] ) );
  SDFFRQX2M \FIFO_reg[7][1]  ( .D(n86), .SI(\FIFO[7][0] ), .SE(test_se), .CK(
        CLK), .RN(n169), .Q(\FIFO[7][1] ) );
  SDFFRQX2M \FIFO_reg[7][0]  ( .D(n85), .SI(\FIFO[6][7] ), .SE(test_se), .CK(
        CLK), .RN(n169), .Q(\FIFO[7][0] ) );
  SDFFRQX2M \FIFO_reg[2][7]  ( .D(n132), .SI(\FIFO[2][6] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][7] ) );
  SDFFRQX2M \FIFO_reg[2][6]  ( .D(n131), .SI(\FIFO[2][5] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][6] ) );
  SDFFRQX2M \FIFO_reg[2][5]  ( .D(n130), .SI(\FIFO[2][4] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][5] ) );
  SDFFRQX2M \FIFO_reg[2][4]  ( .D(n129), .SI(\FIFO[2][3] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][4] ) );
  SDFFRQX2M \FIFO_reg[2][3]  ( .D(n128), .SI(\FIFO[2][2] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][3] ) );
  SDFFRQX2M \FIFO_reg[2][2]  ( .D(n127), .SI(\FIFO[2][1] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][2] ) );
  SDFFRQX2M \FIFO_reg[2][1]  ( .D(n126), .SI(\FIFO[2][0] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][1] ) );
  SDFFRQX2M \FIFO_reg[2][0]  ( .D(n125), .SI(\FIFO[1][7] ), .SE(test_se), .CK(
        CLK), .RN(n165), .Q(\FIFO[2][0] ) );
  SDFFRQX2M \FIFO_reg[6][7]  ( .D(n100), .SI(\FIFO[6][6] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][7] ) );
  SDFFRQX2M \FIFO_reg[6][6]  ( .D(n99), .SI(\FIFO[6][5] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][6] ) );
  SDFFRQX2M \FIFO_reg[6][5]  ( .D(n98), .SI(\FIFO[6][4] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][5] ) );
  SDFFRQX2M \FIFO_reg[6][4]  ( .D(n97), .SI(\FIFO[6][3] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][4] ) );
  SDFFRQX2M \FIFO_reg[6][3]  ( .D(n96), .SI(\FIFO[6][2] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][3] ) );
  SDFFRQX2M \FIFO_reg[6][2]  ( .D(n95), .SI(\FIFO[6][1] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][2] ) );
  SDFFRQX2M \FIFO_reg[6][1]  ( .D(n94), .SI(\FIFO[6][0] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][1] ) );
  SDFFRQX2M \FIFO_reg[6][0]  ( .D(n93), .SI(\FIFO[5][7] ), .SE(test_se), .CK(
        CLK), .RN(n168), .Q(\FIFO[6][0] ) );
  SDFFRQX2M \FIFO_reg[0][7]  ( .D(n148), .SI(\FIFO[0][6] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][7] ) );
  SDFFRQX2M \FIFO_reg[0][6]  ( .D(n147), .SI(\FIFO[0][5] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][6] ) );
  SDFFRQX2M \FIFO_reg[0][5]  ( .D(n146), .SI(\FIFO[0][4] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][5] ) );
  SDFFRQX2M \FIFO_reg[0][4]  ( .D(n145), .SI(\FIFO[0][3] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][4] ) );
  SDFFRQX2M \FIFO_reg[0][3]  ( .D(n144), .SI(\FIFO[0][2] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][3] ) );
  SDFFRQX2M \FIFO_reg[0][2]  ( .D(n143), .SI(\FIFO[0][1] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][2] ) );
  SDFFRQX2M \FIFO_reg[0][1]  ( .D(n142), .SI(\FIFO[0][0] ), .SE(test_se), .CK(
        CLK), .RN(n164), .Q(\FIFO[0][1] ) );
  SDFFRQX2M \FIFO_reg[0][0]  ( .D(n141), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(n164), .Q(\FIFO[0][0] ) );
  SDFFRQX2M \FIFO_reg[4][7]  ( .D(n116), .SI(\FIFO[4][6] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[4][7] ) );
  SDFFRQX2M \FIFO_reg[4][6]  ( .D(n115), .SI(\FIFO[4][5] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[4][6] ) );
  SDFFRQX2M \FIFO_reg[4][5]  ( .D(n114), .SI(\FIFO[4][4] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[4][5] ) );
  SDFFRQX2M \FIFO_reg[4][4]  ( .D(n113), .SI(\FIFO[4][3] ), .SE(test_se), .CK(
        CLK), .RN(n166), .Q(\FIFO[4][4] ) );
  SDFFRQX2M \FIFO_reg[4][3]  ( .D(n112), .SI(\FIFO[4][2] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[4][3] ) );
  SDFFRQX2M \FIFO_reg[4][2]  ( .D(n111), .SI(\FIFO[4][1] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[4][2] ) );
  SDFFRQX2M \FIFO_reg[4][1]  ( .D(n110), .SI(\FIFO[4][0] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[4][1] ) );
  SDFFRQX2M \FIFO_reg[4][0]  ( .D(n109), .SI(\FIFO[3][7] ), .SE(test_se), .CK(
        CLK), .RN(n167), .Q(\FIFO[4][0] ) );
  BUFX2M U66 ( .A(n82), .Y(n158) );
  BUFX2M U67 ( .A(n80), .Y(n159) );
  BUFX2M U68 ( .A(n77), .Y(n161) );
  BUFX2M U69 ( .A(n78), .Y(n160) );
  BUFX2M U70 ( .A(n83), .Y(n157) );
  BUFX2M U71 ( .A(n163), .Y(n168) );
  BUFX2M U72 ( .A(n163), .Y(n167) );
  BUFX2M U73 ( .A(n162), .Y(n166) );
  BUFX2M U74 ( .A(n162), .Y(n165) );
  BUFX2M U75 ( .A(n162), .Y(n164) );
  BUFX2M U76 ( .A(n163), .Y(n169) );
  BUFX2M U77 ( .A(RST), .Y(n163) );
  BUFX2M U78 ( .A(RST), .Y(n162) );
  NAND3X2M U79 ( .A(n170), .B(n171), .C(n81), .Y(n84) );
  NAND3X2M U80 ( .A(n170), .B(n171), .C(n76), .Y(n79) );
  NOR2BX2M U81 ( .AN(W_EN), .B(W_ADDR[2]), .Y(n81) );
  OAI2BB2X1M U82 ( .B0(n179), .B1(n84), .A0N(\FIFO[0][0] ), .A1N(n84), .Y(n141) );
  OAI2BB2X1M U83 ( .B0(n178), .B1(n84), .A0N(\FIFO[0][1] ), .A1N(n84), .Y(n142) );
  OAI2BB2X1M U84 ( .B0(n177), .B1(n84), .A0N(\FIFO[0][2] ), .A1N(n84), .Y(n143) );
  OAI2BB2X1M U85 ( .B0(n176), .B1(n84), .A0N(\FIFO[0][3] ), .A1N(n84), .Y(n144) );
  OAI2BB2X1M U86 ( .B0(n175), .B1(n84), .A0N(\FIFO[0][4] ), .A1N(n84), .Y(n145) );
  OAI2BB2X1M U87 ( .B0(n174), .B1(n84), .A0N(\FIFO[0][5] ), .A1N(n84), .Y(n146) );
  OAI2BB2X1M U88 ( .B0(n173), .B1(n84), .A0N(\FIFO[0][6] ), .A1N(n84), .Y(n147) );
  OAI2BB2X1M U89 ( .B0(n172), .B1(n84), .A0N(\FIFO[0][7] ), .A1N(n84), .Y(n148) );
  OAI2BB2X1M U90 ( .B0(n179), .B1(n159), .A0N(\FIFO[3][0] ), .A1N(n159), .Y(
        n117) );
  OAI2BB2X1M U91 ( .B0(n178), .B1(n159), .A0N(\FIFO[3][1] ), .A1N(n159), .Y(
        n118) );
  OAI2BB2X1M U92 ( .B0(n177), .B1(n159), .A0N(\FIFO[3][2] ), .A1N(n159), .Y(
        n119) );
  OAI2BB2X1M U93 ( .B0(n176), .B1(n159), .A0N(\FIFO[3][3] ), .A1N(n159), .Y(
        n120) );
  OAI2BB2X1M U94 ( .B0(n175), .B1(n159), .A0N(\FIFO[3][4] ), .A1N(n159), .Y(
        n121) );
  OAI2BB2X1M U95 ( .B0(n174), .B1(n159), .A0N(\FIFO[3][5] ), .A1N(n159), .Y(
        n122) );
  OAI2BB2X1M U96 ( .B0(n173), .B1(n159), .A0N(\FIFO[3][6] ), .A1N(n159), .Y(
        n123) );
  OAI2BB2X1M U97 ( .B0(n172), .B1(n159), .A0N(\FIFO[3][7] ), .A1N(n159), .Y(
        n124) );
  OAI2BB2X1M U98 ( .B0(n179), .B1(n158), .A0N(\FIFO[2][0] ), .A1N(n158), .Y(
        n125) );
  OAI2BB2X1M U99 ( .B0(n178), .B1(n158), .A0N(\FIFO[2][1] ), .A1N(n158), .Y(
        n126) );
  OAI2BB2X1M U100 ( .B0(n177), .B1(n158), .A0N(\FIFO[2][2] ), .A1N(n158), .Y(
        n127) );
  OAI2BB2X1M U101 ( .B0(n176), .B1(n158), .A0N(\FIFO[2][3] ), .A1N(n158), .Y(
        n128) );
  OAI2BB2X1M U102 ( .B0(n175), .B1(n158), .A0N(\FIFO[2][4] ), .A1N(n158), .Y(
        n129) );
  OAI2BB2X1M U103 ( .B0(n174), .B1(n158), .A0N(\FIFO[2][5] ), .A1N(n158), .Y(
        n130) );
  OAI2BB2X1M U104 ( .B0(n173), .B1(n158), .A0N(\FIFO[2][6] ), .A1N(n158), .Y(
        n131) );
  OAI2BB2X1M U105 ( .B0(n172), .B1(n158), .A0N(\FIFO[2][7] ), .A1N(n158), .Y(
        n132) );
  OAI2BB2X1M U106 ( .B0(n179), .B1(n157), .A0N(\FIFO[1][0] ), .A1N(n157), .Y(
        n133) );
  OAI2BB2X1M U107 ( .B0(n178), .B1(n157), .A0N(\FIFO[1][1] ), .A1N(n157), .Y(
        n134) );
  OAI2BB2X1M U108 ( .B0(n177), .B1(n157), .A0N(\FIFO[1][2] ), .A1N(n157), .Y(
        n135) );
  OAI2BB2X1M U109 ( .B0(n176), .B1(n157), .A0N(\FIFO[1][3] ), .A1N(n157), .Y(
        n136) );
  OAI2BB2X1M U110 ( .B0(n175), .B1(n157), .A0N(\FIFO[1][4] ), .A1N(n157), .Y(
        n137) );
  OAI2BB2X1M U111 ( .B0(n174), .B1(n157), .A0N(\FIFO[1][5] ), .A1N(n157), .Y(
        n138) );
  OAI2BB2X1M U112 ( .B0(n173), .B1(n157), .A0N(\FIFO[1][6] ), .A1N(n157), .Y(
        n139) );
  OAI2BB2X1M U113 ( .B0(n172), .B1(n157), .A0N(\FIFO[1][7] ), .A1N(n157), .Y(
        n140) );
  NAND3X2M U114 ( .A(W_ADDR[1]), .B(W_ADDR[0]), .C(n81), .Y(n80) );
  NAND3X2M U115 ( .A(W_ADDR[1]), .B(n170), .C(n81), .Y(n82) );
  NAND3X2M U116 ( .A(W_ADDR[0]), .B(n171), .C(n81), .Y(n83) );
  NAND3X2M U117 ( .A(W_ADDR[0]), .B(n76), .C(W_ADDR[1]), .Y(n75) );
  OAI2BB2X1M U118 ( .B0(n75), .B1(n179), .A0N(\FIFO[7][0] ), .A1N(n75), .Y(n85) );
  OAI2BB2X1M U119 ( .B0(n75), .B1(n178), .A0N(\FIFO[7][1] ), .A1N(n75), .Y(n86) );
  OAI2BB2X1M U120 ( .B0(n75), .B1(n177), .A0N(\FIFO[7][2] ), .A1N(n75), .Y(n87) );
  OAI2BB2X1M U121 ( .B0(n75), .B1(n176), .A0N(\FIFO[7][3] ), .A1N(n75), .Y(n88) );
  OAI2BB2X1M U122 ( .B0(n75), .B1(n175), .A0N(\FIFO[7][4] ), .A1N(n75), .Y(n89) );
  OAI2BB2X1M U123 ( .B0(n75), .B1(n174), .A0N(\FIFO[7][5] ), .A1N(n75), .Y(n90) );
  OAI2BB2X1M U124 ( .B0(n75), .B1(n173), .A0N(\FIFO[7][6] ), .A1N(n75), .Y(n91) );
  OAI2BB2X1M U125 ( .B0(n75), .B1(n172), .A0N(\FIFO[7][7] ), .A1N(n75), .Y(n92) );
  OAI2BB2X1M U126 ( .B0(n179), .B1(n79), .A0N(\FIFO[4][0] ), .A1N(n79), .Y(
        n109) );
  OAI2BB2X1M U127 ( .B0(n178), .B1(n79), .A0N(\FIFO[4][1] ), .A1N(n79), .Y(
        n110) );
  OAI2BB2X1M U128 ( .B0(n177), .B1(n79), .A0N(\FIFO[4][2] ), .A1N(n79), .Y(
        n111) );
  OAI2BB2X1M U129 ( .B0(n176), .B1(n79), .A0N(\FIFO[4][3] ), .A1N(n79), .Y(
        n112) );
  OAI2BB2X1M U130 ( .B0(n175), .B1(n79), .A0N(\FIFO[4][4] ), .A1N(n79), .Y(
        n113) );
  OAI2BB2X1M U131 ( .B0(n174), .B1(n79), .A0N(\FIFO[4][5] ), .A1N(n79), .Y(
        n114) );
  OAI2BB2X1M U132 ( .B0(n173), .B1(n79), .A0N(\FIFO[4][6] ), .A1N(n79), .Y(
        n115) );
  OAI2BB2X1M U133 ( .B0(n172), .B1(n79), .A0N(\FIFO[4][7] ), .A1N(n79), .Y(
        n116) );
  INVX2M U134 ( .A(W_DATA[1]), .Y(n178) );
  INVX2M U135 ( .A(W_DATA[2]), .Y(n177) );
  INVX2M U136 ( .A(W_DATA[3]), .Y(n176) );
  INVX2M U137 ( .A(W_DATA[4]), .Y(n175) );
  INVX2M U138 ( .A(W_DATA[5]), .Y(n174) );
  INVX2M U139 ( .A(W_DATA[6]), .Y(n173) );
  INVX2M U140 ( .A(W_DATA[7]), .Y(n172) );
  INVX2M U141 ( .A(W_DATA[0]), .Y(n179) );
  OAI2BB2X1M U142 ( .B0(n179), .B1(n161), .A0N(\FIFO[6][0] ), .A1N(n161), .Y(
        n93) );
  OAI2BB2X1M U143 ( .B0(n178), .B1(n161), .A0N(\FIFO[6][1] ), .A1N(n161), .Y(
        n94) );
  OAI2BB2X1M U144 ( .B0(n177), .B1(n161), .A0N(\FIFO[6][2] ), .A1N(n161), .Y(
        n95) );
  OAI2BB2X1M U145 ( .B0(n176), .B1(n161), .A0N(\FIFO[6][3] ), .A1N(n161), .Y(
        n96) );
  OAI2BB2X1M U146 ( .B0(n175), .B1(n161), .A0N(\FIFO[6][4] ), .A1N(n161), .Y(
        n97) );
  OAI2BB2X1M U147 ( .B0(n174), .B1(n161), .A0N(\FIFO[6][5] ), .A1N(n161), .Y(
        n98) );
  OAI2BB2X1M U148 ( .B0(n173), .B1(n161), .A0N(\FIFO[6][6] ), .A1N(n161), .Y(
        n99) );
  OAI2BB2X1M U149 ( .B0(n172), .B1(n161), .A0N(\FIFO[6][7] ), .A1N(n161), .Y(
        n100) );
  OAI2BB2X1M U150 ( .B0(n179), .B1(n160), .A0N(\FIFO[5][0] ), .A1N(n160), .Y(
        n101) );
  OAI2BB2X1M U151 ( .B0(n178), .B1(n160), .A0N(\FIFO[5][1] ), .A1N(n160), .Y(
        n102) );
  OAI2BB2X1M U152 ( .B0(n177), .B1(n160), .A0N(\FIFO[5][2] ), .A1N(n160), .Y(
        n103) );
  OAI2BB2X1M U153 ( .B0(n176), .B1(n160), .A0N(\FIFO[5][3] ), .A1N(n160), .Y(
        n104) );
  OAI2BB2X1M U154 ( .B0(n175), .B1(n160), .A0N(\FIFO[5][4] ), .A1N(n160), .Y(
        n105) );
  OAI2BB2X1M U155 ( .B0(n174), .B1(n160), .A0N(\FIFO[5][5] ), .A1N(n160), .Y(
        n106) );
  OAI2BB2X1M U156 ( .B0(n173), .B1(n160), .A0N(\FIFO[5][6] ), .A1N(n160), .Y(
        n107) );
  OAI2BB2X1M U157 ( .B0(n172), .B1(n160), .A0N(\FIFO[5][7] ), .A1N(n160), .Y(
        n108) );
  AND2X2M U158 ( .A(W_EN), .B(W_ADDR[2]), .Y(n76) );
  MX2X2M U159 ( .A(n154), .B(n153), .S0(N12), .Y(R_DATA[7]) );
  MX4X1M U160 ( .A(\FIFO[0][7] ), .B(\FIFO[1][7] ), .C(\FIFO[2][7] ), .D(
        \FIFO[3][7] ), .S0(n156), .S1(N11), .Y(n154) );
  MX4X1M U161 ( .A(\FIFO[4][7] ), .B(\FIFO[5][7] ), .C(\FIFO[6][7] ), .D(
        \FIFO[7][7] ), .S0(n155), .S1(N11), .Y(n153) );
  MX2X2M U162 ( .A(n152), .B(n151), .S0(N12), .Y(R_DATA[6]) );
  MX4X1M U163 ( .A(\FIFO[0][6] ), .B(\FIFO[1][6] ), .C(\FIFO[2][6] ), .D(
        \FIFO[3][6] ), .S0(n156), .S1(N11), .Y(n152) );
  MX4X1M U164 ( .A(\FIFO[4][6] ), .B(\FIFO[5][6] ), .C(\FIFO[6][6] ), .D(
        \FIFO[7][6] ), .S0(n155), .S1(N11), .Y(n151) );
  NAND3X2M U165 ( .A(n76), .B(n170), .C(W_ADDR[1]), .Y(n77) );
  NAND3X2M U166 ( .A(n76), .B(n171), .C(W_ADDR[0]), .Y(n78) );
  MX2X2M U167 ( .A(n70), .B(n69), .S0(N12), .Y(R_DATA[2]) );
  MX4X1M U168 ( .A(\FIFO[0][2] ), .B(\FIFO[1][2] ), .C(\FIFO[2][2] ), .D(
        \FIFO[3][2] ), .S0(n156), .S1(N11), .Y(n70) );
  MX4X1M U169 ( .A(\FIFO[4][2] ), .B(\FIFO[5][2] ), .C(\FIFO[6][2] ), .D(
        \FIFO[7][2] ), .S0(n155), .S1(N11), .Y(n69) );
  MX2X2M U170 ( .A(n72), .B(n71), .S0(N12), .Y(R_DATA[3]) );
  MX4X1M U171 ( .A(\FIFO[0][3] ), .B(\FIFO[1][3] ), .C(\FIFO[2][3] ), .D(
        \FIFO[3][3] ), .S0(n156), .S1(N11), .Y(n72) );
  MX4X1M U172 ( .A(\FIFO[4][3] ), .B(\FIFO[5][3] ), .C(\FIFO[6][3] ), .D(
        \FIFO[7][3] ), .S0(n155), .S1(N11), .Y(n71) );
  MX2X2M U173 ( .A(n74), .B(n73), .S0(N12), .Y(R_DATA[4]) );
  MX4X1M U174 ( .A(\FIFO[0][4] ), .B(\FIFO[1][4] ), .C(\FIFO[2][4] ), .D(
        \FIFO[3][4] ), .S0(n156), .S1(N11), .Y(n74) );
  MX4X1M U175 ( .A(\FIFO[4][4] ), .B(\FIFO[5][4] ), .C(\FIFO[6][4] ), .D(
        \FIFO[7][4] ), .S0(n155), .S1(N11), .Y(n73) );
  MX2X2M U176 ( .A(n66), .B(n65), .S0(N12), .Y(R_DATA[0]) );
  MX4X1M U177 ( .A(\FIFO[0][0] ), .B(\FIFO[1][0] ), .C(\FIFO[2][0] ), .D(
        \FIFO[3][0] ), .S0(n156), .S1(N11), .Y(n66) );
  MX4X1M U178 ( .A(\FIFO[4][0] ), .B(\FIFO[5][0] ), .C(\FIFO[6][0] ), .D(
        \FIFO[7][0] ), .S0(n155), .S1(N11), .Y(n65) );
  MX2X2M U179 ( .A(n150), .B(n149), .S0(N12), .Y(R_DATA[5]) );
  MX4X1M U180 ( .A(\FIFO[0][5] ), .B(\FIFO[1][5] ), .C(\FIFO[2][5] ), .D(
        \FIFO[3][5] ), .S0(n156), .S1(N11), .Y(n150) );
  MX4X1M U181 ( .A(\FIFO[4][5] ), .B(\FIFO[5][5] ), .C(\FIFO[6][5] ), .D(
        \FIFO[7][5] ), .S0(n155), .S1(N11), .Y(n149) );
  MX2X2M U182 ( .A(n68), .B(n67), .S0(N12), .Y(R_DATA[1]) );
  MX4X1M U183 ( .A(\FIFO[0][1] ), .B(\FIFO[1][1] ), .C(\FIFO[2][1] ), .D(
        \FIFO[3][1] ), .S0(n156), .S1(N11), .Y(n68) );
  MX4X1M U184 ( .A(\FIFO[4][1] ), .B(\FIFO[5][1] ), .C(\FIFO[6][1] ), .D(
        \FIFO[7][1] ), .S0(n155), .S1(N11), .Y(n67) );
  BUFX2M U185 ( .A(N10), .Y(n155) );
  BUFX2M U186 ( .A(N10), .Y(n156) );
  INVX2M U187 ( .A(W_ADDR[1]), .Y(n171) );
  INVX2M U188 ( .A(W_ADDR[0]), .Y(n170) );
endmodule


module READ_EMPTY_ADDR_WIDTH3_test_1 ( CLK, RST, R_INC, W_PTR_SYNC, EMPTY, 
        R_ADDR, R_PTR, test_si, test_se );
  input [3:0] W_PTR_SYNC;
  output [2:0] R_ADDR;
  output [3:0] R_PTR;
  input CLK, RST, R_INC, test_si, test_se;
  output EMPTY;
  wire   n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n1, n2, n7;

  SDFFRQX2M \R_count_reg[3]  ( .D(n22), .SI(R_ADDR[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(R_PTR[3]) );
  SDFFRQX2M \R_count_reg[0]  ( .D(n25), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(R_ADDR[0]) );
  SDFFRQX2M \R_count_reg[2]  ( .D(n23), .SI(n7), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(R_ADDR[2]) );
  SDFFRQX2M \R_count_reg[1]  ( .D(n24), .SI(n2), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(R_ADDR[1]) );
  NOR2X2M U7 ( .A(n16), .B(n2), .Y(n15) );
  NAND2X2M U8 ( .A(R_INC), .B(n17), .Y(n16) );
  INVX2M U9 ( .A(n17), .Y(EMPTY) );
  CLKXOR2X2M U10 ( .A(n2), .B(n7), .Y(R_PTR[0]) );
  CLKXOR2X2M U11 ( .A(n2), .B(n16), .Y(n25) );
  OAI32X1M U12 ( .A0(n16), .A1(R_ADDR[1]), .A2(n2), .B0(n15), .B1(n7), .Y(n24)
         );
  XNOR2X2M U13 ( .A(R_PTR[0]), .B(W_PTR_SYNC[0]), .Y(n19) );
  XNOR2X2M U14 ( .A(R_ADDR[2]), .B(n14), .Y(n23) );
  NAND2X2M U15 ( .A(n15), .B(R_ADDR[1]), .Y(n14) );
  NAND4X2M U16 ( .A(n18), .B(n19), .C(n20), .D(n21), .Y(n17) );
  CLKXOR2X2M U17 ( .A(n1), .B(R_PTR[3]), .Y(n20) );
  XNOR2X2M U18 ( .A(R_PTR[2]), .B(W_PTR_SYNC[2]), .Y(n21) );
  XNOR2X2M U19 ( .A(R_PTR[1]), .B(W_PTR_SYNC[1]), .Y(n18) );
  OAI2BB2X1M U20 ( .B0(n10), .B1(n11), .A0N(n11), .A1N(R_PTR[3]), .Y(n22) );
  AOI2B1X1M U21 ( .A1N(R_PTR[3]), .A0(n12), .B0(n13), .Y(n10) );
  NAND4X2M U22 ( .A(R_ADDR[2]), .B(R_ADDR[1]), .C(R_INC), .D(R_ADDR[0]), .Y(
        n11) );
  NOR4X1M U23 ( .A(W_PTR_SYNC[2]), .B(W_PTR_SYNC[1]), .C(W_PTR_SYNC[0]), .D(n1), .Y(n13) );
  INVX2M U24 ( .A(R_ADDR[1]), .Y(n7) );
  INVX2M U25 ( .A(R_ADDR[0]), .Y(n2) );
  INVX2M U26 ( .A(W_PTR_SYNC[3]), .Y(n1) );
  CLKXOR2X2M U27 ( .A(R_ADDR[2]), .B(R_ADDR[1]), .Y(R_PTR[1]) );
  CLKXOR2X2M U28 ( .A(R_ADDR[2]), .B(R_PTR[3]), .Y(R_PTR[2]) );
  NAND4BBX1M U29 ( .AN(W_PTR_SYNC[1]), .BN(W_PTR_SYNC[0]), .C(W_PTR_SYNC[2]), 
        .D(n1), .Y(n12) );
endmodule


module WRITE_FULL_ADDR_WIDTH3_test_1 ( CLK, RST, W_INC, R_PTR_SYNC, FULL, 
        W_ADDR, W_PTR, MEM_W_EN, test_si, test_se );
  input [3:0] R_PTR_SYNC;
  output [2:0] W_ADDR;
  output [3:0] W_PTR;
  input CLK, RST, W_INC, test_si, test_se;
  output FULL, MEM_W_EN;
  wire   n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n1, n2, n3;

  SDFFRQX2M \W_count_reg[3]  ( .D(n24), .SI(W_ADDR[2]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(W_PTR[3]) );
  SDFFRQX2M \W_count_reg[2]  ( .D(n25), .SI(W_ADDR[1]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(W_ADDR[2]) );
  SDFFRQX2M \W_count_reg[0]  ( .D(n27), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(W_ADDR[0]) );
  SDFFRQX2M \W_count_reg[1]  ( .D(n26), .SI(n2), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(W_ADDR[1]) );
  INVX2M U7 ( .A(n18), .Y(MEM_W_EN) );
  NAND2X2M U8 ( .A(W_INC), .B(n19), .Y(n18) );
  INVX2M U9 ( .A(n19), .Y(FULL) );
  NOR2X2M U10 ( .A(n18), .B(n2), .Y(n17) );
  XNOR2X2M U11 ( .A(W_PTR[0]), .B(R_PTR_SYNC[0]), .Y(n23) );
  XNOR2X2M U12 ( .A(W_ADDR[2]), .B(n3), .Y(W_PTR[1]) );
  XNOR2X2M U13 ( .A(W_ADDR[0]), .B(n3), .Y(W_PTR[0]) );
  NAND4X2M U14 ( .A(n20), .B(n21), .C(n22), .D(n23), .Y(n19) );
  CLKXOR2X2M U15 ( .A(W_PTR[3]), .B(R_PTR_SYNC[3]), .Y(n20) );
  XNOR2X2M U16 ( .A(n1), .B(W_PTR[2]), .Y(n21) );
  XNOR2X2M U17 ( .A(W_PTR[1]), .B(R_PTR_SYNC[1]), .Y(n22) );
  INVX2M U18 ( .A(W_ADDR[1]), .Y(n3) );
  OAI32X1M U19 ( .A0(n18), .A1(W_ADDR[1]), .A2(n2), .B0(n17), .B1(n3), .Y(n26)
         );
  XNOR2X2M U20 ( .A(W_ADDR[0]), .B(n18), .Y(n27) );
  XNOR2X2M U21 ( .A(W_ADDR[2]), .B(n16), .Y(n25) );
  NAND2X2M U22 ( .A(n17), .B(W_ADDR[1]), .Y(n16) );
  OAI2BB2X1M U23 ( .B0(n12), .B1(n13), .A0N(n13), .A1N(W_PTR[3]), .Y(n24) );
  AOI2B1X1M U24 ( .A1N(W_PTR[3]), .A0(n14), .B0(n15), .Y(n12) );
  NAND4X2M U25 ( .A(W_ADDR[2]), .B(W_ADDR[1]), .C(W_INC), .D(W_ADDR[0]), .Y(
        n13) );
  NOR4X1M U26 ( .A(R_PTR_SYNC[3]), .B(R_PTR_SYNC[1]), .C(R_PTR_SYNC[0]), .D(n1), .Y(n15) );
  INVX2M U27 ( .A(R_PTR_SYNC[2]), .Y(n1) );
  CLKXOR2X2M U28 ( .A(W_ADDR[2]), .B(W_PTR[3]), .Y(W_PTR[2]) );
  NAND4BBX1M U29 ( .AN(R_PTR_SYNC[1]), .BN(R_PTR_SYNC[0]), .C(R_PTR_SYNC[3]), 
        .D(n1), .Y(n14) );
  INVX2M U30 ( .A(W_ADDR[0]), .Y(n2) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 ( CLK, RST, ASYNC, SYNC, 
        test_si1, test_so1, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si1, test_se;
  output test_so1;
  wire   \sychronizer[0][1] , \sychronizer[1][1] , \sychronizer[2][1] ,
         \sychronizer[3][1] ;
  assign test_so1 = \sychronizer[3][1] ;

  SDFFRQX2M \sychronizer_reg[3][0]  ( .D(\sychronizer[3][1] ), .SI(
        \sychronizer[2][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sychronizer_reg[1][0]  ( .D(\sychronizer[1][1] ), .SI(
        \sychronizer[0][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sychronizer_reg[2][0]  ( .D(\sychronizer[2][1] ), .SI(
        \sychronizer[1][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sychronizer_reg[0][0]  ( .D(\sychronizer[0][1] ), .SI(ASYNC[3]), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sychronizer_reg[0][1]  ( .D(ASYNC[0]), .SI(test_si1), .SE(test_se), .CK(CLK), .RN(RST), .Q(\sychronizer[0][1] ) );
  SDFFRQX2M \sychronizer_reg[1][1]  ( .D(ASYNC[1]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[1][1] ) );
  SDFFRQX2M \sychronizer_reg[2][1]  ( .D(ASYNC[2]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[2][1] ) );
  SDFFRQX2M \sychronizer_reg[3][1]  ( .D(ASYNC[3]), .SI(SYNC[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[3][1] ) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 ( CLK, RST, ASYNC, SYNC, test_si, 
        test_so, test_se );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST, test_si, test_se;
  output test_so;
  wire   \sychronizer[0][1] , \sychronizer[1][1] , \sychronizer[2][1] ,
         \sychronizer[3][1] ;
  assign test_so = \sychronizer[3][1] ;

  SDFFRQX2M \sychronizer_reg[2][0]  ( .D(\sychronizer[2][1] ), .SI(
        \sychronizer[1][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[2]) );
  SDFFRQX2M \sychronizer_reg[1][0]  ( .D(\sychronizer[1][1] ), .SI(
        \sychronizer[0][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[1]) );
  SDFFRQX2M \sychronizer_reg[0][0]  ( .D(\sychronizer[0][1] ), .SI(test_si), 
        .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[0]) );
  SDFFRQX2M \sychronizer_reg[3][0]  ( .D(\sychronizer[3][1] ), .SI(
        \sychronizer[2][1] ), .SE(test_se), .CK(CLK), .RN(RST), .Q(SYNC[3]) );
  SDFFRQX2M \sychronizer_reg[0][1]  ( .D(ASYNC[0]), .SI(SYNC[0]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[0][1] ) );
  SDFFRQX2M \sychronizer_reg[1][1]  ( .D(ASYNC[1]), .SI(SYNC[1]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[1][1] ) );
  SDFFRQX2M \sychronizer_reg[2][1]  ( .D(ASYNC[2]), .SI(SYNC[2]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[2][1] ) );
  SDFFRQX2M \sychronizer_reg[3][1]  ( .D(ASYNC[3]), .SI(SYNC[3]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(\sychronizer[3][1] ) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3_test_1 ( R_CLK, R_RST, W_CLK, W_RST, 
        W_INC, R_INC, WR_DATA, RD_DATA, FULL, EMPTY, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input R_CLK, R_RST, W_CLK, W_RST, W_INC, R_INC, test_si2, test_si1, test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   MEM_W_EN, n1, n2, n4, n5;
  wire   [2:0] W_ADDR;
  wire   [2:0] R_ADDR;
  wire   [3:0] W_PTR_SYNC;
  wire   [3:0] R_PTR;
  wire   [3:0] R_PTR_SYNC;
  wire   [3:0] W_PTR;
  assign test_so1 = W_PTR_SYNC[0];

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
  FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH3_test_1 U0_FIFO_MEM ( .CLK(W_CLK), .RST(n1), 
        .W_ADDR(W_ADDR), .R_ADDR(R_ADDR), .W_DATA(WR_DATA), .W_EN(MEM_W_EN), 
        .R_DATA(RD_DATA), .test_si(n5), .test_so(n4), .test_se(test_se) );
  READ_EMPTY_ADDR_WIDTH3_test_1 U0_READ_EMPTY ( .CLK(R_CLK), .RST(R_RST), 
        .R_INC(R_INC), .W_PTR_SYNC(W_PTR_SYNC), .EMPTY(EMPTY), .R_ADDR(R_ADDR), 
        .R_PTR(R_PTR), .test_si(n4), .test_se(test_se) );
  WRITE_FULL_ADDR_WIDTH3_test_1 U0_WRITE_FULL ( .CLK(W_CLK), .RST(n1), .W_INC(
        W_INC), .R_PTR_SYNC(R_PTR_SYNC), .FULL(FULL), .W_ADDR(W_ADDR), .W_PTR(
        W_PTR), .MEM_W_EN(MEM_W_EN), .test_si(R_PTR[3]), .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_0 W2R_SYNC ( .CLK(R_CLK), .RST(R_RST), 
        .ASYNC(W_PTR), .SYNC(W_PTR_SYNC), .test_si1(test_si2), .test_so1(
        test_so2), .test_se(test_se) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_test_1 R2W_SYNC ( .CLK(W_CLK), .RST(n1), 
        .ASYNC(R_PTR), .SYNC(R_PTR_SYNC), .test_si(test_si1), .test_so(n5), 
        .test_se(test_se) );
endmodule


module PULSE_GEN_test_1 ( CLK, RST, IN, OUT, test_si, test_so, test_se );
  input CLK, RST, IN, test_si, test_se;
  output OUT, test_so;
  wire   pulse_reg;
  assign test_so = pulse_reg;

  SDFFRQX2M pulse_reg_reg ( .D(IN), .SI(test_si), .SE(test_se), .CK(CLK), .RN(
        RST), .Q(pulse_reg) );
  NOR2BX2M U4 ( .AN(IN), .B(pulse_reg), .Y(OUT) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW_div_uns_0 ( a, b, quotient, 
        remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n19), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n19), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n19), .Y(n6) );
  NAND2X2M U19 ( .A(n8), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n9) );
  INVX2M U21 ( .A(n19), .Y(n8) );
  NAND2X2M U22 ( .A(n6), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n10) );
  NAND2X2M U24 ( .A(n4), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U25 ( .A(a[0]), .Y(n11) );
  NAND2X2M U26 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U27 ( .A(a[6]), .Y(n1) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  INVX2M U29 ( .A(b[1]), .Y(n18) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  NAND2X2M U2 ( .A(A[7]), .B(B[7]), .Y(n15) );
  AOI21BX2M U3 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  INVX2M U4 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U7 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n6), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n5), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U20 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U33 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U34 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U35 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n24) );
  INVX2M U38 ( .A(A[6]), .Y(n25) );
  INVX2M U39 ( .A(A[1]), .Y(n30) );
  INVX2M U40 ( .A(A[0]), .Y(n31) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[4]), .Y(n27) );
  INVX2M U43 ( .A(A[5]), .Y(n26) );
  INVX2M U44 ( .A(A[2]), .Y(n29) );
  INVX2M U45 ( .A(B[6]), .Y(n33) );
  INVX2M U46 ( .A(B[0]), .Y(n39) );
  INVX2M U47 ( .A(B[2]), .Y(n37) );
  INVX2M U48 ( .A(B[3]), .Y(n36) );
  INVX2M U49 ( .A(B[7]), .Y(n32) );
  INVX2M U50 ( .A(B[1]), .Y(n38) );
  INVX2M U51 ( .A(B[5]), .Y(n34) );
  INVX2M U52 ( .A(B[4]), .Y(n35) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
  ALU_op_size8_rslt_size16_fun_size4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, 
        n15, n12, n11, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_test_1 ( CLK, RST, ALU_EN, A, B, 
        ALU_FUN, ALU_OUT, OUT_VALID, test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, ALU_EN, test_si, test_se;
  output OUT_VALID;
  wire   N20, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N157, N158, N159, n10,
         n11, n12, n13, n14, n15, n16, n17, n19, n21, n22, n23, n24, n27, n28,
         n29, n30, n33, n34, n35, n36, n37, n38, n40, n41, n42, n44, n45, n46,
         n48, n50, n51, n52, n53, n54, n55, n57, n58, n59, n60, n61, n63, n65,
         n66, n67, n68, n69, n71, n73, n74, n75, n76, n77, n79, n81, n82, n83,
         n84, n85, n87, n89, n90, n91, n92, n93, n95, n96, n98, n99, n100,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n118, n120, n122, n124, n126, n128, n130,
         n132, n134, n136, n138, n140, n142, n144, n146, n148, n4, n5, n6, n7,
         n8, n9, n18, n20, n25, n26, n31, n32, n39, n43, n47, n49, n56, n62,
         n64, n70, n72, n78, n80, n86, n88, n94, n97, n101, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180;

  SDFFRQX2M OUT_VALID_reg ( .D(N20), .SI(ALU_OUT[15]), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(OUT_VALID) );
  SDFFRQX2M \ALU_OUT_reg[7]  ( .D(n132), .SI(ALU_OUT[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[7]) );
  SDFFRQX2M \ALU_OUT_reg[6]  ( .D(n130), .SI(ALU_OUT[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[6]) );
  SDFFRQX2M \ALU_OUT_reg[5]  ( .D(n128), .SI(ALU_OUT[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[5]) );
  SDFFRQX2M \ALU_OUT_reg[4]  ( .D(n126), .SI(ALU_OUT[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[4]) );
  SDFFRQX2M \ALU_OUT_reg[3]  ( .D(n124), .SI(ALU_OUT[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[3]) );
  SDFFRQX2M \ALU_OUT_reg[2]  ( .D(n122), .SI(ALU_OUT[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[2]) );
  SDFFRQX2M \ALU_OUT_reg[1]  ( .D(n120), .SI(ALU_OUT[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[1]) );
  SDFFRQX2M \ALU_OUT_reg[15]  ( .D(n148), .SI(ALU_OUT[14]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[15]) );
  SDFFRQX2M \ALU_OUT_reg[14]  ( .D(n146), .SI(ALU_OUT[13]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[14]) );
  SDFFRQX2M \ALU_OUT_reg[13]  ( .D(n144), .SI(ALU_OUT[12]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[13]) );
  SDFFRQX2M \ALU_OUT_reg[12]  ( .D(n142), .SI(ALU_OUT[11]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[12]) );
  SDFFRQX2M \ALU_OUT_reg[11]  ( .D(n140), .SI(ALU_OUT[10]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[11]) );
  SDFFRQX2M \ALU_OUT_reg[10]  ( .D(n138), .SI(ALU_OUT[9]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[10]) );
  SDFFRQX2M \ALU_OUT_reg[9]  ( .D(n136), .SI(ALU_OUT[8]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[9]) );
  SDFFRQX2M \ALU_OUT_reg[0]  ( .D(n118), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(ALU_OUT[0]) );
  SDFFRQX1M \ALU_OUT_reg[8]  ( .D(n134), .SI(ALU_OUT[7]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(ALU_OUT[8]) );
  OR4X1M U4 ( .A(n46), .B(n167), .C(ALU_FUN[0]), .D(ALU_FUN[1]), .Y(n24) );
  OAI22X1M U7 ( .A0(n46), .A1(n100), .B0(ALU_FUN[3]), .B1(n116), .Y(n114) );
  BUFX2M U8 ( .A(A[6]), .Y(n20) );
  OAI21X2M U9 ( .A0(n102), .A1(n103), .B0(ALU_EN), .Y(n30) );
  NOR2X2M U10 ( .A(n46), .B(n100), .Y(n102) );
  NOR3X2M U11 ( .A(n46), .B(n167), .C(n165), .Y(n17) );
  INVX2M U12 ( .A(ALU_EN), .Y(n167) );
  NAND2X2M U13 ( .A(ALU_EN), .B(n114), .Y(n23) );
  NOR2X2M U14 ( .A(n162), .B(n42), .Y(n14) );
  INVX2M U15 ( .A(n33), .Y(n164) );
  INVX2M U16 ( .A(n27), .Y(n163) );
  OAI21X2M U17 ( .A0(n115), .A1(n167), .B0(n42), .Y(N20) );
  NOR4X1M U18 ( .A(n95), .B(n103), .C(n166), .D(n114), .Y(n115) );
  AND2X2M U19 ( .A(n45), .B(n162), .Y(n22) );
  AND2X2M U20 ( .A(n99), .B(n165), .Y(n45) );
  AND2X2M U21 ( .A(n17), .B(n162), .Y(n15) );
  NOR3BX2M U22 ( .AN(n95), .B(ALU_FUN[3]), .C(n167), .Y(n33) );
  AOI21BX2M U23 ( .A0(N108), .A1(n21), .B0N(n23), .Y(n104) );
  OAI222X1M U24 ( .A0(n6), .A1(n164), .B0(n174), .B1(n163), .C0(n175), .C1(n40), .Y(n38) );
  OAI222X1M U25 ( .A0(n7), .A1(n164), .B0(n163), .B1(n173), .C0(n174), .C1(n40), .Y(n54) );
  OAI222X1M U26 ( .A0(n8), .A1(n164), .B0(n163), .B1(n172), .C0(n173), .C1(n40), .Y(n61) );
  OAI222X1M U27 ( .A0(n9), .A1(n164), .B0(n163), .B1(n171), .C0(n40), .C1(n172), .Y(n69) );
  OAI222X1M U28 ( .A0(n18), .A1(n164), .B0(n163), .B1(n170), .C0(n40), .C1(
        n171), .Y(n77) );
  OAI222X1M U29 ( .A0(n20), .A1(n164), .B0(n163), .B1(n169), .C0(n40), .C1(
        n170), .Y(n85) );
  OAI222X1M U30 ( .A0(n25), .A1(n164), .B0(n163), .B1(n168), .C0(n40), .C1(
        n169), .Y(n93) );
  NOR3X2M U31 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .C(n166), .Y(n103) );
  NOR3BX2M U32 ( .AN(N159), .B(n42), .C(ALU_FUN[0]), .Y(n16) );
  NAND4X2M U33 ( .A(ALU_FUN[3]), .B(ALU_FUN[2]), .C(ALU_EN), .D(n165), .Y(n42)
         );
  OAI221X1M U34 ( .A0(n5), .A1(n23), .B0(n24), .B1(n175), .C0(n164), .Y(n19)
         );
  OAI221X1M U35 ( .A0(n25), .A1(n23), .B0(n24), .B1(n168), .C0(n164), .Y(n96)
         );
  OAI221X1M U36 ( .A0(n7), .A1(n23), .B0(n24), .B1(n173), .C0(n164), .Y(n55)
         );
  OAI221X1M U37 ( .A0(n8), .A1(n23), .B0(n24), .B1(n172), .C0(n164), .Y(n63)
         );
  OAI221X1M U38 ( .A0(n9), .A1(n23), .B0(n24), .B1(n171), .C0(n164), .Y(n71)
         );
  OAI221X1M U39 ( .A0(n18), .A1(n23), .B0(n24), .B1(n170), .C0(n164), .Y(n79)
         );
  OAI221X1M U40 ( .A0(n20), .A1(n23), .B0(n24), .B1(n169), .C0(n164), .Y(n87)
         );
  OAI221X1M U41 ( .A0(n6), .A1(n23), .B0(n174), .B1(n24), .C0(n164), .Y(n48)
         );
  OAI221X1M U42 ( .A0(n30), .A1(n168), .B0(n25), .B1(n24), .C0(n163), .Y(n98)
         );
  OAI221X1M U43 ( .A0(n174), .A1(n30), .B0(n6), .B1(n24), .C0(n163), .Y(n50)
         );
  OAI221X1M U44 ( .A0(n30), .A1(n173), .B0(n7), .B1(n24), .C0(n163), .Y(n57)
         );
  OAI221X1M U45 ( .A0(n30), .A1(n172), .B0(n8), .B1(n24), .C0(n163), .Y(n65)
         );
  OAI221X1M U46 ( .A0(n30), .A1(n171), .B0(n9), .B1(n24), .C0(n163), .Y(n73)
         );
  OAI221X1M U47 ( .A0(n30), .A1(n170), .B0(n18), .B1(n24), .C0(n163), .Y(n81)
         );
  OAI221X1M U48 ( .A0(n30), .A1(n169), .B0(n20), .B1(n24), .C0(n163), .Y(n89)
         );
  OAI221X1M U49 ( .A0(n175), .A1(n30), .B0(n5), .B1(n24), .C0(n163), .Y(n28)
         );
  NOR4X1M U50 ( .A(n100), .B(n166), .C(n167), .D(ALU_FUN[3]), .Y(n27) );
  NAND2X2M U51 ( .A(ALU_FUN[3]), .B(n166), .Y(n46) );
  NOR3X2M U52 ( .A(ALU_FUN[2]), .B(ALU_FUN[3]), .C(n167), .Y(n99) );
  NAND3X2M U53 ( .A(ALU_FUN[3]), .B(ALU_EN), .C(n95), .Y(n40) );
  NOR2X2M U54 ( .A(n116), .B(ALU_FUN[0]), .Y(n95) );
  NAND2X2M U55 ( .A(ALU_FUN[0]), .B(n165), .Y(n100) );
  INVX2M U56 ( .A(ALU_FUN[2]), .Y(n166) );
  AND3X2M U57 ( .A(n99), .B(ALU_FUN[1]), .C(n162), .Y(n34) );
  AND3X2M U58 ( .A(n99), .B(ALU_FUN[0]), .C(ALU_FUN[1]), .Y(n29) );
  INVX2M U59 ( .A(ALU_FUN[1]), .Y(n165) );
  NAND2X2M U60 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n116) );
  INVX2M U61 ( .A(ALU_FUN[0]), .Y(n162) );
  OAI21X2M U62 ( .A0(n42), .A1(n173), .B0(n44), .Y(n41) );
  AOI22X1M U63 ( .A0(N158), .A1(n17), .B0(N101), .B1(n45), .Y(n44) );
  AND2X2M U64 ( .A(n45), .B(ALU_FUN[0]), .Y(n21) );
  INVX2M U65 ( .A(n7), .Y(n173) );
  INVX2M U66 ( .A(n6), .Y(n174) );
  INVX2M U67 ( .A(n20), .Y(n169) );
  INVX2M U68 ( .A(n25), .Y(n168) );
  INVX2M U69 ( .A(n5), .Y(n175) );
  INVX2M U70 ( .A(n8), .Y(n172) );
  INVX2M U71 ( .A(n9), .Y(n171) );
  INVX2M U72 ( .A(n18), .Y(n170) );
  INVX2M U73 ( .A(n4), .Y(n177) );
  AOI222X1M U74 ( .A0(ALU_OUT[0]), .A1(n167), .B0(n33), .B1(n175), .C0(N109), 
        .C1(n34), .Y(n10) );
  NAND3X2M U75 ( .A(n90), .B(n91), .C(n92), .Y(n132) );
  AOI22X1M U76 ( .A0(B[7]), .A1(n98), .B0(N132), .B1(n29), .Y(n90) );
  AOI222X1M U77 ( .A0(n96), .A1(n176), .B0(N107), .B1(n21), .C0(N98), .C1(n22), 
        .Y(n91) );
  AOI221XLM U78 ( .A0(N116), .A1(n34), .B0(ALU_OUT[7]), .B1(n167), .C0(n93), 
        .Y(n92) );
  NAND2X2M U79 ( .A(n109), .B(n104), .Y(n140) );
  AOI22X1M U80 ( .A0(N120), .A1(n34), .B0(ALU_OUT[11]), .B1(n167), .Y(n109) );
  NAND2X2M U81 ( .A(n111), .B(n104), .Y(n144) );
  AOI22X1M U82 ( .A0(N122), .A1(n34), .B0(ALU_OUT[13]), .B1(n167), .Y(n111) );
  NAND4X2M U83 ( .A(n10), .B(n11), .C(n12), .D(n13), .Y(n118) );
  AOI221XLM U84 ( .A0(n6), .A1(n14), .B0(n15), .B1(N157), .C0(n16), .Y(n13) );
  AOI222X1M U85 ( .A0(n19), .A1(n157), .B0(N100), .B1(n21), .C0(N91), .C1(n22), 
        .Y(n12) );
  AOI222X1M U86 ( .A0(n27), .A1(n5), .B0(B[0]), .B1(n28), .C0(N125), .C1(n29), 
        .Y(n11) );
  NAND3X2M U87 ( .A(n35), .B(n36), .C(n37), .Y(n120) );
  AOI221XLM U88 ( .A0(ALU_FUN[0]), .A1(n41), .B0(N92), .B1(n22), .C0(n16), .Y(
        n36) );
  AOI222X1M U89 ( .A0(N126), .A1(n29), .B0(n48), .B1(n180), .C0(B[1]), .C1(n50), .Y(n35) );
  AOI221XLM U90 ( .A0(N110), .A1(n34), .B0(ALU_OUT[1]), .B1(n167), .C0(n38), 
        .Y(n37) );
  NAND3X2M U91 ( .A(n51), .B(n52), .C(n53), .Y(n122) );
  AOI222X1M U92 ( .A0(N93), .A1(n22), .B0(n8), .B1(n14), .C0(N102), .C1(n21), 
        .Y(n52) );
  AOI222X1M U93 ( .A0(N127), .A1(n29), .B0(n55), .B1(n158), .C0(B[2]), .C1(n57), .Y(n51) );
  AOI221XLM U94 ( .A0(N111), .A1(n34), .B0(ALU_OUT[2]), .B1(n167), .C0(n54), 
        .Y(n53) );
  NAND3X2M U95 ( .A(n58), .B(n59), .C(n60), .Y(n124) );
  AOI222X1M U96 ( .A0(N94), .A1(n22), .B0(n9), .B1(n14), .C0(N103), .C1(n21), 
        .Y(n59) );
  AOI222X1M U97 ( .A0(N128), .A1(n29), .B0(n63), .B1(n159), .C0(B[3]), .C1(n65), .Y(n58) );
  AOI221XLM U98 ( .A0(N112), .A1(n34), .B0(ALU_OUT[3]), .B1(n167), .C0(n61), 
        .Y(n60) );
  NAND3X2M U99 ( .A(n66), .B(n67), .C(n68), .Y(n126) );
  AOI222X1M U100 ( .A0(N95), .A1(n22), .B0(n18), .B1(n14), .C0(N104), .C1(n21), 
        .Y(n67) );
  AOI222X1M U101 ( .A0(N129), .A1(n29), .B0(n71), .B1(n179), .C0(B[4]), .C1(
        n73), .Y(n66) );
  AOI221XLM U102 ( .A0(N113), .A1(n34), .B0(ALU_OUT[4]), .B1(n167), .C0(n69), 
        .Y(n68) );
  NAND3X2M U103 ( .A(n74), .B(n75), .C(n76), .Y(n128) );
  AOI222X1M U104 ( .A0(N96), .A1(n22), .B0(n20), .B1(n14), .C0(N105), .C1(n21), 
        .Y(n75) );
  AOI222X1M U105 ( .A0(N130), .A1(n29), .B0(n79), .B1(n178), .C0(B[5]), .C1(
        n81), .Y(n74) );
  AOI221XLM U106 ( .A0(N114), .A1(n34), .B0(ALU_OUT[5]), .B1(n167), .C0(n77), 
        .Y(n76) );
  NAND3X2M U107 ( .A(n82), .B(n83), .C(n84), .Y(n130) );
  AOI222X1M U108 ( .A0(N97), .A1(n22), .B0(n25), .B1(n14), .C0(N106), .C1(n21), 
        .Y(n83) );
  AOI222X1M U109 ( .A0(N131), .A1(n29), .B0(n87), .B1(n177), .C0(n4), .C1(n89), 
        .Y(n82) );
  AOI221XLM U110 ( .A0(N115), .A1(n34), .B0(ALU_OUT[6]), .B1(n167), .C0(n85), 
        .Y(n84) );
  NAND2X2M U111 ( .A(n107), .B(n104), .Y(n136) );
  AOI22X1M U112 ( .A0(N118), .A1(n34), .B0(ALU_OUT[9]), .B1(n167), .Y(n107) );
  NAND2X2M U113 ( .A(n108), .B(n104), .Y(n138) );
  AOI22X1M U114 ( .A0(N119), .A1(n34), .B0(ALU_OUT[10]), .B1(n167), .Y(n108)
         );
  NAND2X2M U115 ( .A(n110), .B(n104), .Y(n142) );
  AOI22X1M U116 ( .A0(N121), .A1(n34), .B0(ALU_OUT[12]), .B1(n167), .Y(n110)
         );
  NAND2X2M U117 ( .A(n112), .B(n104), .Y(n146) );
  AOI22X1M U118 ( .A0(N123), .A1(n34), .B0(ALU_OUT[14]), .B1(n167), .Y(n112)
         );
  NAND2X2M U119 ( .A(n113), .B(n104), .Y(n148) );
  AOI22X1M U120 ( .A0(N124), .A1(n34), .B0(ALU_OUT[15]), .B1(n167), .Y(n113)
         );
  OAI2B11X2M U121 ( .A1N(ALU_OUT[8]), .A0(ALU_EN), .B0(n104), .C0(n105), .Y(
        n134) );
  AOI221XLM U122 ( .A0(N117), .A1(n34), .B0(N99), .B1(n22), .C0(n106), .Y(n105) );
  NOR3BX2M U123 ( .AN(n95), .B(n168), .C(n167), .Y(n106) );
  INVX2M U124 ( .A(n26), .Y(n160) );
  INVX2M U125 ( .A(n72), .Y(n161) );
  BUFX2M U126 ( .A(A[1]), .Y(n6) );
  BUFX2M U127 ( .A(A[7]), .Y(n25) );
  BUFX2M U128 ( .A(A[0]), .Y(n5) );
  BUFX2M U129 ( .A(A[3]), .Y(n8) );
  BUFX2M U147 ( .A(A[4]), .Y(n9) );
  BUFX2M U148 ( .A(A[5]), .Y(n18) );
  BUFX2M U149 ( .A(A[2]), .Y(n7) );
  BUFX2M U150 ( .A(B[6]), .Y(n4) );
  INVX2M U151 ( .A(B[0]), .Y(n157) );
  INVX2M U152 ( .A(B[2]), .Y(n158) );
  INVX2M U153 ( .A(B[3]), .Y(n159) );
  INVX2M U154 ( .A(B[7]), .Y(n176) );
  INVX2M U155 ( .A(B[1]), .Y(n180) );
  INVX2M U156 ( .A(B[4]), .Y(n179) );
  INVX2M U157 ( .A(B[5]), .Y(n178) );
  NOR2X1M U158 ( .A(n168), .B(B[7]), .Y(n153) );
  NAND2BX1M U159 ( .AN(B[4]), .B(n9), .Y(n88) );
  NAND2BX1M U160 ( .AN(n9), .B(B[4]), .Y(n43) );
  CLKNAND2X2M U161 ( .A(n88), .B(n43), .Y(n97) );
  NOR2X1M U162 ( .A(n159), .B(n8), .Y(n78) );
  NOR2X1M U163 ( .A(n158), .B(n7), .Y(n39) );
  NOR2X1M U164 ( .A(n157), .B(n5), .Y(n26) );
  CLKNAND2X2M U165 ( .A(n7), .B(n158), .Y(n86) );
  NAND2BX1M U166 ( .AN(n39), .B(n86), .Y(n64) );
  AOI21X1M U167 ( .A0(n26), .A1(n174), .B0(B[1]), .Y(n31) );
  AOI211X1M U168 ( .A0(n6), .A1(n160), .B0(n64), .C0(n31), .Y(n32) );
  CLKNAND2X2M U169 ( .A(n8), .B(n159), .Y(n80) );
  OAI31X1M U170 ( .A0(n78), .A1(n39), .A2(n32), .B0(n80), .Y(n47) );
  NAND2BX1M U171 ( .AN(n18), .B(B[5]), .Y(n151) );
  OAI211X1M U172 ( .A0(n97), .A1(n47), .B0(n43), .C0(n151), .Y(n49) );
  NAND2BX1M U173 ( .AN(B[5]), .B(n18), .Y(n94) );
  XNOR2X1M U174 ( .A(n20), .B(n4), .Y(n150) );
  AOI32X1M U175 ( .A0(n49), .A1(n94), .A2(n150), .B0(n4), .B1(n169), .Y(n56)
         );
  CLKNAND2X2M U176 ( .A(B[7]), .B(n168), .Y(n154) );
  OAI21X1M U177 ( .A0(n153), .A1(n56), .B0(n154), .Y(N159) );
  CLKNAND2X2M U178 ( .A(n5), .B(n157), .Y(n70) );
  OA21X1M U179 ( .A0(n70), .A1(n174), .B0(B[1]), .Y(n62) );
  AOI211X1M U180 ( .A0(n70), .A1(n174), .B0(n64), .C0(n62), .Y(n72) );
  AOI31X1M U181 ( .A0(n161), .A1(n86), .A2(n80), .B0(n78), .Y(n101) );
  OAI2B11X1M U182 ( .A1N(n101), .A0(n97), .B0(n94), .C0(n88), .Y(n152) );
  AOI32X1M U183 ( .A0(n152), .A1(n151), .A2(n150), .B0(n20), .B1(n177), .Y(
        n155) );
  AOI2B1X1M U184 ( .A1N(n155), .A0(n154), .B0(n153), .Y(n156) );
  CLKINVX1M U185 ( .A(n156), .Y(N158) );
  NOR2X1M U186 ( .A(N159), .B(N158), .Y(N157) );
  ALU_op_size8_rslt_size16_fun_size4_DW_div_uns_0 div_56 ( .a({n25, n20, n18, 
        n9, n8, n7, n6, n5}), .b({B[7], n4, B[5:0]}), .quotient({N132, N131, 
        N130, N129, N128, N127, N126, N125}) );
  ALU_op_size8_rslt_size16_fun_size4_DW01_sub_0 sub_50 ( .A({1'b0, n25, n20, 
        n18, n9, n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), 
        .DIFF({N108, N107, N106, N105, N104, N103, N102, N101, N100}) );
  ALU_op_size8_rslt_size16_fun_size4_DW01_add_0 add_47 ( .A({1'b0, n25, n20, 
        n18, n9, n8, n7, n6, n5}), .B({1'b0, B[7], n4, B[5:0]}), .CI(1'b0), 
        .SUM({N99, N98, N97, N96, N95, N94, N93, N92, N91}) );
  ALU_op_size8_rslt_size16_fun_size4_DW02_mult_0 mult_53 ( .A({n25, n20, n18, 
        n9, n8, n7, n6, n5}), .B({B[7], n4, B[5:0]}), .TC(1'b0), .PRODUCT({
        N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, N114, N113, 
        N112, N111, N110, N109}) );
endmodule


module Reg_File_ADDR_WD4_DATA_WD8_test_1 ( CLK, RST, WrEn, RdEn, Address, 
        WrData, RdData, REG_0, REG_1, REG_2, REG_3, test_si3, test_si2, 
        test_si1, test_so1, test_se );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG_0;
  output [7:0] REG_1;
  output [7:0] REG_2;
  output [7:0] REG_3;
  input CLK, RST, WrEn, RdEn, test_si3, test_si2, test_si1, test_se;
  output test_so1;
  wire   N11, N12, N13, N14, \REGs[4][7] , \REGs[4][6] , \REGs[4][5] ,
         \REGs[4][4] , \REGs[4][3] , \REGs[4][2] , \REGs[4][1] , \REGs[4][0] ,
         \REGs[5][7] , \REGs[5][6] , \REGs[5][5] , \REGs[5][4] , \REGs[5][3] ,
         \REGs[5][2] , \REGs[5][1] , \REGs[5][0] , \REGs[6][7] , \REGs[6][6] ,
         \REGs[6][5] , \REGs[6][4] , \REGs[6][3] , \REGs[6][2] , \REGs[6][1] ,
         \REGs[6][0] , \REGs[7][7] , \REGs[7][6] , \REGs[7][5] , \REGs[7][4] ,
         \REGs[7][3] , \REGs[7][2] , \REGs[7][1] , \REGs[7][0] , \REGs[8][7] ,
         \REGs[8][6] , \REGs[8][5] , \REGs[8][4] , \REGs[8][3] , \REGs[8][2] ,
         \REGs[8][1] , \REGs[8][0] , \REGs[9][7] , \REGs[9][6] , \REGs[9][5] ,
         \REGs[9][4] , \REGs[9][3] , \REGs[9][2] , \REGs[9][1] , \REGs[9][0] ,
         \REGs[10][7] , \REGs[10][6] , \REGs[10][5] , \REGs[10][4] ,
         \REGs[10][3] , \REGs[10][2] , \REGs[10][1] , \REGs[10][0] ,
         \REGs[11][7] , \REGs[11][6] , \REGs[11][5] , \REGs[11][4] ,
         \REGs[11][3] , \REGs[11][2] , \REGs[11][1] , \REGs[11][0] ,
         \REGs[12][7] , \REGs[12][6] , \REGs[12][5] , \REGs[12][4] ,
         \REGs[12][3] , \REGs[12][2] , \REGs[12][1] , \REGs[12][0] ,
         \REGs[13][7] , \REGs[13][6] , \REGs[13][5] , \REGs[13][4] ,
         \REGs[13][3] , \REGs[13][2] , \REGs[13][1] , \REGs[13][0] ,
         \REGs[14][7] , \REGs[14][6] , \REGs[14][5] , \REGs[14][4] ,
         \REGs[14][3] , \REGs[14][2] , \REGs[14][1] , \REGs[14][0] ,
         \REGs[15][7] , \REGs[15][6] , \REGs[15][5] , \REGs[15][4] ,
         \REGs[15][3] , \REGs[15][2] , \REGs[15][1] , \REGs[15][0] , N36, N37,
         N38, N39, N40, N41, N42, N43, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n314, n315, n316, n317, n318, n319,
         n320, n321, n322, n323, n324, n325, n326, n327, n328, n329, n330,
         n331, n332, n333, n334, n335, n336, n337, n338, n339, n340, n341,
         n342, n343, n344, n345, n346, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];
  assign test_so1 = \REGs[13][1] ;

  SDFFRQX2M \RdData_reg[7]  ( .D(n313), .SI(RdData[6]), .SE(test_se), .CK(CLK), 
        .RN(n340), .Q(RdData[7]) );
  SDFFRQX2M \RdData_reg[6]  ( .D(n312), .SI(RdData[5]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(RdData[6]) );
  SDFFRQX2M \RdData_reg[5]  ( .D(n311), .SI(RdData[4]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(RdData[5]) );
  SDFFRQX2M \RdData_reg[4]  ( .D(n310), .SI(RdData[3]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(RdData[4]) );
  SDFFRQX2M \RdData_reg[3]  ( .D(n309), .SI(RdData[2]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(RdData[3]) );
  SDFFRQX2M \RdData_reg[2]  ( .D(n308), .SI(RdData[1]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(RdData[2]) );
  SDFFRQX2M \RdData_reg[1]  ( .D(n307), .SI(RdData[0]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(RdData[1]) );
  SDFFRQX2M \RdData_reg[0]  ( .D(n306), .SI(\REGs[15][7] ), .SE(test_se), .CK(
        CLK), .RN(n349), .Q(RdData[0]) );
  SDFFRQX2M \REGs_reg[5][7]  ( .D(n265), .SI(\REGs[5][6] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][7] ) );
  SDFFRQX2M \REGs_reg[5][6]  ( .D(n264), .SI(\REGs[5][5] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][6] ) );
  SDFFRQX2M \REGs_reg[5][5]  ( .D(n263), .SI(\REGs[5][4] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][5] ) );
  SDFFRQX2M \REGs_reg[5][4]  ( .D(n262), .SI(\REGs[5][3] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][4] ) );
  SDFFRQX2M \REGs_reg[5][3]  ( .D(n261), .SI(\REGs[5][2] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][3] ) );
  SDFFRQX2M \REGs_reg[5][2]  ( .D(n260), .SI(\REGs[5][1] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][2] ) );
  SDFFRQX2M \REGs_reg[5][1]  ( .D(n259), .SI(\REGs[5][0] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][1] ) );
  SDFFRQX2M \REGs_reg[5][0]  ( .D(n258), .SI(\REGs[4][7] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[5][0] ) );
  SDFFRQX2M \REGs_reg[9][7]  ( .D(n233), .SI(\REGs[9][6] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[9][7] ) );
  SDFFRQX2M \REGs_reg[9][6]  ( .D(n232), .SI(\REGs[9][5] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[9][6] ) );
  SDFFRQX2M \REGs_reg[9][5]  ( .D(n231), .SI(\REGs[9][4] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[9][5] ) );
  SDFFRQX2M \REGs_reg[9][4]  ( .D(n230), .SI(\REGs[9][3] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[9][4] ) );
  SDFFRQX2M \REGs_reg[9][3]  ( .D(n229), .SI(\REGs[9][2] ), .SE(test_se), .CK(
        CLK), .RN(n343), .Q(\REGs[9][3] ) );
  SDFFRQX2M \REGs_reg[9][2]  ( .D(n228), .SI(\REGs[9][1] ), .SE(test_se), .CK(
        CLK), .RN(n343), .Q(\REGs[9][2] ) );
  SDFFRQX2M \REGs_reg[9][1]  ( .D(n227), .SI(\REGs[9][0] ), .SE(test_se), .CK(
        CLK), .RN(n343), .Q(\REGs[9][1] ) );
  SDFFRQX2M \REGs_reg[9][0]  ( .D(n226), .SI(\REGs[8][7] ), .SE(test_se), .CK(
        CLK), .RN(n343), .Q(\REGs[9][0] ) );
  SDFFRQX2M \REGs_reg[13][7]  ( .D(n201), .SI(\REGs[13][6] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[13][7] ) );
  SDFFRQX2M \REGs_reg[13][6]  ( .D(n200), .SI(\REGs[13][5] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[13][6] ) );
  SDFFRQX2M \REGs_reg[13][5]  ( .D(n199), .SI(\REGs[13][4] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[13][5] ) );
  SDFFRQX2M \REGs_reg[13][4]  ( .D(n198), .SI(\REGs[13][3] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[13][4] ) );
  SDFFRQX2M \REGs_reg[13][3]  ( .D(n197), .SI(\REGs[13][2] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[13][3] ) );
  SDFFRQX2M \REGs_reg[13][2]  ( .D(n196), .SI(test_si3), .SE(test_se), .CK(CLK), .RN(n341), .Q(\REGs[13][2] ) );
  SDFFRQX2M \REGs_reg[13][1]  ( .D(n195), .SI(\REGs[13][0] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[13][1] ) );
  SDFFRQX2M \REGs_reg[13][0]  ( .D(n194), .SI(\REGs[12][7] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[13][0] ) );
  SDFFRQX2M \REGs_reg[3][7]  ( .D(n281), .SI(REG_3[6]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[7]) );
  SDFFRQX2M \REGs_reg[3][6]  ( .D(n280), .SI(REG_3[5]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[6]) );
  SDFFRQX2M \REGs_reg[7][7]  ( .D(n249), .SI(\REGs[7][6] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[7][7] ) );
  SDFFRQX2M \REGs_reg[7][6]  ( .D(n248), .SI(\REGs[7][5] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[7][6] ) );
  SDFFRQX2M \REGs_reg[7][5]  ( .D(n247), .SI(\REGs[7][4] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[7][5] ) );
  SDFFRQX2M \REGs_reg[7][4]  ( .D(n246), .SI(\REGs[7][3] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[7][4] ) );
  SDFFRQX2M \REGs_reg[7][3]  ( .D(n245), .SI(\REGs[7][2] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[7][3] ) );
  SDFFRQX2M \REGs_reg[7][2]  ( .D(n244), .SI(\REGs[7][1] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[7][2] ) );
  SDFFRQX2M \REGs_reg[7][1]  ( .D(n243), .SI(\REGs[7][0] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[7][1] ) );
  SDFFRQX2M \REGs_reg[7][0]  ( .D(n242), .SI(\REGs[6][7] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[7][0] ) );
  SDFFRQX2M \REGs_reg[11][7]  ( .D(n217), .SI(\REGs[11][6] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[11][7] ) );
  SDFFRQX2M \REGs_reg[11][6]  ( .D(n216), .SI(\REGs[11][5] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[11][6] ) );
  SDFFRQX2M \REGs_reg[11][5]  ( .D(n215), .SI(\REGs[11][4] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[11][5] ) );
  SDFFRQX2M \REGs_reg[11][4]  ( .D(n214), .SI(\REGs[11][3] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[11][4] ) );
  SDFFRQX2M \REGs_reg[11][3]  ( .D(n213), .SI(\REGs[11][2] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[11][3] ) );
  SDFFRQX2M \REGs_reg[11][2]  ( .D(n212), .SI(\REGs[11][1] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[11][2] ) );
  SDFFRQX2M \REGs_reg[11][1]  ( .D(n211), .SI(\REGs[11][0] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[11][1] ) );
  SDFFRQX2M \REGs_reg[11][0]  ( .D(n210), .SI(\REGs[10][7] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[11][0] ) );
  SDFFRQX2M \REGs_reg[15][7]  ( .D(n185), .SI(\REGs[15][6] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][7] ) );
  SDFFRQX2M \REGs_reg[15][6]  ( .D(n184), .SI(\REGs[15][5] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][6] ) );
  SDFFRQX2M \REGs_reg[15][5]  ( .D(n183), .SI(\REGs[15][4] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][5] ) );
  SDFFRQX2M \REGs_reg[15][4]  ( .D(n182), .SI(\REGs[15][3] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][4] ) );
  SDFFRQX2M \REGs_reg[15][3]  ( .D(n181), .SI(\REGs[15][2] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][3] ) );
  SDFFRQX2M \REGs_reg[15][2]  ( .D(n180), .SI(\REGs[15][1] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][2] ) );
  SDFFRQX2M \REGs_reg[15][1]  ( .D(n179), .SI(\REGs[15][0] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[15][1] ) );
  SDFFRQX2M \REGs_reg[15][0]  ( .D(n178), .SI(\REGs[14][7] ), .SE(test_se), 
        .CK(CLK), .RN(n345), .Q(\REGs[15][0] ) );
  SDFFRQX2M \REGs_reg[6][7]  ( .D(n257), .SI(\REGs[6][6] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[6][7] ) );
  SDFFRQX2M \REGs_reg[6][6]  ( .D(n256), .SI(\REGs[6][5] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][6] ) );
  SDFFRQX2M \REGs_reg[6][5]  ( .D(n255), .SI(\REGs[6][4] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][5] ) );
  SDFFRQX2M \REGs_reg[6][4]  ( .D(n254), .SI(\REGs[6][3] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][4] ) );
  SDFFRQX2M \REGs_reg[6][3]  ( .D(n253), .SI(\REGs[6][2] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][3] ) );
  SDFFRQX2M \REGs_reg[6][2]  ( .D(n252), .SI(\REGs[6][1] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][2] ) );
  SDFFRQX2M \REGs_reg[6][1]  ( .D(n251), .SI(\REGs[6][0] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][1] ) );
  SDFFRQX2M \REGs_reg[6][0]  ( .D(n250), .SI(\REGs[5][7] ), .SE(test_se), .CK(
        CLK), .RN(n345), .Q(\REGs[6][0] ) );
  SDFFRQX2M \REGs_reg[10][7]  ( .D(n225), .SI(\REGs[10][6] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][7] ) );
  SDFFRQX2M \REGs_reg[10][6]  ( .D(n224), .SI(\REGs[10][5] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][6] ) );
  SDFFRQX2M \REGs_reg[10][5]  ( .D(n223), .SI(\REGs[10][4] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][5] ) );
  SDFFRQX2M \REGs_reg[10][4]  ( .D(n222), .SI(\REGs[10][3] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][4] ) );
  SDFFRQX2M \REGs_reg[10][3]  ( .D(n221), .SI(\REGs[10][2] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][3] ) );
  SDFFRQX2M \REGs_reg[10][2]  ( .D(n220), .SI(\REGs[10][1] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][2] ) );
  SDFFRQX2M \REGs_reg[10][1]  ( .D(n219), .SI(\REGs[10][0] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][1] ) );
  SDFFRQX2M \REGs_reg[10][0]  ( .D(n218), .SI(\REGs[9][7] ), .SE(test_se), 
        .CK(CLK), .RN(n343), .Q(\REGs[10][0] ) );
  SDFFRQX2M \REGs_reg[14][7]  ( .D(n193), .SI(\REGs[14][6] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[14][7] ) );
  SDFFRQX2M \REGs_reg[14][6]  ( .D(n192), .SI(\REGs[14][5] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[14][6] ) );
  SDFFRQX2M \REGs_reg[14][5]  ( .D(n191), .SI(\REGs[14][4] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[14][5] ) );
  SDFFRQX2M \REGs_reg[14][4]  ( .D(n190), .SI(\REGs[14][3] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[14][4] ) );
  SDFFRQX2M \REGs_reg[14][3]  ( .D(n189), .SI(\REGs[14][2] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[14][3] ) );
  SDFFRQX2M \REGs_reg[14][2]  ( .D(n188), .SI(\REGs[14][1] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[14][2] ) );
  SDFFRQX2M \REGs_reg[14][1]  ( .D(n187), .SI(\REGs[14][0] ), .SE(test_se), 
        .CK(CLK), .RN(n340), .Q(\REGs[14][1] ) );
  SDFFRQX2M \REGs_reg[14][0]  ( .D(n186), .SI(\REGs[13][7] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[14][0] ) );
  SDFFRQX2M \REGs_reg[4][7]  ( .D(n273), .SI(\REGs[4][6] ), .SE(test_se), .CK(
        CLK), .RN(n347), .Q(\REGs[4][7] ) );
  SDFFRQX2M \REGs_reg[4][6]  ( .D(n272), .SI(\REGs[4][5] ), .SE(test_se), .CK(
        CLK), .RN(n347), .Q(\REGs[4][6] ) );
  SDFFRQX2M \REGs_reg[4][5]  ( .D(n271), .SI(\REGs[4][4] ), .SE(test_se), .CK(
        CLK), .RN(n347), .Q(\REGs[4][5] ) );
  SDFFRQX2M \REGs_reg[4][4]  ( .D(n270), .SI(\REGs[4][3] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[4][4] ) );
  SDFFRQX2M \REGs_reg[4][3]  ( .D(n269), .SI(\REGs[4][2] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[4][3] ) );
  SDFFRQX2M \REGs_reg[4][2]  ( .D(n268), .SI(\REGs[4][1] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[4][2] ) );
  SDFFRQX2M \REGs_reg[4][1]  ( .D(n267), .SI(\REGs[4][0] ), .SE(test_se), .CK(
        CLK), .RN(n346), .Q(\REGs[4][1] ) );
  SDFFRQX2M \REGs_reg[4][0]  ( .D(n266), .SI(REG_3[7]), .SE(test_se), .CK(CLK), 
        .RN(n346), .Q(\REGs[4][0] ) );
  SDFFRQX2M \REGs_reg[8][7]  ( .D(n241), .SI(\REGs[8][6] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][7] ) );
  SDFFRQX2M \REGs_reg[8][6]  ( .D(n240), .SI(\REGs[8][5] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][6] ) );
  SDFFRQX2M \REGs_reg[8][5]  ( .D(n239), .SI(\REGs[8][4] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][5] ) );
  SDFFRQX2M \REGs_reg[8][4]  ( .D(n238), .SI(\REGs[8][3] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][4] ) );
  SDFFRQX2M \REGs_reg[8][3]  ( .D(n237), .SI(\REGs[8][2] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][3] ) );
  SDFFRQX2M \REGs_reg[8][2]  ( .D(n236), .SI(\REGs[8][1] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][2] ) );
  SDFFRQX2M \REGs_reg[8][1]  ( .D(n235), .SI(\REGs[8][0] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][1] ) );
  SDFFRQX2M \REGs_reg[8][0]  ( .D(n234), .SI(\REGs[7][7] ), .SE(test_se), .CK(
        CLK), .RN(n344), .Q(\REGs[8][0] ) );
  SDFFRQX2M \REGs_reg[12][7]  ( .D(n209), .SI(\REGs[12][6] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][7] ) );
  SDFFRQX2M \REGs_reg[12][6]  ( .D(n208), .SI(\REGs[12][5] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][6] ) );
  SDFFRQX2M \REGs_reg[12][5]  ( .D(n207), .SI(\REGs[12][4] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][5] ) );
  SDFFRQX2M \REGs_reg[12][4]  ( .D(n206), .SI(\REGs[12][3] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][4] ) );
  SDFFRQX2M \REGs_reg[12][3]  ( .D(n205), .SI(\REGs[12][2] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][3] ) );
  SDFFRQX2M \REGs_reg[12][2]  ( .D(n204), .SI(\REGs[12][1] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][2] ) );
  SDFFRQX2M \REGs_reg[12][1]  ( .D(n203), .SI(\REGs[12][0] ), .SE(test_se), 
        .CK(CLK), .RN(n342), .Q(\REGs[12][1] ) );
  SDFFRQX2M \REGs_reg[12][0]  ( .D(n202), .SI(\REGs[11][7] ), .SE(test_se), 
        .CK(CLK), .RN(n341), .Q(\REGs[12][0] ) );
  SDFFRQX2M \REGs_reg[1][6]  ( .D(n296), .SI(REG_1[5]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[6]) );
  SDFFRQX2M \REGs_reg[0][7]  ( .D(n305), .SI(REG_0[6]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(REG_0[7]) );
  SDFFRQX2M \REGs_reg[0][6]  ( .D(n304), .SI(REG_0[5]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(REG_0[6]) );
  SDFFRQX2M \REGs_reg[0][5]  ( .D(n303), .SI(REG_0[4]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(REG_0[5]) );
  SDFFRQX2M \REGs_reg[0][4]  ( .D(n302), .SI(REG_0[3]), .SE(test_se), .CK(CLK), 
        .RN(n349), .Q(REG_0[4]) );
  SDFFRQX2M \REGs_reg[0][3]  ( .D(n301), .SI(REG_0[2]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_0[3]) );
  SDFFRQX2M \REGs_reg[0][2]  ( .D(n300), .SI(REG_0[1]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_0[2]) );
  SDFFRQX2M \REGs_reg[0][1]  ( .D(n299), .SI(REG_0[0]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_0[1]) );
  SDFFRQX2M \REGs_reg[0][0]  ( .D(n298), .SI(test_si1), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_0[0]) );
  SDFFRQX2M \REGs_reg[2][1]  ( .D(n283), .SI(REG_2[0]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_2[1]) );
  SDFFSQX2M \REGs_reg[2][0]  ( .D(n282), .SI(REG_1[7]), .SE(test_se), .CK(CLK), 
        .SN(n340), .Q(REG_2[0]) );
  SDFFRQX2M \REGs_reg[1][5]  ( .D(n295), .SI(REG_1[4]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[5]) );
  SDFFRQX2M \REGs_reg[1][4]  ( .D(n294), .SI(REG_1[3]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[4]) );
  SDFFRQX2M \REGs_reg[1][1]  ( .D(n291), .SI(REG_1[0]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[1]) );
  SDFFRQX2M \REGs_reg[1][7]  ( .D(n297), .SI(REG_1[6]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[7]) );
  SDFFRQX2M \REGs_reg[1][3]  ( .D(n293), .SI(REG_1[2]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[3]) );
  SDFFRQX2M \REGs_reg[1][2]  ( .D(n292), .SI(REG_1[1]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[2]) );
  SDFFRQX2M \REGs_reg[1][0]  ( .D(n290), .SI(REG_0[7]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_1[0]) );
  SDFFRQX2M \REGs_reg[3][4]  ( .D(n278), .SI(REG_3[3]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[4]) );
  SDFFRQX2M \REGs_reg[3][2]  ( .D(n276), .SI(test_si2), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[2]) );
  SDFFRQX2M \REGs_reg[3][3]  ( .D(n277), .SI(REG_3[2]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[3]) );
  SDFFRQX2M \REGs_reg[3][0]  ( .D(n274), .SI(REG_2[7]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[0]) );
  SDFFRQX2M \REGs_reg[3][1]  ( .D(n275), .SI(REG_3[0]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_3[1]) );
  SDFFRQX2M \REGs_reg[2][2]  ( .D(n284), .SI(REG_2[1]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_2[2]) );
  SDFFSQX2M \REGs_reg[2][7]  ( .D(n289), .SI(REG_2[6]), .SE(test_se), .CK(CLK), 
        .SN(n340), .Q(REG_2[7]) );
  SDFFRQX2M \REGs_reg[2][6]  ( .D(n288), .SI(REG_2[5]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_2[6]) );
  SDFFRQX2M \REGs_reg[2][4]  ( .D(n286), .SI(REG_2[3]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_2[4]) );
  SDFFRQX2M \REGs_reg[2][3]  ( .D(n285), .SI(REG_2[2]), .SE(test_se), .CK(CLK), 
        .RN(n347), .Q(REG_2[3]) );
  SDFFRQX2M \REGs_reg[2][5]  ( .D(n287), .SI(REG_2[4]), .SE(test_se), .CK(CLK), 
        .RN(n348), .Q(REG_2[5]) );
  SDFFSQX1M \REGs_reg[3][5]  ( .D(n279), .SI(REG_3[4]), .SE(test_se), .CK(CLK), 
        .SN(RST), .Q(REG_3[5]) );
  NOR2X2M U140 ( .A(n365), .B(n339), .Y(n151) );
  NOR2X2M U141 ( .A(n339), .B(N13), .Y(n159) );
  NOR2X2M U142 ( .A(N12), .B(N13), .Y(n162) );
  INVX2M U143 ( .A(n338), .Y(n336) );
  INVX2M U144 ( .A(n334), .Y(n335) );
  NAND2X2M U145 ( .A(n156), .B(n152), .Y(n155) );
  BUFX2M U146 ( .A(n339), .Y(n334) );
  NAND2X2M U147 ( .A(n167), .B(n156), .Y(n170) );
  INVX2M U148 ( .A(n177), .Y(n363) );
  NAND2X2M U149 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U150 ( .A(n159), .B(n152), .Y(n158) );
  NAND2X2M U151 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U152 ( .A(n162), .B(n152), .Y(n161) );
  NAND2X2M U153 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U154 ( .A(n154), .B(n151), .Y(n153) );
  NAND2X2M U155 ( .A(n151), .B(n152), .Y(n150) );
  AND2X2M U156 ( .A(n163), .B(n337), .Y(n152) );
  NOR2X2M U157 ( .A(n365), .B(N12), .Y(n156) );
  NAND2X2M U158 ( .A(n167), .B(n159), .Y(n172) );
  NAND2X2M U159 ( .A(n169), .B(n159), .Y(n173) );
  NAND2X2M U160 ( .A(n167), .B(n162), .Y(n174) );
  NAND2X2M U161 ( .A(n169), .B(n162), .Y(n176) );
  NAND2X2M U162 ( .A(n167), .B(n151), .Y(n166) );
  NAND2X2M U163 ( .A(n169), .B(n151), .Y(n168) );
  NAND2X2M U164 ( .A(n169), .B(n156), .Y(n171) );
  NAND2X2M U165 ( .A(RdEn), .B(n364), .Y(n177) );
  AND2X2M U166 ( .A(n175), .B(n337), .Y(n167) );
  NOR2X2M U167 ( .A(n364), .B(RdEn), .Y(n165) );
  BUFX2M U168 ( .A(n354), .Y(n341) );
  BUFX2M U169 ( .A(n353), .Y(n342) );
  BUFX2M U170 ( .A(n353), .Y(n343) );
  BUFX2M U171 ( .A(n352), .Y(n344) );
  BUFX2M U172 ( .A(n352), .Y(n345) );
  BUFX2M U173 ( .A(n351), .Y(n346) );
  BUFX2M U174 ( .A(n351), .Y(n347) );
  BUFX2M U175 ( .A(n350), .Y(n348) );
  BUFX2M U176 ( .A(n354), .Y(n340) );
  BUFX2M U177 ( .A(n350), .Y(n349) );
  AND2X2M U178 ( .A(n163), .B(n338), .Y(n154) );
  AND2X2M U179 ( .A(N14), .B(n165), .Y(n163) );
  INVX2M U180 ( .A(n338), .Y(n337) );
  INVX2M U181 ( .A(WrData[1]), .Y(n356) );
  INVX2M U182 ( .A(N13), .Y(n365) );
  NOR2BX2M U183 ( .AN(n165), .B(N14), .Y(n175) );
  INVX2M U184 ( .A(WrData[0]), .Y(n355) );
  INVX2M U185 ( .A(WrData[2]), .Y(n357) );
  INVX2M U186 ( .A(WrData[3]), .Y(n358) );
  INVX2M U187 ( .A(WrData[4]), .Y(n359) );
  INVX2M U188 ( .A(WrData[6]), .Y(n361) );
  INVX2M U189 ( .A(WrEn), .Y(n364) );
  AND2X2M U190 ( .A(n175), .B(n338), .Y(n169) );
  BUFX2M U191 ( .A(RST), .Y(n353) );
  BUFX2M U192 ( .A(RST), .Y(n352) );
  BUFX2M U193 ( .A(RST), .Y(n351) );
  BUFX2M U194 ( .A(RST), .Y(n350) );
  BUFX2M U195 ( .A(RST), .Y(n354) );
  OAI2BB2X1M U196 ( .B0(n150), .B1(n355), .A0N(\REGs[15][0] ), .A1N(n150), .Y(
        n178) );
  OAI2BB2X1M U197 ( .B0(n150), .B1(n356), .A0N(\REGs[15][1] ), .A1N(n150), .Y(
        n179) );
  OAI2BB2X1M U198 ( .B0(n150), .B1(n357), .A0N(\REGs[15][2] ), .A1N(n150), .Y(
        n180) );
  OAI2BB2X1M U199 ( .B0(n150), .B1(n358), .A0N(\REGs[15][3] ), .A1N(n150), .Y(
        n181) );
  OAI2BB2X1M U200 ( .B0(n150), .B1(n359), .A0N(\REGs[15][4] ), .A1N(n150), .Y(
        n182) );
  OAI2BB2X1M U201 ( .B0(n150), .B1(n360), .A0N(\REGs[15][5] ), .A1N(n150), .Y(
        n183) );
  OAI2BB2X1M U202 ( .B0(n150), .B1(n361), .A0N(\REGs[15][6] ), .A1N(n150), .Y(
        n184) );
  OAI2BB2X1M U203 ( .B0(n150), .B1(n362), .A0N(\REGs[15][7] ), .A1N(n150), .Y(
        n185) );
  OAI2BB2X1M U204 ( .B0(n355), .B1(n158), .A0N(\REGs[11][0] ), .A1N(n158), .Y(
        n210) );
  OAI2BB2X1M U205 ( .B0(n356), .B1(n158), .A0N(\REGs[11][1] ), .A1N(n158), .Y(
        n211) );
  OAI2BB2X1M U206 ( .B0(n357), .B1(n158), .A0N(\REGs[11][2] ), .A1N(n158), .Y(
        n212) );
  OAI2BB2X1M U207 ( .B0(n358), .B1(n158), .A0N(\REGs[11][3] ), .A1N(n158), .Y(
        n213) );
  OAI2BB2X1M U208 ( .B0(n359), .B1(n158), .A0N(\REGs[11][4] ), .A1N(n158), .Y(
        n214) );
  OAI2BB2X1M U209 ( .B0(n360), .B1(n158), .A0N(\REGs[11][5] ), .A1N(n158), .Y(
        n215) );
  OAI2BB2X1M U210 ( .B0(n361), .B1(n158), .A0N(\REGs[11][6] ), .A1N(n158), .Y(
        n216) );
  OAI2BB2X1M U211 ( .B0(n362), .B1(n158), .A0N(\REGs[11][7] ), .A1N(n158), .Y(
        n217) );
  OAI2BB2X1M U212 ( .B0(n355), .B1(n160), .A0N(\REGs[10][0] ), .A1N(n160), .Y(
        n218) );
  OAI2BB2X1M U213 ( .B0(n356), .B1(n160), .A0N(\REGs[10][1] ), .A1N(n160), .Y(
        n219) );
  OAI2BB2X1M U214 ( .B0(n357), .B1(n160), .A0N(\REGs[10][2] ), .A1N(n160), .Y(
        n220) );
  OAI2BB2X1M U215 ( .B0(n358), .B1(n160), .A0N(\REGs[10][3] ), .A1N(n160), .Y(
        n221) );
  OAI2BB2X1M U216 ( .B0(n359), .B1(n160), .A0N(\REGs[10][4] ), .A1N(n160), .Y(
        n222) );
  OAI2BB2X1M U217 ( .B0(n360), .B1(n160), .A0N(\REGs[10][5] ), .A1N(n160), .Y(
        n223) );
  OAI2BB2X1M U218 ( .B0(n361), .B1(n160), .A0N(\REGs[10][6] ), .A1N(n160), .Y(
        n224) );
  OAI2BB2X1M U219 ( .B0(n362), .B1(n160), .A0N(\REGs[10][7] ), .A1N(n160), .Y(
        n225) );
  OAI2BB2X1M U220 ( .B0(n355), .B1(n161), .A0N(\REGs[9][0] ), .A1N(n161), .Y(
        n226) );
  OAI2BB2X1M U221 ( .B0(n356), .B1(n161), .A0N(\REGs[9][1] ), .A1N(n161), .Y(
        n227) );
  OAI2BB2X1M U222 ( .B0(n357), .B1(n161), .A0N(\REGs[9][2] ), .A1N(n161), .Y(
        n228) );
  OAI2BB2X1M U223 ( .B0(n358), .B1(n161), .A0N(\REGs[9][3] ), .A1N(n161), .Y(
        n229) );
  OAI2BB2X1M U224 ( .B0(n359), .B1(n161), .A0N(\REGs[9][4] ), .A1N(n161), .Y(
        n230) );
  OAI2BB2X1M U225 ( .B0(n360), .B1(n161), .A0N(\REGs[9][5] ), .A1N(n161), .Y(
        n231) );
  OAI2BB2X1M U226 ( .B0(n361), .B1(n161), .A0N(\REGs[9][6] ), .A1N(n161), .Y(
        n232) );
  OAI2BB2X1M U227 ( .B0(n362), .B1(n161), .A0N(\REGs[9][7] ), .A1N(n161), .Y(
        n233) );
  OAI2BB2X1M U228 ( .B0(n355), .B1(n164), .A0N(\REGs[8][0] ), .A1N(n164), .Y(
        n234) );
  OAI2BB2X1M U229 ( .B0(n356), .B1(n164), .A0N(\REGs[8][1] ), .A1N(n164), .Y(
        n235) );
  OAI2BB2X1M U230 ( .B0(n357), .B1(n164), .A0N(\REGs[8][2] ), .A1N(n164), .Y(
        n236) );
  OAI2BB2X1M U231 ( .B0(n358), .B1(n164), .A0N(\REGs[8][3] ), .A1N(n164), .Y(
        n237) );
  OAI2BB2X1M U232 ( .B0(n359), .B1(n164), .A0N(\REGs[8][4] ), .A1N(n164), .Y(
        n238) );
  OAI2BB2X1M U233 ( .B0(n360), .B1(n164), .A0N(\REGs[8][5] ), .A1N(n164), .Y(
        n239) );
  OAI2BB2X1M U234 ( .B0(n361), .B1(n164), .A0N(\REGs[8][6] ), .A1N(n164), .Y(
        n240) );
  OAI2BB2X1M U235 ( .B0(n362), .B1(n164), .A0N(\REGs[8][7] ), .A1N(n164), .Y(
        n241) );
  OAI2BB2X1M U236 ( .B0(n355), .B1(n155), .A0N(\REGs[13][0] ), .A1N(n155), .Y(
        n194) );
  OAI2BB2X1M U237 ( .B0(n356), .B1(n155), .A0N(\REGs[13][1] ), .A1N(n155), .Y(
        n195) );
  OAI2BB2X1M U238 ( .B0(n357), .B1(n155), .A0N(\REGs[13][2] ), .A1N(n155), .Y(
        n196) );
  OAI2BB2X1M U239 ( .B0(n358), .B1(n155), .A0N(\REGs[13][3] ), .A1N(n155), .Y(
        n197) );
  OAI2BB2X1M U240 ( .B0(n359), .B1(n155), .A0N(\REGs[13][4] ), .A1N(n155), .Y(
        n198) );
  OAI2BB2X1M U241 ( .B0(n360), .B1(n155), .A0N(\REGs[13][5] ), .A1N(n155), .Y(
        n199) );
  OAI2BB2X1M U242 ( .B0(n361), .B1(n155), .A0N(\REGs[13][6] ), .A1N(n155), .Y(
        n200) );
  OAI2BB2X1M U243 ( .B0(n362), .B1(n155), .A0N(\REGs[13][7] ), .A1N(n155), .Y(
        n201) );
  OAI2BB2X1M U244 ( .B0(n355), .B1(n157), .A0N(\REGs[12][0] ), .A1N(n157), .Y(
        n202) );
  OAI2BB2X1M U245 ( .B0(n356), .B1(n157), .A0N(\REGs[12][1] ), .A1N(n157), .Y(
        n203) );
  OAI2BB2X1M U246 ( .B0(n357), .B1(n157), .A0N(\REGs[12][2] ), .A1N(n157), .Y(
        n204) );
  OAI2BB2X1M U247 ( .B0(n358), .B1(n157), .A0N(\REGs[12][3] ), .A1N(n157), .Y(
        n205) );
  OAI2BB2X1M U248 ( .B0(n359), .B1(n157), .A0N(\REGs[12][4] ), .A1N(n157), .Y(
        n206) );
  OAI2BB2X1M U249 ( .B0(n360), .B1(n157), .A0N(\REGs[12][5] ), .A1N(n157), .Y(
        n207) );
  OAI2BB2X1M U250 ( .B0(n361), .B1(n157), .A0N(\REGs[12][6] ), .A1N(n157), .Y(
        n208) );
  OAI2BB2X1M U251 ( .B0(n362), .B1(n157), .A0N(\REGs[12][7] ), .A1N(n157), .Y(
        n209) );
  OAI2BB2X1M U252 ( .B0(n355), .B1(n153), .A0N(\REGs[14][0] ), .A1N(n153), .Y(
        n186) );
  OAI2BB2X1M U253 ( .B0(n356), .B1(n153), .A0N(\REGs[14][1] ), .A1N(n153), .Y(
        n187) );
  OAI2BB2X1M U254 ( .B0(n357), .B1(n153), .A0N(\REGs[14][2] ), .A1N(n153), .Y(
        n188) );
  OAI2BB2X1M U255 ( .B0(n358), .B1(n153), .A0N(\REGs[14][3] ), .A1N(n153), .Y(
        n189) );
  OAI2BB2X1M U256 ( .B0(n359), .B1(n153), .A0N(\REGs[14][4] ), .A1N(n153), .Y(
        n190) );
  OAI2BB2X1M U257 ( .B0(n360), .B1(n153), .A0N(\REGs[14][5] ), .A1N(n153), .Y(
        n191) );
  OAI2BB2X1M U258 ( .B0(n361), .B1(n153), .A0N(\REGs[14][6] ), .A1N(n153), .Y(
        n192) );
  OAI2BB2X1M U259 ( .B0(n362), .B1(n153), .A0N(\REGs[14][7] ), .A1N(n153), .Y(
        n193) );
  AO22X1M U260 ( .A0(N43), .A1(n363), .B0(RdData[0]), .B1(n177), .Y(n306) );
  MX4X1M U261 ( .A(n141), .B(n139), .C(n140), .D(n138), .S0(N14), .S1(N13), 
        .Y(N43) );
  MX4X1M U262 ( .A(REG_0[0]), .B(REG_1[0]), .C(REG_2[0]), .D(REG_3[0]), .S0(
        N11), .S1(N12), .Y(n141) );
  MX4X1M U263 ( .A(\REGs[8][0] ), .B(\REGs[9][0] ), .C(\REGs[10][0] ), .D(
        \REGs[11][0] ), .S0(N11), .S1(N12), .Y(n139) );
  AO22X1M U264 ( .A0(N42), .A1(n363), .B0(RdData[1]), .B1(n177), .Y(n307) );
  MX4X1M U265 ( .A(n145), .B(n143), .C(n144), .D(n142), .S0(N14), .S1(N13), 
        .Y(N42) );
  MX4X1M U266 ( .A(\REGs[8][1] ), .B(\REGs[9][1] ), .C(\REGs[10][1] ), .D(
        \REGs[11][1] ), .S0(N11), .S1(N12), .Y(n143) );
  MX4X1M U267 ( .A(\REGs[12][1] ), .B(\REGs[13][1] ), .C(\REGs[14][1] ), .D(
        \REGs[15][1] ), .S0(n337), .S1(N12), .Y(n142) );
  AO22X1M U268 ( .A0(N41), .A1(n363), .B0(RdData[2]), .B1(n177), .Y(n308) );
  MX4X1M U269 ( .A(n149), .B(n147), .C(n148), .D(n146), .S0(N14), .S1(N13), 
        .Y(N41) );
  MX4X1M U270 ( .A(REG_0[2]), .B(REG_1[2]), .C(REG_2[2]), .D(REG_3[2]), .S0(
        n336), .S1(n335), .Y(n149) );
  MX4X1M U271 ( .A(\REGs[8][2] ), .B(\REGs[9][2] ), .C(\REGs[10][2] ), .D(
        \REGs[11][2] ), .S0(n336), .S1(n335), .Y(n147) );
  AO22X1M U272 ( .A0(N40), .A1(n363), .B0(RdData[3]), .B1(n177), .Y(n309) );
  MX4X1M U273 ( .A(n317), .B(n315), .C(n316), .D(n314), .S0(N14), .S1(N13), 
        .Y(N40) );
  MX4X1M U274 ( .A(REG_0[3]), .B(REG_1[3]), .C(REG_2[3]), .D(REG_3[3]), .S0(
        n336), .S1(n335), .Y(n317) );
  MX4X1M U275 ( .A(\REGs[8][3] ), .B(\REGs[9][3] ), .C(\REGs[10][3] ), .D(
        \REGs[11][3] ), .S0(n336), .S1(n335), .Y(n315) );
  AO22X1M U276 ( .A0(N39), .A1(n363), .B0(RdData[4]), .B1(n177), .Y(n310) );
  MX4X1M U277 ( .A(n321), .B(n319), .C(n320), .D(n318), .S0(N14), .S1(N13), 
        .Y(N39) );
  MX4X1M U278 ( .A(REG_0[4]), .B(REG_1[4]), .C(REG_2[4]), .D(REG_3[4]), .S0(
        N11), .S1(n335), .Y(n321) );
  MX4X1M U279 ( .A(\REGs[8][4] ), .B(\REGs[9][4] ), .C(\REGs[10][4] ), .D(
        \REGs[11][4] ), .S0(n336), .S1(n335), .Y(n319) );
  AO22X1M U280 ( .A0(N38), .A1(n363), .B0(RdData[5]), .B1(n177), .Y(n311) );
  MX4X1M U281 ( .A(n325), .B(n323), .C(n324), .D(n322), .S0(N14), .S1(N13), 
        .Y(N38) );
  MX4X1M U282 ( .A(REG_0[5]), .B(REG_1[5]), .C(REG_2[5]), .D(REG_3[5]), .S0(
        N11), .S1(N12), .Y(n325) );
  MX4X1M U283 ( .A(\REGs[8][5] ), .B(\REGs[9][5] ), .C(\REGs[10][5] ), .D(
        \REGs[11][5] ), .S0(N11), .S1(N12), .Y(n323) );
  AO22X1M U284 ( .A0(N37), .A1(n363), .B0(RdData[6]), .B1(n177), .Y(n312) );
  MX4X1M U285 ( .A(n329), .B(n327), .C(n328), .D(n326), .S0(N14), .S1(N13), 
        .Y(N37) );
  MX4X1M U286 ( .A(REG_0[6]), .B(REG_1[6]), .C(REG_2[6]), .D(REG_3[6]), .S0(
        n337), .S1(N12), .Y(n329) );
  MX4X1M U287 ( .A(\REGs[8][6] ), .B(\REGs[9][6] ), .C(\REGs[10][6] ), .D(
        \REGs[11][6] ), .S0(N11), .S1(N12), .Y(n327) );
  AO22X1M U288 ( .A0(N36), .A1(n363), .B0(RdData[7]), .B1(n177), .Y(n313) );
  MX4X1M U289 ( .A(n333), .B(n331), .C(n332), .D(n330), .S0(N14), .S1(N13), 
        .Y(N36) );
  MX4X1M U290 ( .A(REG_0[7]), .B(REG_1[7]), .C(REG_2[7]), .D(REG_3[7]), .S0(
        n337), .S1(N12), .Y(n333) );
  MX4X1M U291 ( .A(\REGs[8][7] ), .B(\REGs[9][7] ), .C(\REGs[10][7] ), .D(
        \REGs[11][7] ), .S0(N11), .S1(N12), .Y(n331) );
  MX4X1M U292 ( .A(REG_0[1]), .B(REG_1[1]), .C(REG_2[1]), .D(REG_3[1]), .S0(
        n336), .S1(N12), .Y(n145) );
  MX4X1M U293 ( .A(\REGs[4][0] ), .B(\REGs[5][0] ), .C(\REGs[6][0] ), .D(
        \REGs[7][0] ), .S0(n337), .S1(N12), .Y(n140) );
  MX4X1M U294 ( .A(\REGs[4][1] ), .B(\REGs[5][1] ), .C(\REGs[6][1] ), .D(
        \REGs[7][1] ), .S0(n336), .S1(N12), .Y(n144) );
  MX4X1M U295 ( .A(\REGs[4][2] ), .B(\REGs[5][2] ), .C(\REGs[6][2] ), .D(
        \REGs[7][2] ), .S0(n336), .S1(n335), .Y(n148) );
  MX4X1M U296 ( .A(\REGs[4][3] ), .B(\REGs[5][3] ), .C(\REGs[6][3] ), .D(
        \REGs[7][3] ), .S0(n336), .S1(n335), .Y(n316) );
  MX4X1M U297 ( .A(\REGs[4][4] ), .B(\REGs[5][4] ), .C(\REGs[6][4] ), .D(
        \REGs[7][4] ), .S0(n336), .S1(n335), .Y(n320) );
  MX4X1M U298 ( .A(\REGs[4][5] ), .B(\REGs[5][5] ), .C(\REGs[6][5] ), .D(
        \REGs[7][5] ), .S0(N11), .S1(N12), .Y(n324) );
  MX4X1M U299 ( .A(\REGs[4][6] ), .B(\REGs[5][6] ), .C(\REGs[6][6] ), .D(
        \REGs[7][6] ), .S0(N11), .S1(N12), .Y(n328) );
  MX4X1M U300 ( .A(\REGs[4][7] ), .B(\REGs[5][7] ), .C(\REGs[6][7] ), .D(
        \REGs[7][7] ), .S0(N11), .S1(N12), .Y(n332) );
  MX4X1M U301 ( .A(\REGs[12][0] ), .B(\REGs[13][0] ), .C(\REGs[14][0] ), .D(
        \REGs[15][0] ), .S0(n336), .S1(n335), .Y(n138) );
  MX4X1M U302 ( .A(\REGs[12][2] ), .B(\REGs[13][2] ), .C(\REGs[14][2] ), .D(
        \REGs[15][2] ), .S0(n336), .S1(n335), .Y(n146) );
  MX4X1M U303 ( .A(\REGs[12][3] ), .B(\REGs[13][3] ), .C(\REGs[14][3] ), .D(
        \REGs[15][3] ), .S0(n336), .S1(n335), .Y(n314) );
  MX4X1M U304 ( .A(\REGs[12][4] ), .B(\REGs[13][4] ), .C(\REGs[14][4] ), .D(
        \REGs[15][4] ), .S0(n336), .S1(n335), .Y(n318) );
  MX4X1M U305 ( .A(\REGs[12][5] ), .B(\REGs[13][5] ), .C(\REGs[14][5] ), .D(
        \REGs[15][5] ), .S0(N11), .S1(N12), .Y(n322) );
  MX4X1M U306 ( .A(\REGs[12][6] ), .B(\REGs[13][6] ), .C(\REGs[14][6] ), .D(
        \REGs[15][6] ), .S0(N11), .S1(N12), .Y(n326) );
  MX4X1M U307 ( .A(\REGs[12][7] ), .B(\REGs[13][7] ), .C(\REGs[14][7] ), .D(
        \REGs[15][7] ), .S0(N11), .S1(N12), .Y(n330) );
  INVX2M U308 ( .A(N12), .Y(n339) );
  INVX2M U309 ( .A(N11), .Y(n338) );
  INVX2M U310 ( .A(WrData[5]), .Y(n360) );
  INVX2M U311 ( .A(WrData[7]), .Y(n362) );
  OAI2BB2X1M U312 ( .B0(n355), .B1(n172), .A0N(REG_3[0]), .A1N(n172), .Y(n274)
         );
  OAI2BB2X1M U313 ( .B0(n356), .B1(n172), .A0N(REG_3[1]), .A1N(n172), .Y(n275)
         );
  OAI2BB2X1M U314 ( .B0(n357), .B1(n172), .A0N(REG_3[2]), .A1N(n172), .Y(n276)
         );
  OAI2BB2X1M U315 ( .B0(n358), .B1(n172), .A0N(REG_3[3]), .A1N(n172), .Y(n277)
         );
  OAI2BB2X1M U316 ( .B0(n359), .B1(n172), .A0N(REG_3[4]), .A1N(n172), .Y(n278)
         );
  OAI2BB2X1M U317 ( .B0(n361), .B1(n172), .A0N(REG_3[6]), .A1N(n172), .Y(n280)
         );
  OAI2BB2X1M U318 ( .B0(n362), .B1(n172), .A0N(REG_3[7]), .A1N(n172), .Y(n281)
         );
  OAI2BB2X1M U319 ( .B0(n356), .B1(n173), .A0N(REG_2[1]), .A1N(n173), .Y(n283)
         );
  OAI2BB2X1M U320 ( .B0(n357), .B1(n173), .A0N(REG_2[2]), .A1N(n173), .Y(n284)
         );
  OAI2BB2X1M U321 ( .B0(n358), .B1(n173), .A0N(REG_2[3]), .A1N(n173), .Y(n285)
         );
  OAI2BB2X1M U322 ( .B0(n359), .B1(n173), .A0N(REG_2[4]), .A1N(n173), .Y(n286)
         );
  OAI2BB2X1M U323 ( .B0(n360), .B1(n173), .A0N(REG_2[5]), .A1N(n173), .Y(n287)
         );
  OAI2BB2X1M U324 ( .B0(n361), .B1(n173), .A0N(REG_2[6]), .A1N(n173), .Y(n288)
         );
  OAI2BB2X1M U325 ( .B0(n355), .B1(n174), .A0N(REG_1[0]), .A1N(n174), .Y(n290)
         );
  OAI2BB2X1M U326 ( .B0(n356), .B1(n174), .A0N(REG_1[1]), .A1N(n174), .Y(n291)
         );
  OAI2BB2X1M U327 ( .B0(n357), .B1(n174), .A0N(REG_1[2]), .A1N(n174), .Y(n292)
         );
  OAI2BB2X1M U328 ( .B0(n358), .B1(n174), .A0N(REG_1[3]), .A1N(n174), .Y(n293)
         );
  OAI2BB2X1M U329 ( .B0(n359), .B1(n174), .A0N(REG_1[4]), .A1N(n174), .Y(n294)
         );
  OAI2BB2X1M U330 ( .B0(n360), .B1(n174), .A0N(REG_1[5]), .A1N(n174), .Y(n295)
         );
  OAI2BB2X1M U331 ( .B0(n361), .B1(n174), .A0N(REG_1[6]), .A1N(n174), .Y(n296)
         );
  OAI2BB2X1M U332 ( .B0(n362), .B1(n174), .A0N(REG_1[7]), .A1N(n174), .Y(n297)
         );
  OAI2BB2X1M U333 ( .B0(n355), .B1(n176), .A0N(REG_0[0]), .A1N(n176), .Y(n298)
         );
  OAI2BB2X1M U334 ( .B0(n356), .B1(n176), .A0N(REG_0[1]), .A1N(n176), .Y(n299)
         );
  OAI2BB2X1M U335 ( .B0(n357), .B1(n176), .A0N(REG_0[2]), .A1N(n176), .Y(n300)
         );
  OAI2BB2X1M U336 ( .B0(n358), .B1(n176), .A0N(REG_0[3]), .A1N(n176), .Y(n301)
         );
  OAI2BB2X1M U337 ( .B0(n359), .B1(n176), .A0N(REG_0[4]), .A1N(n176), .Y(n302)
         );
  OAI2BB2X1M U338 ( .B0(n360), .B1(n176), .A0N(REG_0[5]), .A1N(n176), .Y(n303)
         );
  OAI2BB2X1M U339 ( .B0(n361), .B1(n176), .A0N(REG_0[6]), .A1N(n176), .Y(n304)
         );
  OAI2BB2X1M U340 ( .B0(n362), .B1(n176), .A0N(REG_0[7]), .A1N(n176), .Y(n305)
         );
  OAI2BB2X1M U341 ( .B0(n355), .B1(n166), .A0N(\REGs[7][0] ), .A1N(n166), .Y(
        n242) );
  OAI2BB2X1M U342 ( .B0(n356), .B1(n166), .A0N(\REGs[7][1] ), .A1N(n166), .Y(
        n243) );
  OAI2BB2X1M U343 ( .B0(n357), .B1(n166), .A0N(\REGs[7][2] ), .A1N(n166), .Y(
        n244) );
  OAI2BB2X1M U344 ( .B0(n358), .B1(n166), .A0N(\REGs[7][3] ), .A1N(n166), .Y(
        n245) );
  OAI2BB2X1M U345 ( .B0(n359), .B1(n166), .A0N(\REGs[7][4] ), .A1N(n166), .Y(
        n246) );
  OAI2BB2X1M U346 ( .B0(n360), .B1(n166), .A0N(\REGs[7][5] ), .A1N(n166), .Y(
        n247) );
  OAI2BB2X1M U347 ( .B0(n361), .B1(n166), .A0N(\REGs[7][6] ), .A1N(n166), .Y(
        n248) );
  OAI2BB2X1M U348 ( .B0(n362), .B1(n166), .A0N(\REGs[7][7] ), .A1N(n166), .Y(
        n249) );
  OAI2BB2X1M U349 ( .B0(n355), .B1(n168), .A0N(\REGs[6][0] ), .A1N(n168), .Y(
        n250) );
  OAI2BB2X1M U350 ( .B0(n356), .B1(n168), .A0N(\REGs[6][1] ), .A1N(n168), .Y(
        n251) );
  OAI2BB2X1M U351 ( .B0(n357), .B1(n168), .A0N(\REGs[6][2] ), .A1N(n168), .Y(
        n252) );
  OAI2BB2X1M U352 ( .B0(n358), .B1(n168), .A0N(\REGs[6][3] ), .A1N(n168), .Y(
        n253) );
  OAI2BB2X1M U353 ( .B0(n359), .B1(n168), .A0N(\REGs[6][4] ), .A1N(n168), .Y(
        n254) );
  OAI2BB2X1M U354 ( .B0(n360), .B1(n168), .A0N(\REGs[6][5] ), .A1N(n168), .Y(
        n255) );
  OAI2BB2X1M U355 ( .B0(n361), .B1(n168), .A0N(\REGs[6][6] ), .A1N(n168), .Y(
        n256) );
  OAI2BB2X1M U356 ( .B0(n362), .B1(n168), .A0N(\REGs[6][7] ), .A1N(n168), .Y(
        n257) );
  OAI2BB2X1M U357 ( .B0(n355), .B1(n170), .A0N(\REGs[5][0] ), .A1N(n170), .Y(
        n258) );
  OAI2BB2X1M U358 ( .B0(n356), .B1(n170), .A0N(\REGs[5][1] ), .A1N(n170), .Y(
        n259) );
  OAI2BB2X1M U359 ( .B0(n357), .B1(n170), .A0N(\REGs[5][2] ), .A1N(n170), .Y(
        n260) );
  OAI2BB2X1M U360 ( .B0(n358), .B1(n170), .A0N(\REGs[5][3] ), .A1N(n170), .Y(
        n261) );
  OAI2BB2X1M U361 ( .B0(n359), .B1(n170), .A0N(\REGs[5][4] ), .A1N(n170), .Y(
        n262) );
  OAI2BB2X1M U362 ( .B0(n360), .B1(n170), .A0N(\REGs[5][5] ), .A1N(n170), .Y(
        n263) );
  OAI2BB2X1M U363 ( .B0(n361), .B1(n170), .A0N(\REGs[5][6] ), .A1N(n170), .Y(
        n264) );
  OAI2BB2X1M U364 ( .B0(n362), .B1(n170), .A0N(\REGs[5][7] ), .A1N(n170), .Y(
        n265) );
  OAI2BB2X1M U365 ( .B0(n355), .B1(n171), .A0N(\REGs[4][0] ), .A1N(n171), .Y(
        n266) );
  OAI2BB2X1M U366 ( .B0(n356), .B1(n171), .A0N(\REGs[4][1] ), .A1N(n171), .Y(
        n267) );
  OAI2BB2X1M U367 ( .B0(n357), .B1(n171), .A0N(\REGs[4][2] ), .A1N(n171), .Y(
        n268) );
  OAI2BB2X1M U368 ( .B0(n358), .B1(n171), .A0N(\REGs[4][3] ), .A1N(n171), .Y(
        n269) );
  OAI2BB2X1M U369 ( .B0(n359), .B1(n171), .A0N(\REGs[4][4] ), .A1N(n171), .Y(
        n270) );
  OAI2BB2X1M U370 ( .B0(n360), .B1(n171), .A0N(\REGs[4][5] ), .A1N(n171), .Y(
        n271) );
  OAI2BB2X1M U371 ( .B0(n361), .B1(n171), .A0N(\REGs[4][6] ), .A1N(n171), .Y(
        n272) );
  OAI2BB2X1M U372 ( .B0(n362), .B1(n171), .A0N(\REGs[4][7] ), .A1N(n171), .Y(
        n273) );
  OAI2BB2X1M U373 ( .B0(n360), .B1(n172), .A0N(REG_3[5]), .A1N(n172), .Y(n279)
         );
  OAI2BB2X1M U374 ( .B0(n355), .B1(n173), .A0N(REG_2[0]), .A1N(n173), .Y(n282)
         );
  OAI2BB2X1M U375 ( .B0(n362), .B1(n173), .A0N(REG_2[7]), .A1N(n173), .Y(n289)
         );
endmodule


module SYS_CNTRL_DATA_WD8_REG_ADDR_WD4_ALU_FUN_WD4_ALU_OUT_WD16_test_1 ( CLK, 
        RST, REG_RD_D, DATA_SYNC, ALU_OUT, FIFO_FULL, ALU_OUT_VALID, 
        VALID_SYNC, REG_WR_D, FIFO_WR_D, REG_ADDR, ALU_FUN, REG_WR_EN, 
        REG_RD_EN, ALU_EN, GATE_EN, FIFO_WR_INC, test_so, test_se );
  input [7:0] REG_RD_D;
  input [7:0] DATA_SYNC;
  input [15:0] ALU_OUT;
  output [7:0] REG_WR_D;
  output [7:0] FIFO_WR_D;
  output [3:0] REG_ADDR;
  output [3:0] ALU_FUN;
  input CLK, RST, FIFO_FULL, ALU_OUT_VALID, VALID_SYNC, test_se;
  output REG_WR_EN, REG_RD_EN, ALU_EN, GATE_EN, FIFO_WR_INC, test_so;
  wire   n9, n10, n11, n12, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n81, n82, n83, n84, n85, n86, n87, n88;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  assign test_so = n24;

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(n85), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[0]) );
  SDFFRX1M \INTERNAL_TEMP_reg[0]  ( .D(n80), .SI(REG_RD_D[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(n88), .QN(n12) );
  SDFFRX1M \INTERNAL_TEMP_reg[3]  ( .D(n77), .SI(n86), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n85), .QN(n9) );
  SDFFRX1M \INTERNAL_TEMP_reg[2]  ( .D(n78), .SI(n87), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n86), .QN(n10) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(n26), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(n15), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(current_state[1]) );
  SDFFRQX2M \current_state_reg[3]  ( .D(n17), .SI(current_state[2]), .SE(
        test_se), .CK(CLK), .RN(RST), .Q(current_state[3]) );
  SDFFRX1M \INTERNAL_TEMP_reg[1]  ( .D(n79), .SI(n88), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(n87), .QN(n11) );
  OAI22X1M U11 ( .A0(n50), .A1(n81), .B0(n51), .B1(n9), .Y(ALU_FUN[3]) );
  OAI21X2M U13 ( .A0(n50), .A1(n28), .B0(n51), .Y(ALU_EN) );
  OAI22X2M U14 ( .A0(n10), .A1(n65), .B0(n41), .B1(n82), .Y(REG_ADDR[2]) );
  OAI22X1M U15 ( .A0(n50), .A1(n84), .B0(n51), .B1(n12), .Y(ALU_FUN[0]) );
  OAI22X1M U16 ( .A0(n50), .A1(n83), .B0(n51), .B1(n11), .Y(ALU_FUN[1]) );
  OAI22X1M U17 ( .A0(n50), .A1(n82), .B0(n51), .B1(n10), .Y(ALU_FUN[2]) );
  INVX2M U18 ( .A(n52), .Y(n20) );
  BUFX2M U19 ( .A(n64), .Y(n16) );
  NOR3BX2M U20 ( .AN(n65), .B(n22), .C(n36), .Y(n64) );
  NAND2X2M U21 ( .A(n39), .B(n76), .Y(n52) );
  INVX2M U22 ( .A(n32), .Y(n17) );
  AOI211X2M U23 ( .A0(n21), .A1(FIFO_FULL), .B0(n20), .C0(ALU_EN), .Y(n32) );
  INVX2M U24 ( .A(n67), .Y(n19) );
  AOI31X2M U25 ( .A0(n52), .A1(n66), .A2(n67), .B0(FIFO_FULL), .Y(FIFO_WR_INC)
         );
  NAND3X2M U26 ( .A(n53), .B(n27), .C(n15), .Y(n65) );
  INVX2M U27 ( .A(n53), .Y(n25) );
  NOR2X2M U28 ( .A(n27), .B(n15), .Y(n39) );
  NOR2X2M U29 ( .A(n41), .B(n28), .Y(REG_RD_EN) );
  NOR2X2M U30 ( .A(n16), .B(n83), .Y(REG_WR_D[1]) );
  NOR2X2M U31 ( .A(n24), .B(n26), .Y(n76) );
  NOR2X2M U32 ( .A(n16), .B(n84), .Y(REG_WR_D[0]) );
  NOR2X2M U33 ( .A(n16), .B(n82), .Y(REG_WR_D[2]) );
  NOR2X2M U34 ( .A(n16), .B(n81), .Y(REG_WR_D[3]) );
  NOR2X2M U35 ( .A(n16), .B(n31), .Y(REG_WR_D[4]) );
  NOR2X2M U36 ( .A(n16), .B(n29), .Y(REG_WR_D[6]) );
  NOR2X2M U37 ( .A(n16), .B(n28), .Y(REG_WR_EN) );
  NAND2X2M U38 ( .A(n39), .B(n53), .Y(n67) );
  AND2X2M U39 ( .A(n61), .B(n39), .Y(n36) );
  INVX2M U40 ( .A(n47), .Y(n22) );
  INVX2M U41 ( .A(n66), .Y(n21) );
  NAND3BX2M U42 ( .AN(n33), .B(n34), .C(n35), .Y(next_state[2]) );
  AOI32X1M U43 ( .A0(n37), .A1(n23), .A2(n38), .B0(FIFO_FULL), .B1(n39), .Y(
        n34) );
  NOR4X1M U44 ( .A(REG_RD_EN), .B(n20), .C(n36), .D(n22), .Y(n35) );
  NOR2X2M U45 ( .A(n82), .B(n29), .Y(n37) );
  OAI211X2M U46 ( .A0(n48), .A1(n49), .B0(n50), .C0(n51), .Y(n33) );
  OAI21X2M U47 ( .A0(n15), .A1(n25), .B0(n52), .Y(n44) );
  NAND3X2M U48 ( .A(n15), .B(n27), .C(n61), .Y(n46) );
  AOI21X2M U49 ( .A0(n46), .A1(n47), .B0(n28), .Y(n45) );
  NAND2X2M U50 ( .A(n46), .B(n50), .Y(n55) );
  INVX2M U51 ( .A(n63), .Y(n18) );
  INVX2M U52 ( .A(n49), .Y(n23) );
  INVX2M U53 ( .A(n48), .Y(n30) );
  OAI22X4M U54 ( .A0(n9), .A1(n65), .B0(n41), .B1(n81), .Y(REG_ADDR[3]) );
  NOR2X2M U55 ( .A(n26), .B(current_state[3]), .Y(n53) );
  OR3X2M U56 ( .A(n15), .B(current_state[2]), .C(n25), .Y(n41) );
  INVX2M U57 ( .A(current_state[1]), .Y(n26) );
  OAI22X1M U58 ( .A0(n11), .A1(n65), .B0(n41), .B1(n83), .Y(REG_ADDR[1]) );
  OAI221X1M U59 ( .A0(n41), .A1(n84), .B0(n12), .B1(n65), .C0(n47), .Y(
        REG_ADDR[0]) );
  NOR2X2M U60 ( .A(current_state[3]), .B(current_state[1]), .Y(n61) );
  NAND3X2M U61 ( .A(n15), .B(n53), .C(current_state[2]), .Y(n50) );
  NOR2BX2M U62 ( .AN(DATA_SYNC[5]), .B(n16), .Y(REG_WR_D[5]) );
  NOR2BX2M U63 ( .AN(DATA_SYNC[7]), .B(n16), .Y(REG_WR_D[7]) );
  NAND3X2M U64 ( .A(current_state[2]), .B(n15), .C(n61), .Y(n47) );
  INVX2M U65 ( .A(VALID_SYNC), .Y(n28) );
  OAI2BB1X2M U66 ( .A0N(REG_RD_D[1]), .A1N(n19), .B0(n74), .Y(FIFO_WR_D[1]) );
  AOI22X1M U67 ( .A0(ALU_OUT[1]), .A1(n20), .B0(ALU_OUT[9]), .B1(n21), .Y(n74)
         );
  OAI2BB1X2M U68 ( .A0N(REG_RD_D[2]), .A1N(n19), .B0(n73), .Y(FIFO_WR_D[2]) );
  AOI22X1M U69 ( .A0(ALU_OUT[2]), .A1(n20), .B0(ALU_OUT[10]), .B1(n21), .Y(n73) );
  OAI2BB1X2M U70 ( .A0N(REG_RD_D[3]), .A1N(n19), .B0(n72), .Y(FIFO_WR_D[3]) );
  AOI22X1M U71 ( .A0(ALU_OUT[3]), .A1(n20), .B0(ALU_OUT[11]), .B1(n21), .Y(n72) );
  OAI2BB1X2M U72 ( .A0N(REG_RD_D[4]), .A1N(n19), .B0(n71), .Y(FIFO_WR_D[4]) );
  AOI22X1M U73 ( .A0(ALU_OUT[4]), .A1(n20), .B0(ALU_OUT[12]), .B1(n21), .Y(n71) );
  OAI2BB1X2M U74 ( .A0N(REG_RD_D[5]), .A1N(n19), .B0(n70), .Y(FIFO_WR_D[5]) );
  AOI22X1M U75 ( .A0(ALU_OUT[5]), .A1(n20), .B0(ALU_OUT[13]), .B1(n21), .Y(n70) );
  OAI2BB1X2M U76 ( .A0N(REG_RD_D[6]), .A1N(n19), .B0(n69), .Y(FIFO_WR_D[6]) );
  AOI22X1M U77 ( .A0(ALU_OUT[6]), .A1(n20), .B0(ALU_OUT[14]), .B1(n21), .Y(n69) );
  OAI2BB1X2M U78 ( .A0N(REG_RD_D[7]), .A1N(n19), .B0(n68), .Y(FIFO_WR_D[7]) );
  AOI22X1M U79 ( .A0(ALU_OUT[7]), .A1(n20), .B0(ALU_OUT[15]), .B1(n21), .Y(n68) );
  INVX2M U80 ( .A(current_state[2]), .Y(n27) );
  OAI2BB1X2M U81 ( .A0N(REG_RD_D[0]), .A1N(n19), .B0(n75), .Y(FIFO_WR_D[0]) );
  AOI22X1M U82 ( .A0(ALU_OUT[0]), .A1(n20), .B0(ALU_OUT[8]), .B1(n21), .Y(n75)
         );
  INVX2M U83 ( .A(DATA_SYNC[0]), .Y(n84) );
  NAND3X2M U84 ( .A(current_state[3]), .B(n26), .C(n39), .Y(n66) );
  BUFX2M U85 ( .A(current_state[0]), .Y(n15) );
  INVX2M U86 ( .A(DATA_SYNC[2]), .Y(n82) );
  INVX2M U87 ( .A(DATA_SYNC[1]), .Y(n83) );
  NAND4X2M U88 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(next_state[1]) );
  NAND3X2M U89 ( .A(n28), .B(n27), .C(n53), .Y(n42) );
  NAND3X2M U90 ( .A(DATA_SYNC[4]), .B(DATA_SYNC[0]), .C(n54), .Y(n40) );
  AOI211X2M U91 ( .A0(FIFO_FULL), .A1(n44), .B0(n33), .C0(n45), .Y(n43) );
  INVX2M U92 ( .A(DATA_SYNC[3]), .Y(n81) );
  INVX2M U93 ( .A(current_state[3]), .Y(n24) );
  NAND3X2M U94 ( .A(current_state[2]), .B(n15), .C(n76), .Y(n51) );
  NOR4X1M U95 ( .A(DATA_SYNC[5]), .B(DATA_SYNC[4]), .C(DATA_SYNC[1]), .D(
        DATA_SYNC[0]), .Y(n38) );
  OAI22X1M U96 ( .A0(n18), .A1(n9), .B0(n81), .B1(n63), .Y(n77) );
  OAI22X1M U97 ( .A0(n18), .A1(n11), .B0(n83), .B1(n63), .Y(n79) );
  OAI22X1M U98 ( .A0(n18), .A1(n10), .B0(n82), .B1(n63), .Y(n78) );
  OAI22X1M U99 ( .A0(n18), .A1(n12), .B0(n84), .B1(n63), .Y(n80) );
  NAND4X2M U100 ( .A(DATA_SYNC[4]), .B(DATA_SYNC[2]), .C(DATA_SYNC[6]), .D(n59), .Y(n48) );
  NOR3X2M U101 ( .A(n84), .B(DATA_SYNC[5]), .C(DATA_SYNC[1]), .Y(n59) );
  NAND2X2M U102 ( .A(VALID_SYNC), .B(n55), .Y(n63) );
  NAND4X2M U103 ( .A(DATA_SYNC[3]), .B(n61), .C(DATA_SYNC[7]), .D(n62), .Y(n49) );
  NOR3X2M U104 ( .A(n28), .B(current_state[2]), .C(n15), .Y(n62) );
  NAND4BX1M U105 ( .AN(n55), .B(n56), .C(n57), .D(n58), .Y(next_state[0]) );
  AOI31X2M U106 ( .A0(n28), .A1(n24), .A2(n15), .B0(n22), .Y(n58) );
  AOI2BB2XLM U107 ( .B0(n36), .B1(VALID_SYNC), .A0N(ALU_OUT_VALID), .A1N(n51), 
        .Y(n56) );
  AOI32X1M U108 ( .A0(n84), .A1(n31), .A2(n54), .B0(n23), .B1(n30), .Y(n57) );
  AND4X2M U109 ( .A(DATA_SYNC[5]), .B(DATA_SYNC[1]), .C(n60), .D(n23), .Y(n54)
         );
  NOR2X2M U110 ( .A(DATA_SYNC[6]), .B(DATA_SYNC[2]), .Y(n60) );
  INVX2M U111 ( .A(DATA_SYNC[4]), .Y(n31) );
  INVX2M U112 ( .A(DATA_SYNC[6]), .Y(n29) );
  BUFX2M U113 ( .A(ALU_EN), .Y(GATE_EN) );
endmodule


module SYS_TOP_dft ( scan_clk, scan_rst, test_mode, SE, SI, SO, UART_CLK, 
        REF_CLK, RST_N, UART_RX_IN, UART_TX_O, parity_error, framing_error );
  input [3:0] SI;
  output [3:0] SO;
  input scan_clk, scan_rst, test_mode, SE, UART_CLK, REF_CLK, RST_N,
         UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_SCAN_CLK, UART_SCAN_CLK, RX_CLK, UART_RX_SCAN_CLK, TX_CLK,
         UART_TX_SCAN_CLK, RSTN_SCAN_RST, REF_SYNC_RST, SYNC_REF_SCAN_RST,
         UART_SYNC_RST, SYNC_UART_SCAN_RST, RX_data_valid, TX_Busy, F_EMPTY,
         _3_net_, ALU_CLK, Gate_EN, RX_data_valid_SYNC, FIFO_WR_INC,
         FIFO_RD_INC_PULSE, F_FULL, ALU_EN, ALU_OUT_VALID, REG_F_WrEn,
         REG_F_RdEn, n1, n2, n3, n4, n5, n6, n7, n9, n13, n14, n15, n16, n17,
         n18;
  wire   [7:0] UART_CONFIG;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] FIFO_RD_DATA;
  wire   [7:0] REG_3;
  wire   [3:0] RX_Div_Ratio;
  wire   [7:0] RX_P_DATA_SYNC;
  wire   [7:0] FIFO_WR_DATA;
  wire   [7:0] ALU_OP_A;
  wire   [7:0] ALU_OP_B;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [3:0] REG_F_Address;
  wire   [7:0] REG_F_WrData;
  wire   [7:0] REG_F_RdData;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign SO[2] = REG_3[1];

  INVX2M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(F_EMPTY), .Y(n1) );
  BUFX2M U6 ( .A(REG_F_Address[1]), .Y(n3) );
  BUFX2M U7 ( .A(REG_F_Address[0]), .Y(n2) );
  INVX4M U8 ( .A(n7), .Y(n6) );
  INVX2M U9 ( .A(SYNC_REF_SCAN_RST), .Y(n7) );
  INVX2M U10 ( .A(SYNC_UART_SCAN_RST), .Y(n5) );
  OR2X2M U11 ( .A(Gate_EN), .B(test_mode), .Y(_3_net_) );
  CLKBUFX40M U12 ( .A(framing_error), .Y(SO[0]) );
  mux2X1_0 U0_mux2X1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        REF_SCAN_CLK) );
  mux2X1_6 U1_mux2X1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(test_mode), 
        .OUT(UART_SCAN_CLK) );
  mux2X1_5 U2_mux2X1 ( .IN_0(RX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        UART_RX_SCAN_CLK) );
  mux2X1_4 U3_mux2X1 ( .IN_0(TX_CLK), .IN_1(scan_clk), .SEL(test_mode), .OUT(
        UART_TX_SCAN_CLK) );
  mux2X1_3 U4_mux2X1 ( .IN_0(RST_N), .IN_1(scan_rst), .SEL(test_mode), .OUT(
        RSTN_SCAN_RST) );
  mux2X1_2 U5_mux2X1 ( .IN_0(REF_SYNC_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_REF_SCAN_RST) );
  mux2X1_1 U6_mux2X1 ( .IN_0(UART_SYNC_RST), .IN_1(scan_rst), .SEL(test_mode), 
        .OUT(SYNC_UART_SCAN_RST) );
  RST_SYNC_NUM_STAGES2_test_0 RST_SYNC_1 ( .CLK(REF_SCAN_CLK), .RST(
        RSTN_SCAN_RST), .SYNC_RST(REF_SYNC_RST), .test_si(n18), .test_so(n17), 
        .test_se(SE) );
  RST_SYNC_NUM_STAGES2_test_1 RST_SYNC_2 ( .CLK(UART_SCAN_CLK), .RST(
        RSTN_SCAN_RST), .SYNC_RST(UART_SYNC_RST), .test_si(n17), .test_so(n16), 
        .test_se(SE) );
  UART_RX_data_wd8_RX_bit_count_wd3_prescale_wd6_TX_data_width8_test_1 U0_UART ( 
        .RST(n4), .PAR_EN(UART_CONFIG[0]), .PAR_TYP(UART_CONFIG[1]), .RX_CLK(
        UART_RX_SCAN_CLK), .TX_P_DATA(FIFO_RD_DATA), .TX_DATA_VALID(n1), 
        .TX_OUT(UART_TX_O), .TX_Busy(TX_Busy), .TX_CLK(UART_TX_SCAN_CLK), 
        .prescale(UART_CONFIG[7:2]), .RX_IN(UART_RX_IN), .RX_P_DATA(RX_P_DATA), 
        .RX_data_valid(RX_data_valid), .par_err(parity_error), .stp_err(
        framing_error), .test_si(n9), .test_se(SE) );
  ClkDiv_DIV_RATIO_WIDTH6_test_1 TX_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), 
        .i_rst_n(n4), .i_clk_en(1'b1), .i_div_ratio(REG_3[5:0]), .o_div_clk(
        TX_CLK), .test_si(n15), .test_so(n14), .test_se(SE) );
  ClkDiv_DIV_RATIO_WIDTH4_test_1 RX_ClkDiv ( .i_ref_clk(UART_SCAN_CLK), 
        .i_rst_n(n4), .i_clk_en(1'b1), .i_div_ratio(RX_Div_Ratio), .o_div_clk(
        RX_CLK), .test_si(n16), .test_so(n15), .test_se(SE) );
  RX_DIV_R_CALC_DIV_RATIO_WIDTH4_prescale_wd6 U0_RX_DIV_R_CALC ( .prescale(
        UART_CONFIG[7:2]), .RX_Div_Ratio(RX_Div_Ratio) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(_3_net_), .CLK(REF_SCAN_CLK), .GATED_CLK(
        ALU_CLK) );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8_test_1 U0_DATA_SYNC ( .CLK(REF_SCAN_CLK), 
        .RST(n6), .bus_enable(RX_data_valid), .Unsync_bus(RX_P_DATA), 
        .sync_bus(RX_P_DATA_SYNC), .enable_pulse(RX_data_valid_SYNC), 
        .test_si(ALU_OUT_VALID), .test_se(SE) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3_test_1 CTRL_2_TX_FIFO ( .R_CLK(
        UART_TX_SCAN_CLK), .R_RST(n4), .W_CLK(REF_SCAN_CLK), .W_RST(n6), 
        .W_INC(FIFO_WR_INC), .R_INC(FIFO_RD_INC_PULSE), .WR_DATA(FIFO_WR_DATA), 
        .RD_DATA(FIFO_RD_DATA), .FULL(F_FULL), .EMPTY(F_EMPTY), .test_si2(
        SI[2]), .test_si1(SI[3]), .test_so2(n18), .test_so1(SO[3]), .test_se(
        SE) );
  PULSE_GEN_test_1 U0_PULSE_GEN ( .CLK(UART_TX_SCAN_CLK), .RST(n4), .IN(
        TX_Busy), .OUT(FIFO_RD_INC_PULSE), .test_si(RX_P_DATA_SYNC[7]), 
        .test_so(n13), .test_se(SE) );
  ALU_op_size8_rslt_size16_fun_size4_test_1 U0_ALU ( .CLK(ALU_CLK), .RST(n6), 
        .ALU_EN(ALU_EN), .A(ALU_OP_A), .B(ALU_OP_B), .ALU_FUN(ALU_FUN), 
        .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VALID), .test_si(n14), .test_se(
        SE) );
  Reg_File_ADDR_WD4_DATA_WD8_test_1 U0_RegFile ( .CLK(REF_SCAN_CLK), .RST(n6), 
        .WrEn(REG_F_WrEn), .RdEn(REG_F_RdEn), .Address({REG_F_Address[3:2], n3, 
        n2}), .WrData(REG_F_WrData), .RdData(REG_F_RdData), .REG_0(ALU_OP_A), 
        .REG_1(ALU_OP_B), .REG_2(UART_CONFIG), .REG_3({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, REG_3[5:0]}), .test_si3(SI[0]), .test_si2(
        SI[1]), .test_si1(n13), .test_so1(SO[1]), .test_se(SE) );
  SYS_CNTRL_DATA_WD8_REG_ADDR_WD4_ALU_FUN_WD4_ALU_OUT_WD16_test_1 U0_SYS_CNTRL ( 
        .CLK(REF_SCAN_CLK), .RST(n6), .REG_RD_D(REG_F_RdData), .DATA_SYNC(
        RX_P_DATA_SYNC), .ALU_OUT(ALU_OUT), .FIFO_FULL(F_FULL), 
        .ALU_OUT_VALID(ALU_OUT_VALID), .VALID_SYNC(RX_data_valid_SYNC), 
        .REG_WR_D(REG_F_WrData), .FIFO_WR_D(FIFO_WR_DATA), .REG_ADDR(
        REG_F_Address), .ALU_FUN(ALU_FUN), .REG_WR_EN(REG_F_WrEn), .REG_RD_EN(
        REG_F_RdEn), .ALU_EN(ALU_EN), .GATE_EN(Gate_EN), .FIFO_WR_INC(
        FIFO_WR_INC), .test_so(n9), .test_se(SE) );
endmodule

