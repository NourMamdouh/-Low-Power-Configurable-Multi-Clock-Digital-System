/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : K-2015.06
// Date      : Thu Sep 21 08:07:06 2023
/////////////////////////////////////////////////////////////


module RST_SYNC_NUM_STAGES2_0 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sychronizer[1] ;

  DFFRQX2M \sychronizer_reg[0]  ( .D(\sychronizer[1] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \sychronizer_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \sychronizer[1] ) );
endmodule


module RST_SYNC_NUM_STAGES2_1 ( CLK, RST, SYNC_RST );
  input CLK, RST;
  output SYNC_RST;
  wire   \sychronizer[1] ;

  DFFRQX2M \sychronizer_reg[0]  ( .D(\sychronizer[1] ), .CK(CLK), .RN(RST), 
        .Q(SYNC_RST) );
  DFFRQX2M \sychronizer_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(
        \sychronizer[1] ) );
endmodule


module edge_bit_counter_prescale_wd6_bit_count_wd3 ( CLK, RST, prescale, 
        edge_cnt_en, bit_cnt_en, edge_count, bit_count, edge_count_done );
  input [5:0] prescale;
  output [5:0] edge_count;
  output [2:0] bit_count;
  input CLK, RST, edge_cnt_en, bit_cnt_en;
  output edge_count_done;
  wire   N8, N9, N10, N11, N13, N14, N15, N16, N17, N18, edge_count_done_comb,
         N28, N29, N30, N31, N32, N33, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, \sub_58/carry[5] , \sub_58/carry[4] , \sub_58/carry[3] ,
         \add_23/carry[5] , \add_23/carry[4] , \add_23/carry[3] ,
         \add_23/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n18, n19, n20, n21,
         n22, n23, n24;
  assign N28 = prescale[0];

  DFFRQX2M \bit_count_reg[2]  ( .D(n15), .CK(CLK), .RN(RST), .Q(bit_count[2])
         );
  DFFRQX2M edge_count_done_reg ( .D(edge_count_done_comb), .CK(CLK), .RN(RST), 
        .Q(edge_count_done) );
  DFFRQX2M \bit_count_reg[1]  ( .D(n16), .CK(CLK), .RN(RST), .Q(bit_count[1])
         );
  DFFRQX2M \bit_count_reg[0]  ( .D(n17), .CK(CLK), .RN(RST), .Q(bit_count[0])
         );
  DFFRQX2M \edge_count_reg[5]  ( .D(N18), .CK(CLK), .RN(RST), .Q(edge_count[5]) );
  DFFRQX2M \edge_count_reg[0]  ( .D(N13), .CK(CLK), .RN(RST), .Q(edge_count[0]) );
  DFFRQX2M \edge_count_reg[2]  ( .D(N15), .CK(CLK), .RN(RST), .Q(edge_count[2]) );
  DFFRQX2M \edge_count_reg[4]  ( .D(N17), .CK(CLK), .RN(RST), .Q(edge_count[4]) );
  DFFRQX2M \edge_count_reg[1]  ( .D(N14), .CK(CLK), .RN(RST), .Q(edge_count[1]) );
  DFFRQX2M \edge_count_reg[3]  ( .D(N16), .CK(CLK), .RN(RST), .Q(edge_count[3]) );
  NOR2X2M U3 ( .A(prescale[5]), .B(\sub_58/carry[5] ), .Y(n1) );
  INVX2M U4 ( .A(bit_cnt_en), .Y(n24) );
  NOR2BX2M U5 ( .AN(N11), .B(n14), .Y(N17) );
  NOR2BX2M U6 ( .AN(N10), .B(n14), .Y(N16) );
  NOR2BX2M U7 ( .AN(N9), .B(n14), .Y(N15) );
  NOR2BX2M U8 ( .AN(N8), .B(n14), .Y(N14) );
  OAI32X1M U9 ( .A0(n11), .A1(bit_count[1]), .A2(n12), .B0(n13), .B1(n23), .Y(
        n16) );
  INVX2M U10 ( .A(bit_count[1]), .Y(n23) );
  NAND2X2M U11 ( .A(bit_cnt_en), .B(bit_count[0]), .Y(n11) );
  AOI21X2M U12 ( .A0(bit_cnt_en), .A1(n22), .B0(n12), .Y(n13) );
  NAND2BX2M U13 ( .AN(edge_count_done), .B(edge_cnt_en), .Y(n14) );
  NOR2X2M U14 ( .A(n24), .B(edge_count_done), .Y(n12) );
  NOR2X2M U15 ( .A(n2), .B(n14), .Y(N18) );
  XNOR2X2M U16 ( .A(\add_23/carry[5] ), .B(edge_count[5]), .Y(n2) );
  NOR2X2M U17 ( .A(edge_count[0]), .B(n14), .Y(N13) );
  NOR2X2M U18 ( .A(n9), .B(n24), .Y(n15) );
  CLKXOR2X2M U19 ( .A(n10), .B(bit_count[2]), .Y(n9) );
  NAND3X2M U20 ( .A(bit_count[1]), .B(bit_count[0]), .C(edge_count_done), .Y(
        n10) );
  ADDHX1M U21 ( .A(edge_count[3]), .B(\add_23/carry[3] ), .CO(
        \add_23/carry[4] ), .S(N10) );
  ADDHX1M U22 ( .A(edge_count[1]), .B(edge_count[0]), .CO(\add_23/carry[2] ), 
        .S(N8) );
  ADDHX1M U23 ( .A(edge_count[2]), .B(\add_23/carry[2] ), .CO(
        \add_23/carry[3] ), .S(N9) );
  OAI32X1M U24 ( .A0(n24), .A1(bit_count[0]), .A2(n12), .B0(n22), .B1(n21), 
        .Y(n17) );
  INVX2M U25 ( .A(n12), .Y(n21) );
  ADDHX1M U26 ( .A(edge_count[4]), .B(\add_23/carry[4] ), .CO(
        \add_23/carry[5] ), .S(N11) );
  INVX2M U27 ( .A(bit_count[0]), .Y(n22) );
  INVX2M U28 ( .A(prescale[1]), .Y(N29) );
  XNOR2X1M U29 ( .A(\sub_58/carry[5] ), .B(prescale[5]), .Y(N33) );
  OR2X1M U30 ( .A(prescale[4]), .B(\sub_58/carry[4] ), .Y(\sub_58/carry[5] )
         );
  XNOR2X1M U31 ( .A(\sub_58/carry[4] ), .B(prescale[4]), .Y(N32) );
  OR2X1M U32 ( .A(prescale[3]), .B(\sub_58/carry[3] ), .Y(\sub_58/carry[4] )
         );
  XNOR2X1M U33 ( .A(\sub_58/carry[3] ), .B(prescale[3]), .Y(N31) );
  OR2X1M U34 ( .A(prescale[2]), .B(prescale[1]), .Y(\sub_58/carry[3] ) );
  XNOR2X1M U35 ( .A(prescale[1]), .B(prescale[2]), .Y(N30) );
  NOR2BX1M U36 ( .AN(N28), .B(edge_count[0]), .Y(n3) );
  OAI2B2X1M U37 ( .A1N(edge_count[1]), .A0(n3), .B0(N29), .B1(n3), .Y(n7) );
  XNOR2X1M U38 ( .A(N33), .B(edge_count[5]), .Y(n6) );
  NOR2BX1M U39 ( .AN(edge_count[0]), .B(N28), .Y(n4) );
  OAI2B2X1M U40 ( .A1N(N29), .A0(n4), .B0(edge_count[1]), .B1(n4), .Y(n5) );
  NAND4BX1M U41 ( .AN(n1), .B(n7), .C(n6), .D(n5), .Y(n20) );
  CLKXOR2X2M U42 ( .A(N32), .B(edge_count[4]), .Y(n19) );
  CLKXOR2X2M U43 ( .A(N30), .B(edge_count[2]), .Y(n18) );
  CLKXOR2X2M U44 ( .A(N31), .B(edge_count[3]), .Y(n8) );
  NOR4X1M U45 ( .A(n20), .B(n19), .C(n18), .D(n8), .Y(edge_count_done_comb) );
endmodule


module data_smapling_prescale_wd6 ( CLK, RST, prescale, data_samp_en, RX_IN, 
        edge_count, sampled_bit, sampling_done );
  input [5:0] prescale;
  input [5:0] edge_count;
  input CLK, RST, data_samp_en, RX_IN;
  output sampled_bit, sampling_done;
  wire   N29, N30, N31, N32, N33, n26, n27, n28, \add_45/carry[4] ,
         \add_45/carry[3] , \add_45/carry[2] , \add_65/carry[4] ,
         \add_65/carry[3] , \add_65/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57;
  wire   [2:0] samples;
  wire   [4:0] left_middle;
  wire   [4:0] middle;
  wire   [4:0] right_middle;

  DFFRQX2M \samples_reg[1]  ( .D(n27), .CK(CLK), .RN(RST), .Q(samples[1]) );
  DFFRQX2M \samples_reg[0]  ( .D(n26), .CK(CLK), .RN(RST), .Q(samples[0]) );
  DFFRQX2M \samples_reg[2]  ( .D(n28), .CK(CLK), .RN(RST), .Q(samples[2]) );
  ADDHX1M U3 ( .A(right_middle[2]), .B(\add_45/carry[2] ), .CO(
        \add_45/carry[3] ), .S(N30) );
  INVX2M U4 ( .A(middle[2]), .Y(n8) );
  ADDHX1M U5 ( .A(middle[2]), .B(\add_65/carry[2] ), .CO(\add_65/carry[3] ), 
        .S(right_middle[2]) );
  ADDHX1M U6 ( .A(right_middle[1]), .B(prescale[1]), .CO(\add_45/carry[2] ), 
        .S(N29) );
  ADDHX1M U7 ( .A(right_middle[3]), .B(\add_45/carry[3] ), .CO(
        \add_45/carry[4] ), .S(N31) );
  ADDHX1M U8 ( .A(right_middle[4]), .B(\add_45/carry[4] ), .CO(N33), .S(N32)
         );
  ADDHX1M U9 ( .A(middle[1]), .B(middle[0]), .CO(\add_65/carry[2] ), .S(
        right_middle[1]) );
  ADDHX1M U10 ( .A(middle[3]), .B(\add_65/carry[3] ), .CO(\add_65/carry[4] ), 
        .S(right_middle[3]) );
  INVX2M U11 ( .A(prescale[3]), .Y(n4) );
  CLKINVX1M U12 ( .A(prescale[1]), .Y(middle[0]) );
  NOR2X1M U13 ( .A(prescale[2]), .B(prescale[1]), .Y(n1) );
  AO21XLM U14 ( .A0(prescale[1]), .A1(prescale[2]), .B0(n1), .Y(middle[1]) );
  CLKNAND2X2M U15 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U16 ( .A0(n1), .A1(n4), .B0(n2), .Y(middle[2]) );
  XNOR2X1M U17 ( .A(prescale[4]), .B(n2), .Y(middle[3]) );
  NOR2X1M U18 ( .A(prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U19 ( .A(prescale[5]), .B(n3), .Y(middle[4]) );
  CLKXOR2X2M U20 ( .A(\add_65/carry[4] ), .B(middle[4]), .Y(right_middle[4])
         );
  NOR2X1M U21 ( .A(middle[1]), .B(middle[0]), .Y(n5) );
  AO21XLM U22 ( .A0(middle[0]), .A1(middle[1]), .B0(n5), .Y(left_middle[1]) );
  CLKNAND2X2M U23 ( .A(n5), .B(n8), .Y(n6) );
  OAI21X1M U24 ( .A0(n5), .A1(n8), .B0(n6), .Y(left_middle[2]) );
  XNOR2X1M U25 ( .A(middle[3]), .B(n6), .Y(left_middle[3]) );
  NOR2X1M U26 ( .A(middle[3]), .B(n6), .Y(n7) );
  CLKXOR2X2M U27 ( .A(middle[4]), .B(n7), .Y(left_middle[4]) );
  MXI2X1M U28 ( .A(n9), .B(n10), .S0(n11), .Y(sampling_done) );
  NAND4X1M U29 ( .A(n12), .B(n13), .C(n14), .D(n15), .Y(n9) );
  NOR3X1M U30 ( .A(n16), .B(n17), .C(n18), .Y(n15) );
  CLKXOR2X2M U31 ( .A(edge_count[4]), .B(N32), .Y(n18) );
  CLKXOR2X2M U32 ( .A(edge_count[1]), .B(N29), .Y(n17) );
  CLKXOR2X2M U33 ( .A(edge_count[0]), .B(middle[0]), .Y(n16) );
  CLKXOR2X2M U34 ( .A(n19), .B(N30), .Y(n14) );
  XNOR2X1M U35 ( .A(edge_count[3]), .B(N31), .Y(n13) );
  CLKXOR2X2M U36 ( .A(n20), .B(N33), .Y(n12) );
  OAI31X1M U37 ( .A0(n21), .A1(n11), .A2(n22), .B0(n23), .Y(sampled_bit) );
  OAI31X1M U38 ( .A0(n11), .A1(samples[2]), .A2(samples[0]), .B0(samples[1]), 
        .Y(n23) );
  MXI2X1M U39 ( .A(n21), .B(n24), .S0(n25), .Y(n28) );
  NOR4X1M U40 ( .A(n29), .B(n30), .C(n11), .D(n31), .Y(n25) );
  NOR4X1M U41 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(n31) );
  NOR4X1M U42 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n30) );
  OR2X1M U43 ( .A(n10), .B(n40), .Y(n29) );
  NAND4X1M U44 ( .A(n41), .B(n42), .C(n43), .D(n44), .Y(n10) );
  NOR3X1M U45 ( .A(n45), .B(edge_count[5]), .C(n46), .Y(n44) );
  CLKXOR2X2M U46 ( .A(prescale[1]), .B(edge_count[0]), .Y(n46) );
  CLKXOR2X2M U47 ( .A(right_middle[4]), .B(edge_count[4]), .Y(n45) );
  CLKXOR2X2M U48 ( .A(n19), .B(right_middle[2]), .Y(n43) );
  XNOR2X1M U49 ( .A(edge_count[3]), .B(right_middle[3]), .Y(n42) );
  XNOR2X1M U50 ( .A(edge_count[1]), .B(right_middle[1]), .Y(n41) );
  CLKINVX1M U51 ( .A(samples[2]), .Y(n21) );
  CLKMX2X2M U52 ( .A(samples[1]), .B(RX_IN), .S0(n47), .Y(n27) );
  NOR4X1M U53 ( .A(n48), .B(n33), .C(n49), .D(n32), .Y(n47) );
  CLKXOR2X2M U54 ( .A(edge_count[4]), .B(middle[4]), .Y(n32) );
  CLKXOR2X2M U55 ( .A(edge_count[3]), .B(middle[3]), .Y(n33) );
  OR3X1M U56 ( .A(n35), .B(n34), .C(n40), .Y(n48) );
  NAND3X1M U57 ( .A(n50), .B(n20), .C(n51), .Y(n34) );
  XNOR2X1M U58 ( .A(edge_count[0]), .B(middle[0]), .Y(n51) );
  XNOR2X1M U59 ( .A(edge_count[1]), .B(middle[1]), .Y(n50) );
  XNOR2X1M U60 ( .A(n19), .B(middle[2]), .Y(n35) );
  CLKINVX1M U61 ( .A(edge_count[2]), .Y(n19) );
  MXI2X1M U62 ( .A(n22), .B(n24), .S0(n52), .Y(n26) );
  NOR2BX1M U63 ( .AN(n49), .B(n40), .Y(n52) );
  CLKINVX1M U64 ( .A(data_samp_en), .Y(n40) );
  NOR4BX1M U65 ( .AN(n53), .B(n36), .C(n11), .D(n37), .Y(n49) );
  CLKXOR2X2M U66 ( .A(edge_count[3]), .B(left_middle[3]), .Y(n37) );
  NOR4BX1M U67 ( .AN(prescale[2]), .B(prescale[1]), .C(prescale[0]), .D(n54), 
        .Y(n11) );
  OR3X1M U68 ( .A(prescale[3]), .B(prescale[5]), .C(prescale[4]), .Y(n54) );
  XNOR2X1M U69 ( .A(n55), .B(left_middle[4]), .Y(n36) );
  CLKINVX1M U70 ( .A(edge_count[4]), .Y(n55) );
  NOR2X1M U71 ( .A(n38), .B(n39), .Y(n53) );
  CLKXOR2X2M U72 ( .A(edge_count[2]), .B(left_middle[2]), .Y(n39) );
  NAND3X1M U73 ( .A(n56), .B(n20), .C(n57), .Y(n38) );
  XNOR2X1M U74 ( .A(edge_count[0]), .B(prescale[1]), .Y(n57) );
  CLKINVX1M U75 ( .A(edge_count[5]), .Y(n20) );
  XNOR2X1M U76 ( .A(edge_count[1]), .B(left_middle[1]), .Y(n56) );
  CLKINVX1M U77 ( .A(RX_IN), .Y(n24) );
  CLKINVX1M U78 ( .A(samples[0]), .Y(n22) );
endmodule


module deserializer_data_wd8_bit_count_wd3 ( CLK, RST, bit_count, sampled_bit, 
        enable, P_DATA );
  input [2:0] bit_count;
  output [7:0] P_DATA;
  input CLK, RST, sampled_bit, enable;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n1, n2;

  DFFRQX2M \P_DATA_reg[5]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n23), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n19), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  DFFRQX2M \P_DATA_reg[7]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n22), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n21), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  NAND2BXLM U2 ( .AN(n15), .B(sampled_bit), .Y(n13) );
  NAND2BXLM U3 ( .AN(n6), .B(sampled_bit), .Y(n4) );
  NAND2X2M U4 ( .A(n2), .B(n1), .Y(n3) );
  OAI21X2M U5 ( .A0(n4), .A1(n7), .B0(n8), .Y(n20) );
  OAI21X2M U6 ( .A0(n6), .A1(n7), .B0(P_DATA[1]), .Y(n8) );
  OAI21X2M U7 ( .A0(n4), .A1(n9), .B0(n10), .Y(n21) );
  OAI21X2M U8 ( .A0(n6), .A1(n9), .B0(P_DATA[2]), .Y(n10) );
  OAI21X2M U9 ( .A0(n4), .A1(n11), .B0(n12), .Y(n22) );
  OAI21X2M U10 ( .A0(n6), .A1(n11), .B0(P_DATA[3]), .Y(n12) );
  OAI21X2M U11 ( .A0(n3), .A1(n13), .B0(n14), .Y(n23) );
  OAI21X2M U12 ( .A0(n3), .A1(n15), .B0(P_DATA[4]), .Y(n14) );
  OAI21X2M U13 ( .A0(n7), .A1(n13), .B0(n16), .Y(n24) );
  OAI21X2M U14 ( .A0(n7), .A1(n15), .B0(P_DATA[5]), .Y(n16) );
  OAI21X2M U15 ( .A0(n9), .A1(n13), .B0(n17), .Y(n25) );
  OAI21X2M U16 ( .A0(n9), .A1(n15), .B0(P_DATA[6]), .Y(n17) );
  OAI21X2M U17 ( .A0(n11), .A1(n13), .B0(n18), .Y(n26) );
  OAI21X2M U18 ( .A0(n11), .A1(n15), .B0(P_DATA[7]), .Y(n18) );
  OAI21X2M U19 ( .A0(n3), .A1(n4), .B0(n5), .Y(n19) );
  OAI21X2M U20 ( .A0(n6), .A1(n3), .B0(P_DATA[0]), .Y(n5) );
  NAND2BX2M U21 ( .AN(bit_count[2]), .B(enable), .Y(n6) );
  NAND2X2M U22 ( .A(bit_count[2]), .B(enable), .Y(n15) );
  NAND2X2M U23 ( .A(bit_count[0]), .B(n2), .Y(n7) );
  NAND2X2M U24 ( .A(bit_count[1]), .B(n1), .Y(n9) );
  NAND2X2M U25 ( .A(bit_count[1]), .B(bit_count[0]), .Y(n11) );
  INVX2M U26 ( .A(bit_count[0]), .Y(n1) );
  INVX2M U27 ( .A(bit_count[1]), .Y(n2) );
endmodule


module par_chk_data_wd8 ( CLK, RST, P_DATA, PAR_TYP, sampled_bit, enable, 
        par_err );
  input [7:0] P_DATA;
  input CLK, RST, PAR_TYP, sampled_bit, enable;
  output par_err;
  wire   n1, n3, n4, n5, n6, n7, n8, n2;

  DFFRQX2M par_err_reg ( .D(n8), .CK(CLK), .RN(RST), .Q(par_err) );
  XNOR2XLM U2 ( .A(sampled_bit), .B(PAR_TYP), .Y(n5) );
  OAI2BB2X1M U3 ( .B0(n1), .B1(n2), .A0N(par_err), .A1N(n2), .Y(n8) );
  INVX2M U4 ( .A(enable), .Y(n2) );
  XOR3XLM U5 ( .A(n3), .B(n4), .C(n5), .Y(n1) );
  XOR3XLM U6 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n4) );
  XNOR2X2M U7 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n7), .Y(n3) );
  XNOR2X2M U9 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n7) );
endmodule


module stp_chk ( CLK, RST, sampled_bit, enable, stp_err );
  input CLK, RST, sampled_bit, enable;
  output stp_err;
  wire   n2, n1;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(stp_err) );
  OAI2BB2XLM U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  INVX2M U3 ( .A(enable), .Y(n1) );
endmodule


module UART_RX_DATAPATH_data_wd8_bit_count_wd3_prescale_wd6 ( CLK, RST, 
        prescale, RX_IN, PAR_TYP, edge_cnt_en, bit_cnt_en, data_samp_en, 
        deser_en, par_chk_en, stp_chk_en, bit_count, sampled_bit, 
        sampling_done, edge_count_done, par_err, stp_err, P_DATA );
  input [5:0] prescale;
  output [2:0] bit_count;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, edge_cnt_en, bit_cnt_en, data_samp_en,
         deser_en, par_chk_en, stp_chk_en;
  output sampled_bit, sampling_done, edge_count_done, par_err, stp_err;
  wire   n1, n2;
  wire   [5:0] edge_count;

  edge_bit_counter_prescale_wd6_bit_count_wd3 U0_edge_bit_counter ( .CLK(CLK), 
        .RST(n1), .prescale(prescale), .edge_cnt_en(edge_cnt_en), .bit_cnt_en(
        bit_cnt_en), .edge_count(edge_count), .bit_count(bit_count), 
        .edge_count_done(edge_count_done) );
  data_smapling_prescale_wd6 U0_data_smapling ( .CLK(CLK), .RST(n1), 
        .prescale(prescale), .data_samp_en(data_samp_en), .RX_IN(RX_IN), 
        .edge_count(edge_count), .sampled_bit(sampled_bit), .sampling_done(
        sampling_done) );
  deserializer_data_wd8_bit_count_wd3 U0_deserializer ( .CLK(CLK), .RST(n1), 
        .bit_count(bit_count), .sampled_bit(sampled_bit), .enable(deser_en), 
        .P_DATA(P_DATA) );
  par_chk_data_wd8 U0_par_chk ( .CLK(CLK), .RST(n1), .P_DATA(P_DATA), 
        .PAR_TYP(PAR_TYP), .sampled_bit(sampled_bit), .enable(par_chk_en), 
        .par_err(par_err) );
  stp_chk U0_stp_chk ( .CLK(CLK), .RST(n1), .sampled_bit(sampled_bit), 
        .enable(stp_chk_en), .stp_err(stp_err) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART_RX_fsm_data_wd8_bit_count_wd3_prescale_wd6 ( CLK, RST, RX_IN, 
        PAR_EN, bit_count, sampled_bit, sampling_done, edge_count_done, 
        par_err, stp_err, data_valid, edge_cnt_en, bit_cnt_en, data_samp_en, 
        deser_en, par_chk_en, stp_chk_en );
  input [2:0] bit_count;
  input CLK, RST, RX_IN, PAR_EN, sampled_bit, sampling_done, edge_count_done,
         par_err, stp_err;
  output data_valid, edge_cnt_en, bit_cnt_en, data_samp_en, deser_en,
         par_chk_en, stp_chk_en;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n2, n3, n4, n5,
         n6, n7, n8, n9, n10;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  NOR3X2M U3 ( .A(n7), .B(current_state[2]), .C(n6), .Y(bit_cnt_en) );
  INVX2M U4 ( .A(n18), .Y(n2) );
  NOR2X2M U5 ( .A(n4), .B(n5), .Y(deser_en) );
  NAND2X2M U6 ( .A(sampled_bit), .B(sampling_done), .Y(n18) );
  INVX2M U7 ( .A(sampling_done), .Y(n4) );
  INVX2M U8 ( .A(bit_cnt_en), .Y(n5) );
  NAND2X2M U9 ( .A(n13), .B(n9), .Y(n11) );
  AND4X2M U10 ( .A(n21), .B(n13), .C(edge_count_done), .D(current_state[2]), 
        .Y(data_valid) );
  AOI21X2M U11 ( .A0(par_err), .A1(PAR_EN), .B0(stp_err), .Y(n21) );
  OAI21BX1M U12 ( .A0(n14), .A1(n5), .B0N(n19), .Y(next_state[0]) );
  OAI33X2M U13 ( .A0(n20), .A1(current_state[0]), .A2(RX_IN), .B0(n8), .B1(n2), 
        .B2(n6), .Y(n19) );
  AOI31X2M U14 ( .A0(current_state[2]), .A1(current_state[1]), .A2(
        edge_count_done), .B0(n17), .Y(n20) );
  INVX2M U15 ( .A(n17), .Y(n8) );
  NOR2X2M U16 ( .A(n4), .B(n11), .Y(par_chk_en) );
  NAND4X2M U17 ( .A(n15), .B(n5), .C(n11), .D(n16), .Y(next_state[1]) );
  NAND2X2M U18 ( .A(n13), .B(n3), .Y(n15) );
  NAND4X2M U19 ( .A(n17), .B(edge_count_done), .C(current_state[0]), .D(n18), 
        .Y(n16) );
  NOR4X1M U20 ( .A(current_state[0]), .B(n7), .C(n9), .D(n4), .Y(stp_chk_en)
         );
  INVX2M U21 ( .A(current_state[0]), .Y(n6) );
  NOR2X2M U22 ( .A(n7), .B(current_state[0]), .Y(n13) );
  NOR2X2M U23 ( .A(current_state[1]), .B(current_state[2]), .Y(n17) );
  OAI21BX1M U24 ( .A0(current_state[2]), .A1(n6), .B0N(n13), .Y(data_samp_en)
         );
  OAI21X2M U25 ( .A0(n11), .A1(n3), .B0(n12), .Y(next_state[2]) );
  AOI33X2M U26 ( .A0(current_state[2]), .A1(n3), .A2(n13), .B0(n14), .B1(n10), 
        .B2(bit_cnt_en), .Y(n12) );
  INVX2M U27 ( .A(PAR_EN), .Y(n10) );
  INVX2M U28 ( .A(current_state[2]), .Y(n9) );
  INVX2M U29 ( .A(edge_count_done), .Y(n3) );
  INVX2M U30 ( .A(current_state[1]), .Y(n7) );
  AND4X2M U31 ( .A(edge_count_done), .B(bit_count[2]), .C(bit_count[1]), .D(
        bit_count[0]), .Y(n14) );
  BUFX2M U32 ( .A(data_samp_en), .Y(edge_cnt_en) );
endmodule


module UART_RX_RX_data_wd8_RX_bit_count_wd3_prescale_wd6 ( CLK, RST, prescale, 
        RX_IN, PAR_TYP, PAR_EN, P_DATA, data_valid, par_err, stp_err );
  input [5:0] prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_TYP, PAR_EN;
  output data_valid, par_err, stp_err;
  wire   edge_cnt_en, bit_cnt_en, data_samp_en, deser_en, par_chk_en,
         stp_chk_en, sampled_bit, sampling_done, edge_count_done, n1, n2;
  wire   [2:0] bit_count;

  UART_RX_DATAPATH_data_wd8_bit_count_wd3_prescale_wd6 U0_UART_RX_DATAPATH ( 
        .CLK(CLK), .RST(n1), .prescale(prescale), .RX_IN(RX_IN), .PAR_TYP(
        PAR_TYP), .edge_cnt_en(edge_cnt_en), .bit_cnt_en(bit_cnt_en), 
        .data_samp_en(data_samp_en), .deser_en(deser_en), .par_chk_en(
        par_chk_en), .stp_chk_en(stp_chk_en), .bit_count(bit_count), 
        .sampled_bit(sampled_bit), .sampling_done(sampling_done), 
        .edge_count_done(edge_count_done), .par_err(par_err), .stp_err(stp_err), .P_DATA(P_DATA) );
  UART_RX_fsm_data_wd8_bit_count_wd3_prescale_wd6 U0_UART_RX_fsm ( .CLK(CLK), 
        .RST(n1), .RX_IN(RX_IN), .PAR_EN(PAR_EN), .bit_count(bit_count), 
        .sampled_bit(sampled_bit), .sampling_done(sampling_done), 
        .edge_count_done(edge_count_done), .par_err(par_err), .stp_err(stp_err), .data_valid(data_valid), .edge_cnt_en(edge_cnt_en), .bit_cnt_en(bit_cnt_en), 
        .data_samp_en(data_samp_en), .deser_en(deser_en), .par_chk_en(
        par_chk_en), .stp_chk_en(stp_chk_en) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module serializer_width8 ( CLK, RST, P_DATA, DATA_VALID, ser_en, load_en, 
        ser_data, ser_done );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, ser_en, load_en;
  output ser_data, ser_done;
  wire   N2, N3, N4, N12, N13, N14, n1, n2, n4, n9, n10, n11, n12, n13, n14,
         n15, n16, n3, n5, n6, n7, n8, n17, n18;
  wire   [7:0] P_DATA_reg;

  DFFRQX2M \P_DATA_reg_reg[5]  ( .D(n14), .CK(CLK), .RN(RST), .Q(P_DATA_reg[5]) );
  DFFRQX2M \P_DATA_reg_reg[1]  ( .D(n10), .CK(CLK), .RN(RST), .Q(P_DATA_reg[1]) );
  DFFRQX2M \P_DATA_reg_reg[7]  ( .D(n16), .CK(CLK), .RN(RST), .Q(P_DATA_reg[7]) );
  DFFRQX2M \P_DATA_reg_reg[3]  ( .D(n12), .CK(CLK), .RN(RST), .Q(P_DATA_reg[3]) );
  DFFRQX2M \P_DATA_reg_reg[6]  ( .D(n15), .CK(CLK), .RN(RST), .Q(P_DATA_reg[6]) );
  DFFRQX2M \P_DATA_reg_reg[2]  ( .D(n11), .CK(CLK), .RN(RST), .Q(P_DATA_reg[2]) );
  DFFRQX2M \P_DATA_reg_reg[4]  ( .D(n13), .CK(CLK), .RN(RST), .Q(P_DATA_reg[4]) );
  DFFRQX2M \P_DATA_reg_reg[0]  ( .D(n9), .CK(CLK), .RN(RST), .Q(P_DATA_reg[0])
         );
  DFFRQX2M \count_reg[1]  ( .D(N13), .CK(CLK), .RN(RST), .Q(N3) );
  DFFRQX2M \count_reg[2]  ( .D(N14), .CK(CLK), .RN(RST), .Q(N4) );
  DFFRQX2M \count_reg[0]  ( .D(N12), .CK(CLK), .RN(RST), .Q(N2) );
  INVX2M U3 ( .A(n2), .Y(n18) );
  INVX2M U4 ( .A(ser_en), .Y(n17) );
  NAND2X2M U5 ( .A(load_en), .B(DATA_VALID), .Y(n2) );
  AOI211X2M U6 ( .A0(n6), .A1(n7), .B0(n17), .C0(n1), .Y(N13) );
  NOR2X2M U7 ( .A(n7), .B(n6), .Y(n1) );
  MX2X2M U8 ( .A(n5), .B(n3), .S0(N4), .Y(ser_data) );
  MX4X1M U9 ( .A(P_DATA_reg[4]), .B(P_DATA_reg[5]), .C(P_DATA_reg[6]), .D(
        P_DATA_reg[7]), .S0(N2), .S1(N3), .Y(n3) );
  MX4X1M U10 ( .A(P_DATA_reg[0]), .B(P_DATA_reg[1]), .C(P_DATA_reg[2]), .D(
        P_DATA_reg[3]), .S0(N2), .S1(N3), .Y(n5) );
  AO22X1M U11 ( .A0(P_DATA_reg[0]), .A1(n2), .B0(P_DATA[0]), .B1(n18), .Y(n9)
         );
  AO22X1M U12 ( .A0(P_DATA_reg[1]), .A1(n2), .B0(P_DATA[1]), .B1(n18), .Y(n10)
         );
  AO22X1M U13 ( .A0(P_DATA_reg[2]), .A1(n2), .B0(P_DATA[2]), .B1(n18), .Y(n11)
         );
  AO22X1M U14 ( .A0(P_DATA_reg[3]), .A1(n2), .B0(P_DATA[3]), .B1(n18), .Y(n12)
         );
  AO22X1M U15 ( .A0(P_DATA_reg[4]), .A1(n2), .B0(P_DATA[4]), .B1(n18), .Y(n13)
         );
  AO22X1M U16 ( .A0(P_DATA_reg[5]), .A1(n2), .B0(P_DATA[5]), .B1(n18), .Y(n14)
         );
  AO22X1M U17 ( .A0(P_DATA_reg[6]), .A1(n2), .B0(P_DATA[6]), .B1(n18), .Y(n15)
         );
  AO22X1M U18 ( .A0(P_DATA_reg[7]), .A1(n2), .B0(P_DATA[7]), .B1(n18), .Y(n16)
         );
  OAI2BB2X1M U19 ( .B0(n4), .B1(n17), .A0N(N4), .A1N(N12), .Y(N14) );
  AOI22X1M U20 ( .A0(n1), .A1(n8), .B0(N4), .B1(n7), .Y(n4) );
  INVX2M U21 ( .A(N4), .Y(n8) );
  NOR2X2M U22 ( .A(n17), .B(N2), .Y(N12) );
  INVX2M U23 ( .A(N2), .Y(n6) );
  INVX2M U24 ( .A(N3), .Y(n7) );
  AND2X2M U25 ( .A(n1), .B(N4), .Y(ser_done) );
endmodule


module parity_calc_width8 ( CLK, RST, P_DATA, DATA_VALID, load_en, PAR_TYP, 
        PAR_EN, par_bit );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, load_en, PAR_TYP, PAR_EN;
  output par_bit;
  wire   n1, n2, n3, n4, n5, n6, n7;

  DFFRQX2M par_bit_reg ( .D(n7), .CK(CLK), .RN(RST), .Q(par_bit) );
  XOR3XLM U2 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(par_bit), .A1N(n2), .Y(n7) );
  NAND3X2M U6 ( .A(PAR_EN), .B(DATA_VALID), .C(load_en), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(PAR_TYP), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n5), .Y(n4) );
endmodule


module UART_TX_DATA_PATH_width8 ( CLK, RST, P_DATA, DATA_VALID, PAR_EN, 
        PAR_TYP, ser_en, load_en, mux_sel, ser_done, TX_OUT );
  input [7:0] P_DATA;
  input [1:0] mux_sel;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP, ser_en, load_en;
  output ser_done, TX_OUT;
  wire   n5, ser_data, par_bit, n2, n3, n4;

  serializer_width8 SERIAL_BLOCK ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .DATA_VALID(DATA_VALID), .ser_en(ser_en), .load_en(load_en), 
        .ser_data(ser_data), .ser_done(ser_done) );
  parity_calc_width8 PARITY_BLOCK ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .DATA_VALID(DATA_VALID), .load_en(load_en), .PAR_TYP(PAR_TYP), 
        .PAR_EN(PAR_EN), .par_bit(par_bit) );
  NAND3X2M U3 ( .A(mux_sel[0]), .B(n4), .C(ser_data), .Y(n3) );
  CLKBUFX8M U4 ( .A(n5), .Y(TX_OUT) );
  CLKINVX1M U5 ( .A(mux_sel[1]), .Y(n4) );
  OAI21X2M U6 ( .A0(n2), .A1(n4), .B0(n3), .Y(n5) );
  NOR2BX2M U7 ( .AN(mux_sel[0]), .B(par_bit), .Y(n2) );
endmodule


module UART_TX_fsm ( CLK, RST, DATA_VALID, ser_done, PAR_EN, mux_sel, ser_en, 
        load_en, Busy );
  output [1:0] mux_sel;
  input CLK, RST, DATA_VALID, ser_done, PAR_EN;
  output ser_en, load_en, Busy;
  wire   n5, n6, n7, n8, n9, n10, n11, n1, n2, n3;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  OAI32X1M U3 ( .A0(current_state[0]), .A1(current_state[2]), .A2(
        current_state[1]), .B0(n9), .B1(n2), .Y(load_en) );
  INVX2M U4 ( .A(n5), .Y(ser_en) );
  INVX2M U5 ( .A(n7), .Y(mux_sel[0]) );
  NAND2BX2M U6 ( .AN(n7), .B(n8), .Y(n5) );
  OAI21X2M U7 ( .A0(current_state[2]), .A1(current_state[0]), .B0(n9), .Y(
        mux_sel[1]) );
  NAND2X2M U8 ( .A(current_state[1]), .B(n2), .Y(n7) );
  NAND2X2M U9 ( .A(current_state[1]), .B(n1), .Y(n9) );
  INVX2M U10 ( .A(current_state[0]), .Y(n1) );
  INVX2M U11 ( .A(current_state[2]), .Y(n2) );
  OAI221X1M U12 ( .A0(DATA_VALID), .A1(n9), .B0(current_state[2]), .B1(n1), 
        .C0(n7), .Y(Busy) );
  OAI32X1M U13 ( .A0(n2), .A1(n9), .A2(n3), .B0(current_state[2]), .B1(n10), 
        .Y(next_state[0]) );
  AOI2BB1X2M U14 ( .A0N(ser_done), .A1N(n1), .B0(n11), .Y(n10) );
  AOI21X2M U15 ( .A0(n1), .A1(n3), .B0(current_state[1]), .Y(n11) );
  INVX2M U16 ( .A(DATA_VALID), .Y(n3) );
  NOR2X2M U17 ( .A(n6), .B(n7), .Y(next_state[2]) );
  AOI2B1X1M U18 ( .A1N(PAR_EN), .A0(ser_done), .B0(n1), .Y(n6) );
  OAI21X2M U19 ( .A0(current_state[2]), .A1(n8), .B0(n5), .Y(next_state[1]) );
  OA21X2M U20 ( .A0(current_state[1]), .A1(n1), .B0(n9), .Y(n8) );
endmodule


module UART_TX_TOP_TX_data_width8 ( CLK, RST, P_DATA, DATA_VALID, PAR_EN, 
        PAR_TYP, TX_OUT, Busy );
  input [7:0] P_DATA;
  input CLK, RST, DATA_VALID, PAR_EN, PAR_TYP;
  output TX_OUT, Busy;
  wire   ser_en, load_en, ser_done;
  wire   [1:0] mux_sel;

  UART_TX_DATA_PATH_width8 DATAPATH ( .CLK(CLK), .RST(RST), .P_DATA(P_DATA), 
        .DATA_VALID(DATA_VALID), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .ser_en(
        ser_en), .load_en(load_en), .mux_sel(mux_sel), .ser_done(ser_done), 
        .TX_OUT(TX_OUT) );
  UART_TX_fsm FSM ( .CLK(CLK), .RST(RST), .DATA_VALID(DATA_VALID), .ser_done(
        ser_done), .PAR_EN(PAR_EN), .mux_sel(mux_sel), .ser_en(ser_en), 
        .load_en(load_en), .Busy(Busy) );
endmodule


module UART_RX_data_wd8_RX_bit_count_wd3_prescale_wd6_TX_data_width8 ( RST, 
        PAR_EN, PAR_TYP, RX_CLK, TX_P_DATA, TX_DATA_VALID, TX_OUT, TX_Busy, 
        TX_CLK, prescale, RX_IN, RX_P_DATA, RX_data_valid, par_err, stp_err );
  input [7:0] TX_P_DATA;
  input [5:0] prescale;
  output [7:0] RX_P_DATA;
  input RST, PAR_EN, PAR_TYP, RX_CLK, TX_DATA_VALID, TX_CLK, RX_IN;
  output TX_OUT, TX_Busy, RX_data_valid, par_err, stp_err;
  wire   n1, n2;

  UART_RX_RX_data_wd8_RX_bit_count_wd3_prescale_wd6 U0_UART_RX ( .CLK(RX_CLK), 
        .RST(n1), .prescale(prescale), .RX_IN(RX_IN), .PAR_TYP(PAR_TYP), 
        .PAR_EN(PAR_EN), .P_DATA(RX_P_DATA), .data_valid(RX_data_valid), 
        .par_err(par_err), .stp_err(stp_err) );
  UART_TX_TOP_TX_data_width8 U0_UART_TX ( .CLK(TX_CLK), .RST(n1), .P_DATA(
        TX_P_DATA), .DATA_VALID(TX_DATA_VALID), .PAR_EN(PAR_EN), .PAR_TYP(
        PAR_TYP), .TX_OUT(TX_OUT), .Busy(TX_Busy) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module ClkDiv_DIV_RATIO_WIDTH6 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [5:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, div_clk, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, N18, N19, N27, N28, N29, N30, N32, N33, N34, N35, N36, N37, n12,
         n13, n14, n16, \add_35/carry[5] , \add_35/carry[4] ,
         \add_35/carry[3] , \add_35/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n15, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32;
  wire   [5:0] count;

  DFFRQX2M div_clk_reg ( .D(n16), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M clk_en_reg_reg ( .D(n32), .CK(i_ref_clk), .RN(i_rst_n), .Q(N1) );
  DFFRQX2M \count_reg[5]  ( .D(N37), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[5]) );
  DFFRQX2M \count_reg[0]  ( .D(N32), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[0]) );
  DFFRQX2M \count_reg[2]  ( .D(N34), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  DFFRQX2M \count_reg[3]  ( .D(N35), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[4]  ( .D(N36), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[4]) );
  DFFRQX2M \count_reg[1]  ( .D(N33), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  OAI2B11X2M U3 ( .A1N(N11), .A0(i_div_ratio[0]), .B0(n31), .C0(N1), .Y(n14)
         );
  MX2X2M U4 ( .A(i_ref_clk), .B(div_clk), .S0(N1), .Y(o_div_clk) );
  NOR2BX2M U5 ( .AN(N30), .B(n14), .Y(N36) );
  NOR2BX2M U6 ( .AN(N29), .B(n14), .Y(N35) );
  NOR2BX2M U7 ( .AN(N28), .B(n14), .Y(N34) );
  NOR2BX2M U8 ( .AN(N27), .B(n14), .Y(N33) );
  INVX2M U9 ( .A(N19), .Y(n31) );
  NOR2X2M U10 ( .A(n1), .B(n14), .Y(N37) );
  XNOR2X2M U11 ( .A(\add_35/carry[5] ), .B(count[5]), .Y(n1) );
  NOR2X2M U12 ( .A(count[0]), .B(n14), .Y(N32) );
  XNOR2X2M U13 ( .A(div_clk), .B(n2), .Y(n16) );
  OAI21X2M U14 ( .A0(N11), .A1(N19), .B0(N1), .Y(n2) );
  ADDHX1M U15 ( .A(count[1]), .B(count[0]), .CO(\add_35/carry[2] ), .S(N27) );
  ADDHX1M U16 ( .A(count[2]), .B(\add_35/carry[2] ), .CO(\add_35/carry[3] ), 
        .S(N28) );
  ADDHX1M U17 ( .A(count[3]), .B(\add_35/carry[3] ), .CO(\add_35/carry[4] ), 
        .S(N29) );
  ADDHX1M U18 ( .A(count[4]), .B(\add_35/carry[4] ), .CO(\add_35/carry[5] ), 
        .S(N30) );
  OR2X2M U19 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n6) );
  OR2X2M U20 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n3) );
  INVX2M U21 ( .A(n12), .Y(n32) );
  OAI31X1M U22 ( .A0(n13), .A1(i_div_ratio[2]), .A2(i_div_ratio[1]), .B0(
        i_clk_en), .Y(n12) );
  OR3X2M U23 ( .A(i_div_ratio[5]), .B(i_div_ratio[4]), .C(i_div_ratio[3]), .Y(
        n13) );
  CLKINVX1M U24 ( .A(i_div_ratio[1]), .Y(N5) );
  OAI2BB1X1M U25 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n3), .Y(N6)
         );
  OR2X1M U26 ( .A(n3), .B(i_div_ratio[3]), .Y(n4) );
  OAI2BB1X1M U27 ( .A0N(n3), .A1N(i_div_ratio[3]), .B0(n4), .Y(N7) );
  XNOR2X1M U28 ( .A(i_div_ratio[4]), .B(n4), .Y(N8) );
  NOR3X1M U29 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(n4), .Y(N10) );
  OAI21X1M U30 ( .A0(i_div_ratio[4]), .A1(n4), .B0(i_div_ratio[5]), .Y(n5) );
  NAND2BX1M U31 ( .AN(N10), .B(n5), .Y(N9) );
  CLKINVX1M U32 ( .A(i_div_ratio[0]), .Y(N12) );
  OAI2BB1X1M U33 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n6), .Y(N13) );
  OR2X1M U34 ( .A(n6), .B(i_div_ratio[2]), .Y(n7) );
  OAI2BB1X1M U35 ( .A0N(n6), .A1N(i_div_ratio[2]), .B0(n7), .Y(N14) );
  OR2X1M U36 ( .A(n7), .B(i_div_ratio[3]), .Y(n8) );
  OAI2BB1X1M U37 ( .A0N(n7), .A1N(i_div_ratio[3]), .B0(n8), .Y(N15) );
  OR2X1M U38 ( .A(n8), .B(i_div_ratio[4]), .Y(n9) );
  OAI2BB1X1M U39 ( .A0N(n8), .A1N(i_div_ratio[4]), .B0(n9), .Y(N16) );
  NOR2X1M U40 ( .A(n9), .B(i_div_ratio[5]), .Y(N18) );
  AO21XLM U41 ( .A0(n9), .A1(i_div_ratio[5]), .B0(N18), .Y(N17) );
  NOR2BX1M U42 ( .AN(count[0]), .B(N5), .Y(n10) );
  OAI2B2X1M U43 ( .A1N(N6), .A0(n10), .B0(count[1]), .B1(n10), .Y(n17) );
  NOR2BX1M U44 ( .AN(N5), .B(count[0]), .Y(n11) );
  OAI2B2X1M U45 ( .A1N(count[1]), .A0(n11), .B0(N6), .B1(n11), .Y(n15) );
  NAND4BBX1M U46 ( .AN(N10), .BN(count[5]), .C(n17), .D(n15), .Y(n21) );
  CLKXOR2X2M U47 ( .A(N9), .B(count[4]), .Y(n20) );
  CLKXOR2X2M U48 ( .A(N7), .B(count[2]), .Y(n19) );
  CLKXOR2X2M U49 ( .A(N8), .B(count[3]), .Y(n18) );
  NOR4X1M U50 ( .A(n21), .B(n20), .C(n19), .D(n18), .Y(N11) );
  NOR2BX1M U51 ( .AN(N12), .B(count[0]), .Y(n22) );
  OAI2B2X1M U52 ( .A1N(count[1]), .A0(n22), .B0(N13), .B1(n22), .Y(n26) );
  XNOR2X1M U53 ( .A(N17), .B(count[5]), .Y(n25) );
  NOR2BX1M U54 ( .AN(count[0]), .B(N12), .Y(n23) );
  OAI2B2X1M U55 ( .A1N(N13), .A0(n23), .B0(count[1]), .B1(n23), .Y(n24) );
  NAND4BX1M U56 ( .AN(N18), .B(n26), .C(n25), .D(n24), .Y(n30) );
  CLKXOR2X2M U57 ( .A(N16), .B(count[4]), .Y(n29) );
  CLKXOR2X2M U58 ( .A(N14), .B(count[2]), .Y(n28) );
  CLKXOR2X2M U59 ( .A(N15), .B(count[3]), .Y(n27) );
  NOR4X1M U60 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N19) );
endmodule


module ClkDiv_DIV_RATIO_WIDTH4 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [3:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, div_clk, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N26, N27,
         N29, clk_en, n12, n13, n15, n16, n19, n20, n21, n25, \r65/B[0] , n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n14, n17, n18, n22, n23,
         n24, n26, n27;
  wire   [3:0] count;

  DFFRQX2M div_clk_reg ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(div_clk) );
  DFFRQX2M clk_en_reg_reg ( .D(clk_en), .CK(i_ref_clk), .RN(i_rst_n), .Q(N1)
         );
  DFFRQX2M \count_reg[1]  ( .D(N27), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[1]) );
  DFFRQX2M \count_reg[3]  ( .D(N29), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[3]) );
  DFFRQX2M \count_reg[2]  ( .D(n17), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[2]) );
  DFFRX1M \count_reg[0]  ( .D(N26), .CK(i_ref_clk), .RN(i_rst_n), .Q(count[0]), 
        .QN(n23) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk), .S0(N1), .Y(o_div_clk) );
  AOI211X2M U4 ( .A0(n23), .A1(n24), .B0(n21), .C0(n16), .Y(N27) );
  INVX2M U5 ( .A(n21), .Y(n18) );
  NOR2X2M U6 ( .A(n21), .B(n16), .Y(n19) );
  NOR2X2M U7 ( .A(n24), .B(n23), .Y(n16) );
  NOR3X2M U8 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        N8) );
  OR2X2M U9 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n2) );
  INVX2M U10 ( .A(i_div_ratio[1]), .Y(\r65/B[0] ) );
  XNOR2X2M U11 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(N6) );
  OAI2B11X2M U12 ( .A1N(N9), .A0(i_div_ratio[0]), .B0(n22), .C0(N1), .Y(n21)
         );
  INVX2M U13 ( .A(N15), .Y(n22) );
  NAND2BX2M U14 ( .AN(N8), .B(n12), .Y(N7) );
  OAI21X2M U15 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0(i_div_ratio[3]), 
        .Y(n12) );
  NOR2X2M U16 ( .A(count[0]), .B(n21), .Y(N26) );
  OAI21X2M U17 ( .A0(n13), .A1(n27), .B0(n15), .Y(N29) );
  NAND4X2M U18 ( .A(count[2]), .B(n16), .C(n18), .D(n27), .Y(n15) );
  AOI21X2M U19 ( .A0(n18), .A1(n26), .B0(n19), .Y(n13) );
  INVX2M U20 ( .A(count[3]), .Y(n27) );
  INVX2M U21 ( .A(n20), .Y(n17) );
  AOI32X1M U22 ( .A0(n16), .A1(n26), .A2(n18), .B0(count[2]), .B1(n19), .Y(n20) );
  XNOR2X2M U23 ( .A(div_clk), .B(n1), .Y(n25) );
  OAI21X2M U24 ( .A0(N15), .A1(N9), .B0(N1), .Y(n1) );
  INVX2M U25 ( .A(count[1]), .Y(n24) );
  INVX2M U26 ( .A(count[2]), .Y(n26) );
  NOR2BX2M U27 ( .AN(i_clk_en), .B(N8), .Y(clk_en) );
  CLKINVX1M U28 ( .A(i_div_ratio[0]), .Y(N10) );
  OAI2BB1X1M U29 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n2), .Y(N11) );
  OR2X1M U30 ( .A(n2), .B(i_div_ratio[2]), .Y(n3) );
  OAI2BB1X1M U31 ( .A0N(n2), .A1N(i_div_ratio[2]), .B0(n3), .Y(N12) );
  NOR2X1M U32 ( .A(n3), .B(i_div_ratio[3]), .Y(N14) );
  AO21XLM U33 ( .A0(n3), .A1(i_div_ratio[3]), .B0(N14), .Y(N13) );
  XNOR2X1M U34 ( .A(N7), .B(count[2]), .Y(n5) );
  XNOR2X1M U35 ( .A(N6), .B(count[1]), .Y(n4) );
  CLKNAND2X2M U36 ( .A(n5), .B(n4), .Y(n7) );
  CLKXOR2X2M U37 ( .A(\r65/B[0] ), .B(count[0]), .Y(n6) );
  NOR4X1M U38 ( .A(n7), .B(n6), .C(N8), .D(count[3]), .Y(N9) );
  XNOR2X1M U39 ( .A(N12), .B(count[2]), .Y(n9) );
  XNOR2X1M U40 ( .A(N13), .B(count[3]), .Y(n8) );
  CLKNAND2X2M U41 ( .A(n9), .B(n8), .Y(n14) );
  CLKXOR2X2M U42 ( .A(N11), .B(count[1]), .Y(n11) );
  CLKXOR2X2M U43 ( .A(N10), .B(count[0]), .Y(n10) );
  NOR4X1M U44 ( .A(n14), .B(n11), .C(N14), .D(n10), .Y(N15) );
endmodule


module RX_DIV_R_CALC_DIV_RATIO_WIDTH4_prescale_wd6 ( prescale, RX_Div_Ratio );
  input [5:0] prescale;
  output [3:0] RX_Div_Ratio;
  wire   n5, n6, n7, n8, n9, n1, n2, n3, n4;

  NOR3X2M U3 ( .A(n7), .B(prescale[1]), .C(prescale[0]), .Y(RX_Div_Ratio[1])
         );
  NOR4X1M U4 ( .A(n5), .B(prescale[3]), .C(prescale[5]), .D(prescale[4]), .Y(
        RX_Div_Ratio[3]) );
  NOR3X2M U5 ( .A(n6), .B(prescale[1]), .C(prescale[0]), .Y(RX_Div_Ratio[2])
         );
  NAND4BX1M U6 ( .AN(prescale[4]), .B(prescale[3]), .C(n2), .D(n1), .Y(n6) );
  NAND4BX1M U7 ( .AN(prescale[3]), .B(prescale[4]), .C(n2), .D(n1), .Y(n7) );
  NAND3X2M U8 ( .A(n4), .B(n3), .C(prescale[2]), .Y(n5) );
  OAI211X2M U9 ( .A0(n8), .A1(n9), .B0(n4), .C0(n3), .Y(RX_Div_Ratio[0]) );
  NAND2X2M U10 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U11 ( .A(prescale[5]), .B(prescale[4]), .C(prescale[3]), .D(n2), .Y(
        n8) );
  INVX2M U12 ( .A(prescale[1]), .Y(n3) );
  INVX2M U13 ( .A(prescale[2]), .Y(n2) );
  INVX2M U14 ( .A(prescale[0]), .Y(n4) );
  INVX2M U15 ( .A(prescale[5]), .Y(n1) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
  AND2X2M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
endmodule


module DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 ( CLK, RST, bus_enable, Unsync_bus, 
        sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse;
  wire   pulse_gen, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] en_sychronizer;

  DFFRQX2M pulse_gen_reg ( .D(en_sychronizer[0]), .CK(CLK), .RN(RST), .Q(
        pulse_gen) );
  DFFRQX2M \en_sychronizer_reg[0]  ( .D(en_sychronizer[1]), .CK(CLK), .RN(RST), 
        .Q(en_sychronizer[0]) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse) );
  DFFRQX2M \en_sychronizer_reg[1]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        en_sychronizer[1]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(pulse_gen), .B(en_sychronizer[0]), .Y(n1) );
  AO22X1M U5 ( .A0(Unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(Unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(Unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(Unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(Unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(Unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH3 ( CLK, RST, W_ADDR, R_ADDR, W_DATA, 
        W_EN, R_DATA );
  input [2:0] W_ADDR;
  input [2:0] R_ADDR;
  input [7:0] W_DATA;
  output [7:0] R_DATA;
  input CLK, RST, W_EN;
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
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114;
  assign N10 = R_ADDR[0];
  assign N11 = R_ADDR[1];
  assign N12 = R_ADDR[2];

  DFFRQX2M \FIFO_reg[1][7]  ( .D(n76), .CK(CLK), .RN(n100), .Q(\FIFO[1][7] )
         );
  DFFRQX2M \FIFO_reg[1][6]  ( .D(n75), .CK(CLK), .RN(n100), .Q(\FIFO[1][6] )
         );
  DFFRQX2M \FIFO_reg[1][5]  ( .D(n74), .CK(CLK), .RN(n100), .Q(\FIFO[1][5] )
         );
  DFFRQX2M \FIFO_reg[1][4]  ( .D(n73), .CK(CLK), .RN(n100), .Q(\FIFO[1][4] )
         );
  DFFRQX2M \FIFO_reg[1][3]  ( .D(n72), .CK(CLK), .RN(n100), .Q(\FIFO[1][3] )
         );
  DFFRQX2M \FIFO_reg[1][2]  ( .D(n71), .CK(CLK), .RN(n101), .Q(\FIFO[1][2] )
         );
  DFFRQX2M \FIFO_reg[1][1]  ( .D(n70), .CK(CLK), .RN(n101), .Q(\FIFO[1][1] )
         );
  DFFRQX2M \FIFO_reg[1][0]  ( .D(n69), .CK(CLK), .RN(n101), .Q(\FIFO[1][0] )
         );
  DFFRQX2M \FIFO_reg[5][7]  ( .D(n44), .CK(CLK), .RN(n103), .Q(\FIFO[5][7] )
         );
  DFFRQX2M \FIFO_reg[5][6]  ( .D(n43), .CK(CLK), .RN(n103), .Q(\FIFO[5][6] )
         );
  DFFRQX2M \FIFO_reg[5][5]  ( .D(n42), .CK(CLK), .RN(n103), .Q(\FIFO[5][5] )
         );
  DFFRQX2M \FIFO_reg[5][4]  ( .D(n41), .CK(CLK), .RN(n103), .Q(\FIFO[5][4] )
         );
  DFFRQX2M \FIFO_reg[5][3]  ( .D(n40), .CK(CLK), .RN(n103), .Q(\FIFO[5][3] )
         );
  DFFRQX2M \FIFO_reg[5][2]  ( .D(n39), .CK(CLK), .RN(n103), .Q(\FIFO[5][2] )
         );
  DFFRQX2M \FIFO_reg[5][1]  ( .D(n38), .CK(CLK), .RN(n103), .Q(\FIFO[5][1] )
         );
  DFFRQX2M \FIFO_reg[5][0]  ( .D(n37), .CK(CLK), .RN(n103), .Q(\FIFO[5][0] )
         );
  DFFRQX2M \FIFO_reg[3][7]  ( .D(n60), .CK(CLK), .RN(n101), .Q(\FIFO[3][7] )
         );
  DFFRQX2M \FIFO_reg[3][6]  ( .D(n59), .CK(CLK), .RN(n101), .Q(\FIFO[3][6] )
         );
  DFFRQX2M \FIFO_reg[3][5]  ( .D(n58), .CK(CLK), .RN(n102), .Q(\FIFO[3][5] )
         );
  DFFRQX2M \FIFO_reg[3][4]  ( .D(n57), .CK(CLK), .RN(n102), .Q(\FIFO[3][4] )
         );
  DFFRQX2M \FIFO_reg[3][3]  ( .D(n56), .CK(CLK), .RN(n102), .Q(\FIFO[3][3] )
         );
  DFFRQX2M \FIFO_reg[3][2]  ( .D(n55), .CK(CLK), .RN(n102), .Q(\FIFO[3][2] )
         );
  DFFRQX2M \FIFO_reg[3][1]  ( .D(n54), .CK(CLK), .RN(n102), .Q(\FIFO[3][1] )
         );
  DFFRQX2M \FIFO_reg[3][0]  ( .D(n53), .CK(CLK), .RN(n102), .Q(\FIFO[3][0] )
         );
  DFFRQX2M \FIFO_reg[7][7]  ( .D(n28), .CK(CLK), .RN(n104), .Q(\FIFO[7][7] )
         );
  DFFRQX2M \FIFO_reg[7][6]  ( .D(n27), .CK(CLK), .RN(n104), .Q(\FIFO[7][6] )
         );
  DFFRQX2M \FIFO_reg[7][5]  ( .D(n26), .CK(CLK), .RN(n104), .Q(\FIFO[7][5] )
         );
  DFFRQX2M \FIFO_reg[7][4]  ( .D(n25), .CK(CLK), .RN(n104), .Q(\FIFO[7][4] )
         );
  DFFRQX2M \FIFO_reg[7][3]  ( .D(n24), .CK(CLK), .RN(n104), .Q(\FIFO[7][3] )
         );
  DFFRQX2M \FIFO_reg[7][2]  ( .D(n23), .CK(CLK), .RN(n104), .Q(\FIFO[7][2] )
         );
  DFFRQX2M \FIFO_reg[7][1]  ( .D(n22), .CK(CLK), .RN(n104), .Q(\FIFO[7][1] )
         );
  DFFRQX2M \FIFO_reg[7][0]  ( .D(n21), .CK(CLK), .RN(n104), .Q(\FIFO[7][0] )
         );
  DFFRQX2M \FIFO_reg[2][7]  ( .D(n68), .CK(CLK), .RN(n101), .Q(\FIFO[2][7] )
         );
  DFFRQX2M \FIFO_reg[2][6]  ( .D(n67), .CK(CLK), .RN(n101), .Q(\FIFO[2][6] )
         );
  DFFRQX2M \FIFO_reg[2][5]  ( .D(n66), .CK(CLK), .RN(n101), .Q(\FIFO[2][5] )
         );
  DFFRQX2M \FIFO_reg[2][4]  ( .D(n65), .CK(CLK), .RN(n101), .Q(\FIFO[2][4] )
         );
  DFFRQX2M \FIFO_reg[2][3]  ( .D(n64), .CK(CLK), .RN(n101), .Q(\FIFO[2][3] )
         );
  DFFRQX2M \FIFO_reg[2][2]  ( .D(n63), .CK(CLK), .RN(n101), .Q(\FIFO[2][2] )
         );
  DFFRQX2M \FIFO_reg[2][1]  ( .D(n62), .CK(CLK), .RN(n101), .Q(\FIFO[2][1] )
         );
  DFFRQX2M \FIFO_reg[2][0]  ( .D(n61), .CK(CLK), .RN(n101), .Q(\FIFO[2][0] )
         );
  DFFRQX2M \FIFO_reg[6][7]  ( .D(n36), .CK(CLK), .RN(n103), .Q(\FIFO[6][7] )
         );
  DFFRQX2M \FIFO_reg[6][6]  ( .D(n35), .CK(CLK), .RN(n103), .Q(\FIFO[6][6] )
         );
  DFFRQX2M \FIFO_reg[6][5]  ( .D(n34), .CK(CLK), .RN(n103), .Q(\FIFO[6][5] )
         );
  DFFRQX2M \FIFO_reg[6][4]  ( .D(n33), .CK(CLK), .RN(n103), .Q(\FIFO[6][4] )
         );
  DFFRQX2M \FIFO_reg[6][3]  ( .D(n32), .CK(CLK), .RN(n104), .Q(\FIFO[6][3] )
         );
  DFFRQX2M \FIFO_reg[6][2]  ( .D(n31), .CK(CLK), .RN(n104), .Q(\FIFO[6][2] )
         );
  DFFRQX2M \FIFO_reg[6][1]  ( .D(n30), .CK(CLK), .RN(n104), .Q(\FIFO[6][1] )
         );
  DFFRQX2M \FIFO_reg[6][0]  ( .D(n29), .CK(CLK), .RN(n104), .Q(\FIFO[6][0] )
         );
  DFFRQX2M \FIFO_reg[0][7]  ( .D(n84), .CK(CLK), .RN(n100), .Q(\FIFO[0][7] )
         );
  DFFRQX2M \FIFO_reg[0][6]  ( .D(n83), .CK(CLK), .RN(n100), .Q(\FIFO[0][6] )
         );
  DFFRQX2M \FIFO_reg[0][5]  ( .D(n82), .CK(CLK), .RN(n100), .Q(\FIFO[0][5] )
         );
  DFFRQX2M \FIFO_reg[0][4]  ( .D(n81), .CK(CLK), .RN(n100), .Q(\FIFO[0][4] )
         );
  DFFRQX2M \FIFO_reg[0][3]  ( .D(n80), .CK(CLK), .RN(n100), .Q(\FIFO[0][3] )
         );
  DFFRQX2M \FIFO_reg[0][2]  ( .D(n79), .CK(CLK), .RN(n100), .Q(\FIFO[0][2] )
         );
  DFFRQX2M \FIFO_reg[0][1]  ( .D(n78), .CK(CLK), .RN(n100), .Q(\FIFO[0][1] )
         );
  DFFRQX2M \FIFO_reg[0][0]  ( .D(n77), .CK(CLK), .RN(n100), .Q(\FIFO[0][0] )
         );
  DFFRQX2M \FIFO_reg[4][7]  ( .D(n52), .CK(CLK), .RN(n102), .Q(\FIFO[4][7] )
         );
  DFFRQX2M \FIFO_reg[4][6]  ( .D(n51), .CK(CLK), .RN(n102), .Q(\FIFO[4][6] )
         );
  DFFRQX2M \FIFO_reg[4][5]  ( .D(n50), .CK(CLK), .RN(n102), .Q(\FIFO[4][5] )
         );
  DFFRQX2M \FIFO_reg[4][4]  ( .D(n49), .CK(CLK), .RN(n102), .Q(\FIFO[4][4] )
         );
  DFFRQX2M \FIFO_reg[4][3]  ( .D(n48), .CK(CLK), .RN(n102), .Q(\FIFO[4][3] )
         );
  DFFRQX2M \FIFO_reg[4][2]  ( .D(n47), .CK(CLK), .RN(n102), .Q(\FIFO[4][2] )
         );
  DFFRQX2M \FIFO_reg[4][1]  ( .D(n46), .CK(CLK), .RN(n102), .Q(\FIFO[4][1] )
         );
  DFFRQX2M \FIFO_reg[4][0]  ( .D(n45), .CK(CLK), .RN(n103), .Q(\FIFO[4][0] )
         );
  BUFX2M U2 ( .A(n18), .Y(n94) );
  BUFX2M U3 ( .A(n19), .Y(n93) );
  BUFX2M U4 ( .A(n16), .Y(n95) );
  BUFX2M U5 ( .A(n13), .Y(n97) );
  BUFX2M U6 ( .A(n14), .Y(n96) );
  BUFX2M U7 ( .A(n98), .Y(n102) );
  BUFX2M U8 ( .A(n98), .Y(n101) );
  BUFX2M U9 ( .A(n98), .Y(n100) );
  BUFX2M U10 ( .A(n99), .Y(n103) );
  BUFX2M U11 ( .A(n99), .Y(n104) );
  BUFX2M U12 ( .A(RST), .Y(n98) );
  BUFX2M U13 ( .A(RST), .Y(n99) );
  NAND3X2M U14 ( .A(n105), .B(n106), .C(n12), .Y(n15) );
  NAND3X2M U15 ( .A(n105), .B(n106), .C(n17), .Y(n20) );
  NAND3X2M U16 ( .A(W_ADDR[0]), .B(n12), .C(W_ADDR[1]), .Y(n11) );
  NOR2BX2M U17 ( .AN(W_EN), .B(W_ADDR[2]), .Y(n17) );
  OAI2BB2X1M U18 ( .B0(n11), .B1(n114), .A0N(\FIFO[7][0] ), .A1N(n11), .Y(n21)
         );
  OAI2BB2X1M U19 ( .B0(n11), .B1(n113), .A0N(\FIFO[7][1] ), .A1N(n11), .Y(n22)
         );
  OAI2BB2X1M U20 ( .B0(n11), .B1(n112), .A0N(\FIFO[7][2] ), .A1N(n11), .Y(n23)
         );
  OAI2BB2X1M U21 ( .B0(n11), .B1(n111), .A0N(\FIFO[7][3] ), .A1N(n11), .Y(n24)
         );
  OAI2BB2X1M U22 ( .B0(n11), .B1(n110), .A0N(\FIFO[7][4] ), .A1N(n11), .Y(n25)
         );
  OAI2BB2X1M U23 ( .B0(n11), .B1(n109), .A0N(\FIFO[7][5] ), .A1N(n11), .Y(n26)
         );
  OAI2BB2X1M U24 ( .B0(n11), .B1(n108), .A0N(\FIFO[7][6] ), .A1N(n11), .Y(n27)
         );
  OAI2BB2X1M U25 ( .B0(n11), .B1(n107), .A0N(\FIFO[7][7] ), .A1N(n11), .Y(n28)
         );
  OAI2BB2X1M U26 ( .B0(n114), .B1(n20), .A0N(\FIFO[0][0] ), .A1N(n20), .Y(n77)
         );
  OAI2BB2X1M U27 ( .B0(n113), .B1(n20), .A0N(\FIFO[0][1] ), .A1N(n20), .Y(n78)
         );
  OAI2BB2X1M U28 ( .B0(n112), .B1(n20), .A0N(\FIFO[0][2] ), .A1N(n20), .Y(n79)
         );
  OAI2BB2X1M U29 ( .B0(n111), .B1(n20), .A0N(\FIFO[0][3] ), .A1N(n20), .Y(n80)
         );
  OAI2BB2X1M U30 ( .B0(n110), .B1(n20), .A0N(\FIFO[0][4] ), .A1N(n20), .Y(n81)
         );
  OAI2BB2X1M U31 ( .B0(n109), .B1(n20), .A0N(\FIFO[0][5] ), .A1N(n20), .Y(n82)
         );
  OAI2BB2X1M U32 ( .B0(n108), .B1(n20), .A0N(\FIFO[0][6] ), .A1N(n20), .Y(n83)
         );
  OAI2BB2X1M U33 ( .B0(n107), .B1(n20), .A0N(\FIFO[0][7] ), .A1N(n20), .Y(n84)
         );
  OAI2BB2X1M U34 ( .B0(n114), .B1(n15), .A0N(\FIFO[4][0] ), .A1N(n15), .Y(n45)
         );
  OAI2BB2X1M U35 ( .B0(n113), .B1(n15), .A0N(\FIFO[4][1] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U36 ( .B0(n112), .B1(n15), .A0N(\FIFO[4][2] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U37 ( .B0(n111), .B1(n15), .A0N(\FIFO[4][3] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U38 ( .B0(n110), .B1(n15), .A0N(\FIFO[4][4] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U39 ( .B0(n109), .B1(n15), .A0N(\FIFO[4][5] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U40 ( .B0(n108), .B1(n15), .A0N(\FIFO[4][6] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U41 ( .B0(n107), .B1(n15), .A0N(\FIFO[4][7] ), .A1N(n15), .Y(n52)
         );
  INVX2M U42 ( .A(W_DATA[0]), .Y(n114) );
  OAI2BB2X1M U43 ( .B0(n114), .B1(n97), .A0N(\FIFO[6][0] ), .A1N(n97), .Y(n29)
         );
  OAI2BB2X1M U44 ( .B0(n113), .B1(n97), .A0N(\FIFO[6][1] ), .A1N(n97), .Y(n30)
         );
  OAI2BB2X1M U45 ( .B0(n112), .B1(n97), .A0N(\FIFO[6][2] ), .A1N(n97), .Y(n31)
         );
  OAI2BB2X1M U46 ( .B0(n111), .B1(n97), .A0N(\FIFO[6][3] ), .A1N(n97), .Y(n32)
         );
  OAI2BB2X1M U47 ( .B0(n110), .B1(n97), .A0N(\FIFO[6][4] ), .A1N(n97), .Y(n33)
         );
  OAI2BB2X1M U48 ( .B0(n109), .B1(n97), .A0N(\FIFO[6][5] ), .A1N(n97), .Y(n34)
         );
  OAI2BB2X1M U49 ( .B0(n108), .B1(n97), .A0N(\FIFO[6][6] ), .A1N(n97), .Y(n35)
         );
  OAI2BB2X1M U50 ( .B0(n107), .B1(n97), .A0N(\FIFO[6][7] ), .A1N(n97), .Y(n36)
         );
  OAI2BB2X1M U51 ( .B0(n114), .B1(n96), .A0N(\FIFO[5][0] ), .A1N(n96), .Y(n37)
         );
  OAI2BB2X1M U52 ( .B0(n113), .B1(n96), .A0N(\FIFO[5][1] ), .A1N(n96), .Y(n38)
         );
  OAI2BB2X1M U53 ( .B0(n112), .B1(n96), .A0N(\FIFO[5][2] ), .A1N(n96), .Y(n39)
         );
  OAI2BB2X1M U54 ( .B0(n111), .B1(n96), .A0N(\FIFO[5][3] ), .A1N(n96), .Y(n40)
         );
  OAI2BB2X1M U55 ( .B0(n110), .B1(n96), .A0N(\FIFO[5][4] ), .A1N(n96), .Y(n41)
         );
  OAI2BB2X1M U56 ( .B0(n109), .B1(n96), .A0N(\FIFO[5][5] ), .A1N(n96), .Y(n42)
         );
  OAI2BB2X1M U57 ( .B0(n108), .B1(n96), .A0N(\FIFO[5][6] ), .A1N(n96), .Y(n43)
         );
  OAI2BB2X1M U58 ( .B0(n107), .B1(n96), .A0N(\FIFO[5][7] ), .A1N(n96), .Y(n44)
         );
  OAI2BB2X1M U59 ( .B0(n114), .B1(n95), .A0N(\FIFO[3][0] ), .A1N(n95), .Y(n53)
         );
  OAI2BB2X1M U60 ( .B0(n113), .B1(n95), .A0N(\FIFO[3][1] ), .A1N(n95), .Y(n54)
         );
  OAI2BB2X1M U61 ( .B0(n112), .B1(n95), .A0N(\FIFO[3][2] ), .A1N(n95), .Y(n55)
         );
  OAI2BB2X1M U62 ( .B0(n111), .B1(n95), .A0N(\FIFO[3][3] ), .A1N(n95), .Y(n56)
         );
  OAI2BB2X1M U63 ( .B0(n110), .B1(n95), .A0N(\FIFO[3][4] ), .A1N(n95), .Y(n57)
         );
  OAI2BB2X1M U64 ( .B0(n109), .B1(n95), .A0N(\FIFO[3][5] ), .A1N(n95), .Y(n58)
         );
  OAI2BB2X1M U65 ( .B0(n108), .B1(n95), .A0N(\FIFO[3][6] ), .A1N(n95), .Y(n59)
         );
  OAI2BB2X1M U66 ( .B0(n107), .B1(n95), .A0N(\FIFO[3][7] ), .A1N(n95), .Y(n60)
         );
  OAI2BB2X1M U67 ( .B0(n114), .B1(n94), .A0N(\FIFO[2][0] ), .A1N(n94), .Y(n61)
         );
  OAI2BB2X1M U68 ( .B0(n113), .B1(n94), .A0N(\FIFO[2][1] ), .A1N(n94), .Y(n62)
         );
  OAI2BB2X1M U69 ( .B0(n112), .B1(n94), .A0N(\FIFO[2][2] ), .A1N(n94), .Y(n63)
         );
  OAI2BB2X1M U70 ( .B0(n111), .B1(n94), .A0N(\FIFO[2][3] ), .A1N(n94), .Y(n64)
         );
  OAI2BB2X1M U71 ( .B0(n110), .B1(n94), .A0N(\FIFO[2][4] ), .A1N(n94), .Y(n65)
         );
  OAI2BB2X1M U72 ( .B0(n109), .B1(n94), .A0N(\FIFO[2][5] ), .A1N(n94), .Y(n66)
         );
  OAI2BB2X1M U73 ( .B0(n108), .B1(n94), .A0N(\FIFO[2][6] ), .A1N(n94), .Y(n67)
         );
  OAI2BB2X1M U74 ( .B0(n107), .B1(n94), .A0N(\FIFO[2][7] ), .A1N(n94), .Y(n68)
         );
  OAI2BB2X1M U75 ( .B0(n114), .B1(n93), .A0N(\FIFO[1][0] ), .A1N(n93), .Y(n69)
         );
  OAI2BB2X1M U76 ( .B0(n113), .B1(n93), .A0N(\FIFO[1][1] ), .A1N(n93), .Y(n70)
         );
  OAI2BB2X1M U77 ( .B0(n112), .B1(n93), .A0N(\FIFO[1][2] ), .A1N(n93), .Y(n71)
         );
  OAI2BB2X1M U78 ( .B0(n111), .B1(n93), .A0N(\FIFO[1][3] ), .A1N(n93), .Y(n72)
         );
  OAI2BB2X1M U79 ( .B0(n110), .B1(n93), .A0N(\FIFO[1][4] ), .A1N(n93), .Y(n73)
         );
  OAI2BB2X1M U80 ( .B0(n109), .B1(n93), .A0N(\FIFO[1][5] ), .A1N(n93), .Y(n74)
         );
  OAI2BB2X1M U81 ( .B0(n108), .B1(n93), .A0N(\FIFO[1][6] ), .A1N(n93), .Y(n75)
         );
  OAI2BB2X1M U82 ( .B0(n107), .B1(n93), .A0N(\FIFO[1][7] ), .A1N(n93), .Y(n76)
         );
  NAND3X2M U83 ( .A(W_ADDR[0]), .B(n106), .C(n17), .Y(n19) );
  AND2X2M U84 ( .A(W_EN), .B(W_ADDR[2]), .Y(n12) );
  NAND3X2M U85 ( .A(n12), .B(n105), .C(W_ADDR[1]), .Y(n13) );
  NAND3X2M U86 ( .A(n12), .B(n106), .C(W_ADDR[0]), .Y(n14) );
  NAND3X2M U87 ( .A(W_ADDR[1]), .B(W_ADDR[0]), .C(n17), .Y(n16) );
  NAND3X2M U88 ( .A(W_ADDR[1]), .B(n105), .C(n17), .Y(n18) );
  INVX2M U89 ( .A(W_DATA[1]), .Y(n113) );
  INVX2M U90 ( .A(W_DATA[2]), .Y(n112) );
  INVX2M U91 ( .A(W_DATA[3]), .Y(n111) );
  INVX2M U92 ( .A(W_DATA[4]), .Y(n110) );
  INVX2M U93 ( .A(W_DATA[5]), .Y(n109) );
  INVX2M U94 ( .A(W_DATA[6]), .Y(n108) );
  INVX2M U95 ( .A(W_DATA[7]), .Y(n107) );
  INVX2M U96 ( .A(W_ADDR[1]), .Y(n106) );
  INVX2M U97 ( .A(W_ADDR[0]), .Y(n105) );
  MX2X2M U98 ( .A(n90), .B(n89), .S0(N12), .Y(R_DATA[7]) );
  MX4X1M U99 ( .A(\FIFO[4][7] ), .B(\FIFO[5][7] ), .C(\FIFO[6][7] ), .D(
        \FIFO[7][7] ), .S0(n91), .S1(N11), .Y(n89) );
  MX4X1M U100 ( .A(\FIFO[0][7] ), .B(\FIFO[1][7] ), .C(\FIFO[2][7] ), .D(
        \FIFO[3][7] ), .S0(n92), .S1(N11), .Y(n90) );
  MX2X2M U101 ( .A(n88), .B(n87), .S0(N12), .Y(R_DATA[6]) );
  MX4X1M U102 ( .A(\FIFO[4][6] ), .B(\FIFO[5][6] ), .C(\FIFO[6][6] ), .D(
        \FIFO[7][6] ), .S0(n91), .S1(N11), .Y(n87) );
  MX4X1M U103 ( .A(\FIFO[0][6] ), .B(\FIFO[1][6] ), .C(\FIFO[2][6] ), .D(
        \FIFO[3][6] ), .S0(n92), .S1(N11), .Y(n88) );
  MX2X2M U104 ( .A(n10), .B(n9), .S0(N12), .Y(R_DATA[4]) );
  MX4X1M U105 ( .A(\FIFO[4][4] ), .B(\FIFO[5][4] ), .C(\FIFO[6][4] ), .D(
        \FIFO[7][4] ), .S0(n91), .S1(N11), .Y(n9) );
  MX4X1M U106 ( .A(\FIFO[0][4] ), .B(\FIFO[1][4] ), .C(\FIFO[2][4] ), .D(
        \FIFO[3][4] ), .S0(n92), .S1(N11), .Y(n10) );
  MX2X2M U107 ( .A(n86), .B(n85), .S0(N12), .Y(R_DATA[5]) );
  MX4X1M U108 ( .A(\FIFO[4][5] ), .B(\FIFO[5][5] ), .C(\FIFO[6][5] ), .D(
        \FIFO[7][5] ), .S0(n91), .S1(N11), .Y(n85) );
  MX4X1M U109 ( .A(\FIFO[0][5] ), .B(\FIFO[1][5] ), .C(\FIFO[2][5] ), .D(
        \FIFO[3][5] ), .S0(n92), .S1(N11), .Y(n86) );
  BUFX2M U110 ( .A(N10), .Y(n92) );
  BUFX2M U111 ( .A(N10), .Y(n91) );
  MX2X2M U112 ( .A(n6), .B(n5), .S0(N12), .Y(R_DATA[2]) );
  MX4X1M U113 ( .A(\FIFO[4][2] ), .B(\FIFO[5][2] ), .C(\FIFO[6][2] ), .D(
        \FIFO[7][2] ), .S0(n91), .S1(N11), .Y(n5) );
  MX4X1M U114 ( .A(\FIFO[0][2] ), .B(\FIFO[1][2] ), .C(\FIFO[2][2] ), .D(
        \FIFO[3][2] ), .S0(n92), .S1(N11), .Y(n6) );
  MX2X2M U115 ( .A(n8), .B(n7), .S0(N12), .Y(R_DATA[3]) );
  MX4X1M U116 ( .A(\FIFO[4][3] ), .B(\FIFO[5][3] ), .C(\FIFO[6][3] ), .D(
        \FIFO[7][3] ), .S0(n91), .S1(N11), .Y(n7) );
  MX4X1M U117 ( .A(\FIFO[0][3] ), .B(\FIFO[1][3] ), .C(\FIFO[2][3] ), .D(
        \FIFO[3][3] ), .S0(n92), .S1(N11), .Y(n8) );
  MX2X2M U118 ( .A(n2), .B(n1), .S0(N12), .Y(R_DATA[0]) );
  MX4X1M U119 ( .A(\FIFO[4][0] ), .B(\FIFO[5][0] ), .C(\FIFO[6][0] ), .D(
        \FIFO[7][0] ), .S0(n91), .S1(N11), .Y(n1) );
  MX4X1M U120 ( .A(\FIFO[0][0] ), .B(\FIFO[1][0] ), .C(\FIFO[2][0] ), .D(
        \FIFO[3][0] ), .S0(n92), .S1(N11), .Y(n2) );
  MX2X2M U121 ( .A(n4), .B(n3), .S0(N12), .Y(R_DATA[1]) );
  MX4X1M U122 ( .A(\FIFO[4][1] ), .B(\FIFO[5][1] ), .C(\FIFO[6][1] ), .D(
        \FIFO[7][1] ), .S0(n91), .S1(N11), .Y(n3) );
  MX4X1M U123 ( .A(\FIFO[0][1] ), .B(\FIFO[1][1] ), .C(\FIFO[2][1] ), .D(
        \FIFO[3][1] ), .S0(n92), .S1(N11), .Y(n4) );
endmodule


module READ_EMPTY_ADDR_WIDTH3 ( CLK, RST, R_INC, W_PTR_SYNC, EMPTY, R_ADDR, 
        R_PTR );
  input [3:0] W_PTR_SYNC;
  output [2:0] R_ADDR;
  output [3:0] R_PTR;
  input CLK, RST, R_INC;
  output EMPTY;
  wire   n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n1, n2, n3;

  DFFRQX2M \R_count_reg[3]  ( .D(n18), .CK(CLK), .RN(RST), .Q(R_PTR[3]) );
  DFFRQX2M \R_count_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(R_ADDR[2]) );
  DFFRQX2M \R_count_reg[0]  ( .D(n21), .CK(CLK), .RN(RST), .Q(R_ADDR[0]) );
  DFFRQX2M \R_count_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(R_ADDR[1]) );
  NOR2X2M U3 ( .A(n12), .B(n2), .Y(n11) );
  NAND2X2M U4 ( .A(R_INC), .B(n13), .Y(n12) );
  INVX2M U5 ( .A(n13), .Y(EMPTY) );
  CLKXOR2X2M U6 ( .A(n2), .B(n3), .Y(R_PTR[0]) );
  CLKXOR2X2M U7 ( .A(n2), .B(n12), .Y(n21) );
  OAI32X1M U8 ( .A0(n12), .A1(R_ADDR[1]), .A2(n2), .B0(n11), .B1(n3), .Y(n20)
         );
  XNOR2X2M U9 ( .A(R_PTR[1]), .B(W_PTR_SYNC[1]), .Y(n14) );
  NAND4X2M U10 ( .A(n14), .B(n15), .C(n16), .D(n17), .Y(n13) );
  CLKXOR2X2M U11 ( .A(n1), .B(R_PTR[3]), .Y(n16) );
  XNOR2X2M U12 ( .A(R_PTR[2]), .B(W_PTR_SYNC[2]), .Y(n17) );
  XNOR2X2M U13 ( .A(R_PTR[0]), .B(W_PTR_SYNC[0]), .Y(n15) );
  XNOR2X2M U14 ( .A(R_ADDR[2]), .B(n10), .Y(n19) );
  NAND2X2M U15 ( .A(n11), .B(R_ADDR[1]), .Y(n10) );
  INVX2M U16 ( .A(R_ADDR[1]), .Y(n3) );
  CLKXOR2X2M U17 ( .A(R_ADDR[2]), .B(R_ADDR[1]), .Y(R_PTR[1]) );
  OAI2BB2X1M U18 ( .B0(n6), .B1(n7), .A0N(n7), .A1N(R_PTR[3]), .Y(n18) );
  AOI2B1X1M U19 ( .A1N(R_PTR[3]), .A0(n8), .B0(n9), .Y(n6) );
  NAND4X2M U20 ( .A(R_ADDR[2]), .B(R_ADDR[1]), .C(R_INC), .D(R_ADDR[0]), .Y(n7) );
  NAND4BBX1M U21 ( .AN(W_PTR_SYNC[1]), .BN(W_PTR_SYNC[0]), .C(W_PTR_SYNC[2]), 
        .D(n1), .Y(n8) );
  INVX2M U22 ( .A(R_ADDR[0]), .Y(n2) );
  INVX2M U23 ( .A(W_PTR_SYNC[3]), .Y(n1) );
  CLKXOR2X2M U24 ( .A(R_ADDR[2]), .B(R_PTR[3]), .Y(R_PTR[2]) );
  NOR4X1M U25 ( .A(W_PTR_SYNC[2]), .B(W_PTR_SYNC[1]), .C(W_PTR_SYNC[0]), .D(n1), .Y(n9) );
endmodule


module WRITE_FULL_ADDR_WIDTH3 ( CLK, RST, W_INC, R_PTR_SYNC, FULL, W_ADDR, 
        W_PTR, MEM_W_EN );
  input [3:0] R_PTR_SYNC;
  output [2:0] W_ADDR;
  output [3:0] W_PTR;
  input CLK, RST, W_INC;
  output FULL, MEM_W_EN;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n1, n2, n3;

  DFFRQX2M \W_count_reg[3]  ( .D(n20), .CK(CLK), .RN(RST), .Q(W_PTR[3]) );
  DFFRQX2M \W_count_reg[2]  ( .D(n21), .CK(CLK), .RN(RST), .Q(W_ADDR[2]) );
  DFFRQX2M \W_count_reg[0]  ( .D(n23), .CK(CLK), .RN(RST), .Q(W_ADDR[0]) );
  DFFRQX2M \W_count_reg[1]  ( .D(n22), .CK(CLK), .RN(RST), .Q(W_ADDR[1]) );
  INVX2M U3 ( .A(n14), .Y(MEM_W_EN) );
  NAND2X2M U4 ( .A(W_INC), .B(n15), .Y(n14) );
  NOR2X2M U5 ( .A(n14), .B(n2), .Y(n13) );
  INVX2M U6 ( .A(n15), .Y(FULL) );
  OAI32X1M U7 ( .A0(n14), .A1(W_ADDR[1]), .A2(n2), .B0(n13), .B1(n3), .Y(n22)
         );
  XNOR2X2M U8 ( .A(W_PTR[0]), .B(R_PTR_SYNC[0]), .Y(n19) );
  XNOR2X2M U9 ( .A(W_ADDR[2]), .B(n3), .Y(W_PTR[1]) );
  XNOR2X2M U10 ( .A(W_ADDR[0]), .B(n3), .Y(W_PTR[0]) );
  XNOR2X2M U11 ( .A(W_ADDR[0]), .B(n14), .Y(n23) );
  XNOR2X2M U12 ( .A(W_ADDR[2]), .B(n12), .Y(n21) );
  NAND2X2M U13 ( .A(n13), .B(W_ADDR[1]), .Y(n12) );
  NAND4X2M U14 ( .A(n16), .B(n17), .C(n18), .D(n19), .Y(n15) );
  CLKXOR2X2M U15 ( .A(W_PTR[3]), .B(R_PTR_SYNC[3]), .Y(n16) );
  XNOR2X2M U16 ( .A(n1), .B(W_PTR[2]), .Y(n17) );
  XNOR2X2M U17 ( .A(W_PTR[1]), .B(R_PTR_SYNC[1]), .Y(n18) );
  OAI2BB2X1M U18 ( .B0(n8), .B1(n9), .A0N(n9), .A1N(W_PTR[3]), .Y(n20) );
  AOI2B1X1M U19 ( .A1N(W_PTR[3]), .A0(n10), .B0(n11), .Y(n8) );
  NAND4X2M U20 ( .A(W_ADDR[2]), .B(W_ADDR[1]), .C(W_INC), .D(W_ADDR[0]), .Y(n9) );
  NAND4BBX1M U21 ( .AN(R_PTR_SYNC[1]), .BN(R_PTR_SYNC[0]), .C(R_PTR_SYNC[3]), 
        .D(n1), .Y(n10) );
  INVX2M U22 ( .A(W_ADDR[1]), .Y(n3) );
  INVX2M U23 ( .A(R_PTR_SYNC[2]), .Y(n1) );
  CLKXOR2X2M U24 ( .A(W_ADDR[2]), .B(W_PTR[3]), .Y(W_PTR[2]) );
  NOR4X1M U25 ( .A(R_PTR_SYNC[3]), .B(R_PTR_SYNC[1]), .C(R_PTR_SYNC[0]), .D(n1), .Y(n11) );
  INVX2M U26 ( .A(W_ADDR[0]), .Y(n2) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_0 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sychronizer[0][1] , \sychronizer[1][1] , \sychronizer[2][1] ,
         \sychronizer[3][1] ;

  DFFRQX2M \sychronizer_reg[3][0]  ( .D(\sychronizer[3][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[3]) );
  DFFRQX2M \sychronizer_reg[1][0]  ( .D(\sychronizer[1][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[1]) );
  DFFRQX2M \sychronizer_reg[2][0]  ( .D(\sychronizer[2][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[2]) );
  DFFRQX2M \sychronizer_reg[0][0]  ( .D(\sychronizer[0][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[0]) );
  DFFRQX2M \sychronizer_reg[0][1]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[0][1] ) );
  DFFRQX2M \sychronizer_reg[1][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[1][1] ) );
  DFFRQX2M \sychronizer_reg[2][1]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[2][1] ) );
  DFFRQX2M \sychronizer_reg[3][1]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[3][1] ) );
endmodule


module BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_1 ( CLK, RST, ASYNC, SYNC );
  input [3:0] ASYNC;
  output [3:0] SYNC;
  input CLK, RST;
  wire   \sychronizer[0][1] , \sychronizer[1][1] , \sychronizer[2][1] ,
         \sychronizer[3][1] ;

  DFFRQX2M \sychronizer_reg[2][0]  ( .D(\sychronizer[2][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[2]) );
  DFFRQX2M \sychronizer_reg[1][0]  ( .D(\sychronizer[1][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[1]) );
  DFFRQX2M \sychronizer_reg[0][0]  ( .D(\sychronizer[0][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[0]) );
  DFFRQX2M \sychronizer_reg[3][0]  ( .D(\sychronizer[3][1] ), .CK(CLK), .RN(
        RST), .Q(SYNC[3]) );
  DFFRQX2M \sychronizer_reg[1][1]  ( .D(ASYNC[1]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[1][1] ) );
  DFFRQX2M \sychronizer_reg[2][1]  ( .D(ASYNC[2]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[2][1] ) );
  DFFRQX2M \sychronizer_reg[0][1]  ( .D(ASYNC[0]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[0][1] ) );
  DFFRQX2M \sychronizer_reg[3][1]  ( .D(ASYNC[3]), .CK(CLK), .RN(RST), .Q(
        \sychronizer[3][1] ) );
endmodule


module ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3 ( R_CLK, R_RST, W_CLK, W_RST, W_INC, 
        R_INC, WR_DATA, RD_DATA, FULL, EMPTY );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input R_CLK, R_RST, W_CLK, W_RST, W_INC, R_INC;
  output FULL, EMPTY;
  wire   MEM_W_EN, n1, n2;
  wire   [2:0] W_ADDR;
  wire   [2:0] R_ADDR;
  wire   [3:0] W_PTR_SYNC;
  wire   [3:0] R_PTR;
  wire   [3:0] R_PTR_SYNC;
  wire   [3:0] W_PTR;

  FIFO_MEM_DATA_WIDTH8_ADDR_WIDTH3 U0_FIFO_MEM ( .CLK(W_CLK), .RST(n1), 
        .W_ADDR(W_ADDR), .R_ADDR(R_ADDR), .W_DATA(WR_DATA), .W_EN(MEM_W_EN), 
        .R_DATA(RD_DATA) );
  READ_EMPTY_ADDR_WIDTH3 U0_READ_EMPTY ( .CLK(R_CLK), .RST(R_RST), .R_INC(
        R_INC), .W_PTR_SYNC(W_PTR_SYNC), .EMPTY(EMPTY), .R_ADDR(R_ADDR), 
        .R_PTR(R_PTR) );
  WRITE_FULL_ADDR_WIDTH3 U0_WRITE_FULL ( .CLK(W_CLK), .RST(n1), .W_INC(W_INC), 
        .R_PTR_SYNC(R_PTR_SYNC), .FULL(FULL), .W_ADDR(W_ADDR), .W_PTR(W_PTR), 
        .MEM_W_EN(MEM_W_EN) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_0 W2R_SYNC ( .CLK(R_CLK), .RST(R_RST), 
        .ASYNC(W_PTR), .SYNC(W_PTR_SYNC) );
  BIT_SYNC_NUM_STAGES2_BUS_WIDTH4_1 R2W_SYNC ( .CLK(W_CLK), .RST(n1), .ASYNC(
        R_PTR), .SYNC(R_PTR_SYNC) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(W_RST), .Y(n2) );
endmodule


module PULSE_GEN ( CLK, RST, IN, OUT );
  input CLK, RST, IN;
  output OUT;
  wire   pulse_reg;

  DFFRQX2M pulse_reg_reg ( .D(IN), .CK(CLK), .RN(RST), .Q(pulse_reg) );
  NOR2BX2M U3 ( .AN(IN), .B(pulse_reg), .Y(OUT) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

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
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  NAND2XLM U1 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  XNOR2X2M U3 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U4 ( .A(B[2]), .Y(n7) );
  INVXLM U5 ( .A(B[4]), .Y(n5) );
  INVXLM U6 ( .A(B[5]), .Y(n4) );
  INVXLM U7 ( .A(B[1]), .Y(n8) );
  INVX2M U8 ( .A(A[0]), .Y(n1) );
  INVXLM U9 ( .A(B[3]), .Y(n6) );
  INVXLM U10 ( .A(B[0]), .Y(n9) );
  INVXLM U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
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
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  INVX2M U6 ( .A(n9), .Y(SUM[6]) );
  XNOR2X2M U7 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U8 ( .A(B[7]), .Y(n8) );
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

  ALU_op_size8_rslt_size16_fun_size4_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , 
        \A1[11] , \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , 
        \A1[4] , \A1[3] , \A1[2] , \A1[1] , \A1[0] }), .B({n10, n16, n14, n15, 
        n13, n11, n12, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), 
        .SUM(PRODUCT[15:2]) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n7), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
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
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n5), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n3), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n9), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  CLKXOR2X2M U10 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U13 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U16 ( .A(\ab[0][6] ), .Y(n22) );
  AND2X2M U17 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U18 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U21 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U23 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  AND2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U27 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U28 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U29 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U33 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U34 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U35 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U36 ( .A(A[1]), .Y(n30) );
  XNOR2X2M U37 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U38 ( .A(A[5]), .Y(n26) );
  INVX2M U39 ( .A(A[4]), .Y(n27) );
  INVX2M U40 ( .A(A[2]), .Y(n29) );
  INVX2M U41 ( .A(A[3]), .Y(n28) );
  INVX2M U42 ( .A(A[6]), .Y(n25) );
  INVXLM U43 ( .A(B[2]), .Y(n37) );
  INVXLM U44 ( .A(B[4]), .Y(n35) );
  INVXLM U45 ( .A(B[5]), .Y(n34) );
  INVX2M U46 ( .A(A[0]), .Y(n31) );
  INVXLM U47 ( .A(B[1]), .Y(n38) );
  INVXLM U48 ( .A(B[3]), .Y(n36) );
  INVX2M U49 ( .A(B[6]), .Y(n33) );
  INVXLM U50 ( .A(A[7]), .Y(n24) );
  INVXLM U51 ( .A(B[7]), .Y(n32) );
  INVXLM U52 ( .A(B[0]), .Y(n39) );
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
endmodule


module ALU_op_size8_rslt_size16_fun_size4_DW_div_uns_1 ( a, b, quotient, 
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
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] ,
         \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] ,
         \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] ,
         \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] ,
         \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] ,
         \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] ,
         \u_div/PartRem[1][2] , \u_div/PartRem[1][3] , \u_div/PartRem[1][4] ,
         \u_div/PartRem[1][5] , \u_div/PartRem[1][6] , \u_div/PartRem[1][7] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[4][1] ,
         \u_div/PartRem[6][1] , n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86;
  wire   [7:0] \u_div/BInv ;

  ADDFHX8M \u_div/u_fa_PartRem_0_6_1  ( .A(n43), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX8M \u_div/u_fa_PartRem_0_4_2  ( .A(n33), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_4  ( .A(n41), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_5  ( .A(n42), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(n40), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_3  ( .A(n37), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(n39), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX1M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/BInv [1]), .B(
        \u_div/CryTmp[0][1] ), .CI(\u_div/PartRem[1][1] ), .CO(
        \u_div/CryTmp[0][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(n30), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_1  ( .A(n46), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(n6), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX1M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_4  ( .A(n2), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/CryTmp[5][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/PartRem[6][1] ), .CO(\u_div/CryTmp[5][2] ), .S(\u_div/SumTmp[5][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_5_2  ( .A(n32), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_3  ( .A(n38), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_0  ( .A(a[0]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[0][1] ) );
  CLKMX2X2M U1 ( .A(n32), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n37)
         );
  CLKNAND2X4M U2 ( .A(n3), .B(n4), .Y(n32) );
  INVX3M U3 ( .A(a[7]), .Y(n48) );
  INVX4M U4 ( .A(n82), .Y(quotient[5]) );
  INVX2M U5 ( .A(\u_div/CryTmp[5][3] ), .Y(n62) );
  MXI2X6M U6 ( .A(n58), .B(n59), .S0(n60), .Y(n46) );
  NOR2X4M U7 ( .A(n62), .B(n61), .Y(n60) );
  INVX1M U8 ( .A(n73), .Y(n27) );
  NOR2X3M U9 ( .A(n75), .B(n74), .Y(n73) );
  CLKNAND2X4M U10 ( .A(a[2]), .B(n27), .Y(n28) );
  INVX4M U11 ( .A(n85), .Y(quotient[2]) );
  NAND2BX4M U12 ( .AN(n75), .B(n84), .Y(n85) );
  NAND2X2M U13 ( .A(n36), .B(\u_div/BInv [2]), .Y(n18) );
  CLKMX2X4M U14 ( .A(n36), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n40)
         );
  NOR2X6M U15 ( .A(n68), .B(n67), .Y(n66) );
  INVX3M U16 ( .A(\u_div/CryTmp[4][4] ), .Y(n68) );
  INVX8M U17 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  CLKINVX8M U18 ( .A(n67), .Y(n47) );
  NAND2XLM U19 ( .A(\u_div/PartRem[4][1] ), .B(n21), .Y(n22) );
  NAND2X2M U20 ( .A(n33), .B(n11), .Y(n12) );
  CLKINVX1M U21 ( .A(quotient[4]), .Y(n11) );
  INVXLM U22 ( .A(n30), .Y(n54) );
  NAND2X4M U23 ( .A(n28), .B(n29), .Y(n30) );
  MXI2X6M U24 ( .A(n8), .B(n7), .S0(n9), .Y(n6) );
  INVX14M U25 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  MXI2X4M U26 ( .A(n34), .B(n35), .S0(quotient[5]), .Y(n33) );
  INVX2M U27 ( .A(\u_div/SumTmp[5][1] ), .Y(n35) );
  INVX2M U28 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  NAND2BX8M U29 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n74) );
  MXI2XLM U30 ( .A(n39), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n52)
         );
  INVX2M U31 ( .A(n61), .Y(n79) );
  NAND2X8M U32 ( .A(n47), .B(\u_div/BInv [3]), .Y(n61) );
  INVX8M U33 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  NAND2X2M U34 ( .A(n25), .B(n26), .Y(\u_div/PartRem[6][1] ) );
  NAND2X2M U35 ( .A(a[6]), .B(n24), .Y(n25) );
  INVX2M U36 ( .A(a[3]), .Y(n7) );
  INVX2M U37 ( .A(\u_div/SumTmp[3][0] ), .Y(n8) );
  MXI2X4M U38 ( .A(n64), .B(n65), .S0(n66), .Y(\u_div/PartRem[4][1] ) );
  NAND2X4M U39 ( .A(n83), .B(n84), .Y(n67) );
  NOR2X2M U40 ( .A(b[5]), .B(b[4]), .Y(n83) );
  CLKAND2X4M U41 ( .A(\u_div/CryTmp[4][4] ), .B(n47), .Y(quotient[4]) );
  OR3X4M U42 ( .A(n80), .B(b[2]), .C(b[1]), .Y(n10) );
  INVX2M U43 ( .A(\u_div/CryTmp[7][1] ), .Y(n80) );
  NAND2BX2M U44 ( .AN(\u_div/BInv [0]), .B(n48), .Y(\u_div/CryTmp[7][1] ) );
  NAND2X4M U45 ( .A(\u_div/BInv [1]), .B(\u_div/PartRem[4][1] ), .Y(n16) );
  NAND2XLM U46 ( .A(n43), .B(n81), .Y(n3) );
  NOR2X12M U47 ( .A(n10), .B(n61), .Y(quotient[7]) );
  AND2X2M U48 ( .A(n79), .B(\u_div/BInv [2]), .Y(n1) );
  MX2X2M U49 ( .A(n37), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n2) );
  CLKINVX4M U50 ( .A(n81), .Y(quotient[6]) );
  NAND2X1M U51 ( .A(\u_div/SumTmp[3][1] ), .B(quotient[3]), .Y(n23) );
  CLKINVX2M U52 ( .A(quotient[3]), .Y(n21) );
  CLKMX2X2M U53 ( .A(n38), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n41)
         );
  NOR2X3M U54 ( .A(n71), .B(n70), .Y(quotient[3]) );
  MXI2X1M U55 ( .A(n6), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n53) );
  INVX4M U56 ( .A(n86), .Y(quotient[1]) );
  NAND2BX4M U57 ( .AN(b[7]), .B(\u_div/CryTmp[1][7] ), .Y(n86) );
  MX2X1M U58 ( .A(n46), .B(\u_div/SumTmp[4][1] ), .S0(quotient[4]), .Y(n36) );
  NAND2X1M U59 ( .A(\u_div/SumTmp[6][1] ), .B(quotient[6]), .Y(n4) );
  NAND2X2M U60 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/PartRem[4][1] ), .Y(n15)
         );
  OR2X8M U61 ( .A(n70), .B(n71), .Y(n9) );
  NAND2XLM U62 ( .A(\u_div/SumTmp[4][2] ), .B(quotient[4]), .Y(n13) );
  NAND2X2M U63 ( .A(n12), .B(n13), .Y(n38) );
  XOR3XLM U64 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/BInv [1]), .C(
        \u_div/PartRem[4][1] ), .Y(\u_div/SumTmp[3][1] ) );
  NAND2X1M U65 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/BInv [1]), .Y(n14) );
  NAND3X4M U66 ( .A(n14), .B(n15), .C(n16), .Y(\u_div/CryTmp[3][2] ) );
  XOR2XLM U67 ( .A(n36), .B(\u_div/BInv [2]), .Y(n17) );
  XOR2XLM U68 ( .A(n17), .B(\u_div/CryTmp[3][2] ), .Y(\u_div/SumTmp[3][2] ) );
  NAND2X1M U69 ( .A(n36), .B(\u_div/CryTmp[3][2] ), .Y(n19) );
  NAND2X2M U70 ( .A(\u_div/BInv [2]), .B(\u_div/CryTmp[3][2] ), .Y(n20) );
  NAND3X2M U71 ( .A(n18), .B(n19), .C(n20), .Y(\u_div/CryTmp[3][3] ) );
  NAND2X2M U72 ( .A(n22), .B(n23), .Y(n39) );
  INVX4M U73 ( .A(\u_div/CryTmp[3][5] ), .Y(n71) );
  INVX2M U74 ( .A(quotient[6]), .Y(n24) );
  INVX8M U75 ( .A(n74), .Y(n84) );
  XOR2XLM U76 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n44) );
  XNOR2XLM U77 ( .A(\u_div/BInv [0]), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  NAND2X2M U78 ( .A(\u_div/SumTmp[6][0] ), .B(quotient[6]), .Y(n26) );
  CLKINVX4M U79 ( .A(\u_div/CryTmp[2][6] ), .Y(n75) );
  CLKNAND2X2M U80 ( .A(\u_div/SumTmp[2][0] ), .B(n73), .Y(n29) );
  INVX2M U81 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  MXI2X2M U82 ( .A(n54), .B(n72), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  INVXLM U83 ( .A(\u_div/PartRem[6][1] ), .Y(n34) );
  MXI2XLM U84 ( .A(n53), .B(n69), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  CLKINVX1M U85 ( .A(\u_div/SumTmp[1][2] ), .Y(n69) );
  INVX2M U86 ( .A(n52), .Y(\u_div/PartRem[2][3] ) );
  NAND2X4M U87 ( .A(\u_div/CryTmp[6][2] ), .B(n1), .Y(n81) );
  CLKINVX2M U88 ( .A(\u_div/SumTmp[5][0] ), .Y(n59) );
  NAND2BX1M U89 ( .AN(n62), .B(n79), .Y(n82) );
  MXI2X1M U90 ( .A(n40), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n51)
         );
  INVX2M U91 ( .A(n49), .Y(\u_div/PartRem[2][6] ) );
  MX2XLM U92 ( .A(n2), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n42) );
  MXI2X1M U93 ( .A(n49), .B(n55), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVX2M U94 ( .A(\u_div/SumTmp[1][6] ), .Y(n55) );
  MXI2X1M U95 ( .A(n51), .B(n57), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX2M U96 ( .A(\u_div/SumTmp[1][4] ), .Y(n57) );
  INVX2M U97 ( .A(a[4]), .Y(n64) );
  INVX2M U98 ( .A(\u_div/SumTmp[4][0] ), .Y(n65) );
  MXI2X6M U99 ( .A(n48), .B(n44), .S0(quotient[7]), .Y(n43) );
  OR2X2M U100 ( .A(\u_div/BInv [0]), .B(a[6]), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U101 ( .A(n50), .Y(\u_div/PartRem[2][5] ) );
  INVX2M U102 ( .A(n51), .Y(\u_div/PartRem[2][4] ) );
  INVX2M U103 ( .A(n53), .Y(\u_div/PartRem[2][2] ) );
  MXI2X1M U104 ( .A(n50), .B(n56), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  INVX2M U105 ( .A(\u_div/SumTmp[1][5] ), .Y(n56) );
  INVX2M U106 ( .A(\u_div/SumTmp[1][1] ), .Y(n72) );
  MXI2XLM U107 ( .A(n52), .B(n63), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  INVX2M U108 ( .A(\u_div/SumTmp[1][3] ), .Y(n63) );
  INVX2M U109 ( .A(a[5]), .Y(n58) );
  NAND2XLM U110 ( .A(n84), .B(\u_div/BInv [5]), .Y(n70) );
  INVX2M U111 ( .A(a[1]), .Y(n76) );
  INVX2M U112 ( .A(\u_div/SumTmp[1][0] ), .Y(n77) );
  CLKINVX1M U113 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  CLKINVX1M U114 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  MXI2XLM U115 ( .A(n42), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n49)
         );
  MXI2X1M U116 ( .A(n41), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n50)
         );
  NOR2BX8M U117 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n78) );
  INVX2M U118 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  MXI2X6M U119 ( .A(n76), .B(n77), .S0(n78), .Y(\u_div/PartRem[1][1] ) );
endmodule


module ALU_op_size8_rslt_size16_fun_size4 ( CLK, RST, ALU_EN, A, B, ALU_FUN, 
        ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input CLK, RST, ALU_EN;
  output OUT_VALID;
  wire   N20, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N132, N158, N159, n17, n23,
         n24, n38, n40, n41, n42, n44, n46, n54, n61, n69, n77, n85, n93, n95,
         n96, n100, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n18, n19, n20, n21,
         n22, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n39, n43, n45, n47, n48, n49, n50, n51, n52, n53, n55, n56, n57, n58,
         n59, n60, n62, n63, n64, n65, n66, n67, n68, n70, n71, n72, n73, n74,
         n75, n76, n78, n79, n80, n81, n82, n83, n84, n86, n87, n88, n89, n90,
         n91, n92, n94, n97, n98, n99, n101, n102, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184;

  ALU_op_size8_rslt_size16_fun_size4_DW01_sub_0 sub_50 ( .A({1'b0, n10, n19, 
        n18, n16, n15, n14, n13, A[0]}), .B({1'b0, B[7], n12, B[5:0]}), .CI(
        1'b0), .DIFF({N108, N107, N106, N105, N104, N103, N102, N101, N100})
         );
  ALU_op_size8_rslt_size16_fun_size4_DW01_add_0 add_47 ( .A({1'b0, n10, n19, 
        n18, n16, n15, n14, n13, A[0]}), .B({1'b0, B[7], n12, B[5:0]}), .CI(
        1'b0), .SUM({N99, N98, N97, N96, N95, N94, N93, N92, N91}) );
  ALU_op_size8_rslt_size16_fun_size4_DW02_mult_0 mult_53 ( .A({n10, n19, n18, 
        n16, n15, n14, n13, A[0]}), .B({B[7], n12, B[5:0]}), .TC(1'b0), 
        .PRODUCT({N124, N123, N122, N121, N120, N119, N118, N117, N116, N115, 
        N114, N113, N112, N111, N110, N109}) );
  ALU_op_size8_rslt_size16_fun_size4_DW_div_uns_1 div_56 ( .a({n20, n19, n18, 
        n16, n15, n14, n13, A[0]}), .b({B[7], n12, B[5:0]}), .quotient({N132, 
        N131, N130, N129, N128, N127, N126, N125}) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(n117), .CK(CLK), .RN(RST), .Q(ALU_OUT[0]) );
  DFFRQX2M OUT_VALID_reg ( .D(N20), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(n125), .CK(CLK), .RN(RST), .Q(ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[1]  ( .D(n118), .CK(CLK), .RN(RST), .Q(ALU_OUT[1]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(n124), .CK(CLK), .RN(RST), .Q(ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(n123), .CK(CLK), .RN(RST), .Q(ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(n122), .CK(CLK), .RN(RST), .Q(ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(n121), .CK(CLK), .RN(RST), .Q(ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(n120), .CK(CLK), .RN(RST), .Q(ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(n119), .CK(CLK), .RN(RST), .Q(ALU_OUT[2]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(n132), .CK(CLK), .RN(RST), .Q(ALU_OUT[15])
         );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(n131), .CK(CLK), .RN(RST), .Q(ALU_OUT[14])
         );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(n130), .CK(CLK), .RN(RST), .Q(ALU_OUT[13])
         );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(n129), .CK(CLK), .RN(RST), .Q(ALU_OUT[12])
         );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(n128), .CK(CLK), .RN(RST), .Q(ALU_OUT[11])
         );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(n127), .CK(CLK), .RN(RST), .Q(ALU_OUT[10])
         );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(n126), .CK(CLK), .RN(RST), .Q(ALU_OUT[9]) );
  BUFX4M U3 ( .A(A[7]), .Y(n20) );
  OAI2B1X4M U4 ( .A1N(N125), .A0(n28), .B0(n133), .Y(n117) );
  BUFX2M U7 ( .A(A[5]), .Y(n18) );
  BUFX2M U8 ( .A(A[6]), .Y(n19) );
  BUFX6M U9 ( .A(B[6]), .Y(n12) );
  BUFX2M U10 ( .A(A[2]), .Y(n14) );
  OAI22X1M U11 ( .A0(n46), .A1(n100), .B0(ALU_FUN[3]), .B1(n116), .Y(n114) );
  NOR3X2M U12 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .C(n139), .Y(n103) );
  AOI21XLM U13 ( .A0(n141), .A1(n171), .B0(B[1]), .Y(n142) );
  INVX2M U14 ( .A(ALU_EN), .Y(n137) );
  INVX2M U15 ( .A(n23), .Y(n83) );
  INVX2M U16 ( .A(n175), .Y(n94) );
  INVX2M U17 ( .A(n11), .Y(n88) );
  AO22X1M U18 ( .A0(N97), .A1(n7), .B0(N115), .B1(n136), .Y(n71) );
  OAI21BX1M U19 ( .A0(n3), .A1(n103), .B0N(n137), .Y(n86) );
  NOR2X2M U20 ( .A(n46), .B(n100), .Y(n3) );
  BUFX2M U21 ( .A(n24), .Y(n11) );
  NAND4BX1M U22 ( .AN(n46), .B(n82), .C(ALU_EN), .D(n140), .Y(n24) );
  NAND2X2M U23 ( .A(ALU_EN), .B(n114), .Y(n23) );
  NOR3X2M U24 ( .A(n46), .B(n137), .C(n140), .Y(n17) );
  NAND2BX2M U25 ( .AN(n25), .B(n95), .Y(n175) );
  INVX2M U26 ( .A(n21), .Y(n136) );
  NAND3BX2M U27 ( .AN(n140), .B(n27), .C(n82), .Y(n21) );
  NOR3X2M U28 ( .A(n139), .B(n25), .C(n100), .Y(n4) );
  INVX2M U29 ( .A(n4), .Y(n174) );
  AND4X2M U30 ( .A(n17), .B(n166), .C(n82), .D(n81), .Y(n91) );
  INVX2M U31 ( .A(N159), .Y(n81) );
  INVX2M U32 ( .A(n28), .Y(n134) );
  NOR2X2M U33 ( .A(n42), .B(n82), .Y(n5) );
  NOR2X2M U34 ( .A(n82), .B(n26), .Y(n6) );
  INVX2M U35 ( .A(n22), .Y(n27) );
  INVX2M U36 ( .A(n26), .Y(n135) );
  OAI21X2M U37 ( .A0(n115), .A1(n137), .B0(n42), .Y(N20) );
  NOR4X1M U38 ( .A(n95), .B(n103), .C(n139), .D(n114), .Y(n115) );
  AND3X2M U39 ( .A(n102), .B(n101), .C(n99), .Y(n133) );
  NOR3BX2M U40 ( .AN(n92), .B(n91), .C(n90), .Y(n102) );
  AOI21BX2M U41 ( .A0(N108), .A1(n6), .B0N(n23), .Y(n104) );
  OAI222X1M U42 ( .A0(n14), .A1(n175), .B0(n174), .B1(n180), .C0(n171), .C1(
        n40), .Y(n54) );
  OAI222X1M U43 ( .A0(n15), .A1(n175), .B0(n174), .B1(n179), .C0(n180), .C1(
        n40), .Y(n61) );
  OAI222X1M U44 ( .A0(n16), .A1(n175), .B0(n174), .B1(n178), .C0(n40), .C1(
        n179), .Y(n69) );
  OAI222X1M U45 ( .A0(n18), .A1(n175), .B0(n174), .B1(n177), .C0(n40), .C1(
        n178), .Y(n77) );
  OAI222X1M U46 ( .A0(n19), .A1(n175), .B0(n174), .B1(n176), .C0(n40), .C1(
        n177), .Y(n85) );
  OAI221X1M U47 ( .A0(n180), .A1(n11), .B0(n14), .B1(n23), .C0(n175), .Y(n37)
         );
  OAI221X1M U48 ( .A0(n178), .A1(n11), .B0(n16), .B1(n23), .C0(n175), .Y(n56)
         );
  OAI221X1M U49 ( .A0(n177), .A1(n11), .B0(n18), .B1(n23), .C0(n175), .Y(n63)
         );
  OAI221X1M U50 ( .A0(n180), .A1(n86), .B0(n14), .B1(n11), .C0(n174), .Y(n36)
         );
  OAI221X1M U51 ( .A0(n178), .A1(n86), .B0(n16), .B1(n11), .C0(n174), .Y(n55)
         );
  OAI221X1M U52 ( .A0(n177), .A1(n86), .B0(n18), .B1(n11), .C0(n174), .Y(n62)
         );
  NOR2X2M U53 ( .A(n116), .B(ALU_FUN[0]), .Y(n95) );
  NAND4X2M U54 ( .A(ALU_FUN[3]), .B(ALU_FUN[2]), .C(ALU_EN), .D(n140), .Y(n42)
         );
  OAI221X1M U55 ( .A0(n171), .A1(n11), .B0(n13), .B1(n23), .C0(n175), .Y(n30)
         );
  OAI221X1M U56 ( .A0(n179), .A1(n11), .B0(n15), .B1(n23), .C0(n175), .Y(n49)
         );
  OAI221X1M U57 ( .A0(n176), .A1(n11), .B0(n19), .B1(n23), .C0(n175), .Y(n70)
         );
  OAI221X1M U58 ( .A0(n171), .A1(n86), .B0(n13), .B1(n11), .C0(n174), .Y(n29)
         );
  OAI221X1M U59 ( .A0(n176), .A1(n86), .B0(n19), .B1(n11), .C0(n174), .Y(n68)
         );
  OAI221X1M U60 ( .A0(n179), .A1(n86), .B0(n15), .B1(n11), .C0(n174), .Y(n48)
         );
  NAND3X2M U61 ( .A(ALU_FUN[3]), .B(ALU_EN), .C(n95), .Y(n40) );
  NAND2X2M U62 ( .A(ALU_FUN[3]), .B(n139), .Y(n46) );
  INVX2M U63 ( .A(ALU_FUN[2]), .Y(n139) );
  NAND3BX2M U64 ( .AN(n140), .B(ALU_FUN[0]), .C(n27), .Y(n28) );
  INVX2M U65 ( .A(ALU_FUN[1]), .Y(n140) );
  NAND2X2M U66 ( .A(ALU_FUN[1]), .B(ALU_FUN[2]), .Y(n116) );
  NAND3BX2M U67 ( .AN(ALU_FUN[0]), .B(N159), .C(n31), .Y(n92) );
  INVX2M U68 ( .A(n42), .Y(n31) );
  INVX2M U69 ( .A(ALU_FUN[0]), .Y(n82) );
  OR2X2M U70 ( .A(ALU_FUN[1]), .B(n82), .Y(n100) );
  OR2X2M U71 ( .A(ALU_FUN[3]), .B(n137), .Y(n25) );
  OR2X2M U72 ( .A(ALU_FUN[1]), .B(n22), .Y(n26) );
  OR2X2M U73 ( .A(ALU_FUN[2]), .B(n25), .Y(n22) );
  AO22X1M U74 ( .A0(N93), .A1(n7), .B0(N111), .B1(n136), .Y(n39) );
  AO22X1M U75 ( .A0(N94), .A1(n7), .B0(N112), .B1(n136), .Y(n50) );
  AO22X1M U76 ( .A0(N95), .A1(n7), .B0(N113), .B1(n136), .Y(n57) );
  AO22X1M U77 ( .A0(N96), .A1(n7), .B0(N114), .B1(n136), .Y(n64) );
  NOR2X2M U78 ( .A(ALU_FUN[0]), .B(n26), .Y(n7) );
  INVX2M U79 ( .A(n13), .Y(n171) );
  INVX2M U80 ( .A(n14), .Y(n180) );
  INVX2M U81 ( .A(n18), .Y(n177) );
  INVX2M U82 ( .A(n16), .Y(n178) );
  INVX2M U83 ( .A(n19), .Y(n176) );
  INVX2M U84 ( .A(n15), .Y(n179) );
  NAND3BX2M U85 ( .AN(n35), .B(n34), .C(n33), .Y(n118) );
  AO22X1M U86 ( .A0(N92), .A1(n7), .B0(N110), .B1(n136), .Y(n35) );
  NOR3BX2M U87 ( .AN(n92), .B(n32), .C(n38), .Y(n33) );
  BUFX2M U88 ( .A(A[4]), .Y(n16) );
  NAND3BX2M U89 ( .AN(n47), .B(n45), .C(n43), .Y(n119) );
  AOI222XLM U90 ( .A0(n15), .A1(n5), .B0(n167), .B1(n37), .C0(B[2]), .C1(n36), 
        .Y(n45) );
  AOI211X2M U91 ( .A0(ALU_OUT[2]), .A1(n137), .B0(n39), .C0(n54), .Y(n43) );
  BUFX2M U92 ( .A(A[3]), .Y(n15) );
  NAND2X2M U93 ( .A(n112), .B(n104), .Y(n131) );
  AOI22X1M U94 ( .A0(N123), .A1(n136), .B0(ALU_OUT[14]), .B1(n137), .Y(n112)
         );
  BUFX2M U95 ( .A(A[1]), .Y(n13) );
  NAND2X2M U96 ( .A(n113), .B(n104), .Y(n132) );
  AOI22X1M U97 ( .A0(N124), .A1(n136), .B0(ALU_OUT[15]), .B1(n137), .Y(n113)
         );
  NAND2X2M U98 ( .A(n109), .B(n104), .Y(n128) );
  AOI22X1M U99 ( .A0(N120), .A1(n136), .B0(ALU_OUT[11]), .B1(n137), .Y(n109)
         );
  NAND2X2M U100 ( .A(n111), .B(n104), .Y(n130) );
  AOI22X1M U101 ( .A0(N122), .A1(n136), .B0(ALU_OUT[13]), .B1(n137), .Y(n111)
         );
  NAND3BX2M U102 ( .AN(n53), .B(n52), .C(n51), .Y(n120) );
  AOI211X2M U103 ( .A0(ALU_OUT[3]), .A1(n137), .B0(n50), .C0(n61), .Y(n51) );
  AO22XLM U104 ( .A0(N103), .A1(n6), .B0(N128), .B1(n134), .Y(n53) );
  NAND2X2M U105 ( .A(n110), .B(n104), .Y(n129) );
  AOI22X1M U106 ( .A0(N121), .A1(n136), .B0(ALU_OUT[12]), .B1(n137), .Y(n110)
         );
  NAND2X2M U107 ( .A(n108), .B(n104), .Y(n127) );
  AOI22X1M U108 ( .A0(N119), .A1(n136), .B0(ALU_OUT[10]), .B1(n137), .Y(n108)
         );
  BUFX2M U109 ( .A(A[7]), .Y(n10) );
  OAI2B11X2M U110 ( .A1N(ALU_OUT[8]), .A0(ALU_EN), .B0(n104), .C0(n105), .Y(
        n125) );
  AOI221XLM U111 ( .A0(N117), .A1(n136), .B0(N99), .B1(n7), .C0(n106), .Y(n105) );
  NOR3BX2M U112 ( .AN(n95), .B(n173), .C(n137), .Y(n106) );
  NAND3BX2M U113 ( .AN(n74), .B(n73), .C(n72), .Y(n123) );
  AO22XLM U114 ( .A0(N106), .A1(n6), .B0(N131), .B1(n134), .Y(n74) );
  AOI211X2M U115 ( .A0(ALU_OUT[6]), .A1(n137), .B0(n71), .C0(n85), .Y(n72) );
  NAND3BX2M U116 ( .AN(n60), .B(n59), .C(n58), .Y(n121) );
  AOI222XLM U117 ( .A0(n18), .A1(n5), .B0(n183), .B1(n56), .C0(B[4]), .C1(n55), 
        .Y(n59) );
  AOI211X2M U118 ( .A0(ALU_OUT[4]), .A1(n137), .B0(n57), .C0(n69), .Y(n58) );
  AO22XLM U119 ( .A0(N104), .A1(n6), .B0(N129), .B1(n134), .Y(n60) );
  NAND2X2M U120 ( .A(n107), .B(n104), .Y(n126) );
  AOI22X1M U121 ( .A0(N118), .A1(n136), .B0(ALU_OUT[9]), .B1(n137), .Y(n107)
         );
  NAND3BX2M U122 ( .AN(n80), .B(n79), .C(n78), .Y(n124) );
  AOI211X2M U123 ( .A0(ALU_OUT[7]), .A1(n137), .B0(n76), .C0(n93), .Y(n78) );
  AO22X1M U124 ( .A0(N116), .A1(n136), .B0(N107), .B1(n6), .Y(n80) );
  OAI222X1M U125 ( .A0(n13), .A1(n175), .B0(n171), .B1(n174), .C0(n181), .C1(
        n40), .Y(n38) );
  INVX2M U126 ( .A(A[0]), .Y(n181) );
  AO22X1M U127 ( .A0(N91), .A1(n7), .B0(N109), .B1(n136), .Y(n98) );
  INVX2M U128 ( .A(n141), .Y(n170) );
  INVX2M U129 ( .A(n86), .Y(n87) );
  AOI22X1M U130 ( .A0(n13), .A1(n5), .B0(N100), .B1(n6), .Y(n101) );
  INVX2M U131 ( .A(n152), .Y(n172) );
  NAND3BX2M U132 ( .AN(n67), .B(n66), .C(n65), .Y(n122) );
  AOI222XLM U133 ( .A0(n19), .A1(n5), .B0(n182), .B1(n63), .C0(B[5]), .C1(n62), 
        .Y(n66) );
  AOI211X2M U134 ( .A0(ALU_OUT[5]), .A1(n137), .B0(n64), .C0(n77), .Y(n65) );
  MXI2X1M U135 ( .A(n8), .B(n9), .S0(A[0]), .Y(n90) );
  NOR2X2M U136 ( .A(n94), .B(n84), .Y(n8) );
  NOR2X2M U137 ( .A(n4), .B(n89), .Y(n9) );
  INVXLM U138 ( .A(B[2]), .Y(n167) );
  AO22X1M U139 ( .A0(ALU_OUT[1]), .A1(n137), .B0(n41), .B1(ALU_FUN[0]), .Y(n32) );
  OAI21X2M U140 ( .A0(n42), .A1(n180), .B0(n44), .Y(n41) );
  AOI22X1M U141 ( .A0(N158), .A1(n17), .B0(N101), .B1(n135), .Y(n44) );
  INVX2M U142 ( .A(n166), .Y(N158) );
  AO2B2X2M U143 ( .B0(N98), .B1(n7), .A0(n96), .A1N(B[7]), .Y(n76) );
  INVXLM U144 ( .A(B[4]), .Y(n183) );
  INVXLM U145 ( .A(B[5]), .Y(n182) );
  INVXLM U146 ( .A(B[1]), .Y(n184) );
  AOI211X2M U147 ( .A0(ALU_OUT[0]), .A1(n137), .B0(n98), .C0(n97), .Y(n99) );
  AOI222XLM U148 ( .A0(n16), .A1(n5), .B0(n168), .B1(n49), .C0(B[3]), .C1(n48), 
        .Y(n52) );
  INVXLM U149 ( .A(B[3]), .Y(n168) );
  AO22XLM U150 ( .A0(N102), .A1(n6), .B0(N127), .B1(n134), .Y(n47) );
  INVXLM U151 ( .A(B[0]), .Y(n138) );
  MX2XLM U152 ( .A(n94), .B(n4), .S0(B[0]), .Y(n97) );
  MX2XLM U153 ( .A(n83), .B(n88), .S0(B[0]), .Y(n84) );
  MX2XLM U154 ( .A(n88), .B(n87), .S0(B[0]), .Y(n89) );
  NAND2XLM U155 ( .A(B[7]), .B(n173), .Y(n164) );
  INVX2M U156 ( .A(n12), .Y(n169) );
  AO22XLM U157 ( .A0(N105), .A1(n6), .B0(N130), .B1(n134), .Y(n67) );
  INVXLM U158 ( .A(n10), .Y(n173) );
  AOI32XLM U159 ( .A0(n147), .A1(n157), .A2(n160), .B0(n12), .B1(n176), .Y(
        n148) );
  XNOR2XLM U160 ( .A(n19), .B(n12), .Y(n160) );
  AOI222XLM U161 ( .A0(n10), .A1(n5), .B0(n169), .B1(n70), .C0(n12), .C1(n68), 
        .Y(n73) );
  AOI222XLM U162 ( .A0(N126), .A1(n134), .B0(n184), .B1(n30), .C0(B[1]), .C1(
        n29), .Y(n34) );
  OAI222XLM U163 ( .A0(n10), .A1(n175), .B0(n174), .B1(n173), .C0(n40), .C1(
        n176), .Y(n93) );
  OAI221XLM U164 ( .A0(n173), .A1(n86), .B0(n10), .B1(n11), .C0(n174), .Y(n75)
         );
  OAI221XLM U165 ( .A0(n10), .A1(n23), .B0(n11), .B1(n173), .C0(n175), .Y(n96)
         );
  AOI22XLM U166 ( .A0(B[7]), .A1(n75), .B0(N132), .B1(n134), .Y(n79) );
  NOR2XLM U167 ( .A(n173), .B(B[7]), .Y(n163) );
  NAND2BX1M U168 ( .AN(B[4]), .B(n16), .Y(n156) );
  NAND2BX1M U169 ( .AN(n16), .B(B[4]), .Y(n145) );
  CLKNAND2X2M U170 ( .A(n156), .B(n145), .Y(n158) );
  NOR2X1M U171 ( .A(n168), .B(n15), .Y(n153) );
  NOR2X1M U172 ( .A(n167), .B(n14), .Y(n144) );
  NOR2X1M U173 ( .A(n138), .B(A[0]), .Y(n141) );
  CLKNAND2X2M U174 ( .A(n14), .B(n167), .Y(n155) );
  NAND2BX1M U175 ( .AN(n144), .B(n155), .Y(n150) );
  AOI211X1M U176 ( .A0(n13), .A1(n170), .B0(n150), .C0(n142), .Y(n143) );
  CLKNAND2X2M U177 ( .A(n15), .B(n168), .Y(n154) );
  OAI31X1M U178 ( .A0(n153), .A1(n144), .A2(n143), .B0(n154), .Y(n146) );
  NAND2BX1M U179 ( .AN(n18), .B(B[5]), .Y(n161) );
  OAI211X1M U180 ( .A0(n158), .A1(n146), .B0(n145), .C0(n161), .Y(n147) );
  NAND2BX1M U181 ( .AN(B[5]), .B(n18), .Y(n157) );
  OAI21X1M U182 ( .A0(n163), .A1(n148), .B0(n164), .Y(N159) );
  CLKNAND2X2M U183 ( .A(A[0]), .B(n138), .Y(n151) );
  OA21X1M U184 ( .A0(n151), .A1(n171), .B0(B[1]), .Y(n149) );
  AOI211X1M U185 ( .A0(n151), .A1(n171), .B0(n150), .C0(n149), .Y(n152) );
  AOI31X1M U186 ( .A0(n172), .A1(n155), .A2(n154), .B0(n153), .Y(n159) );
  OAI2B11X1M U187 ( .A1N(n159), .A0(n158), .B0(n157), .C0(n156), .Y(n162) );
  AOI32X1M U188 ( .A0(n162), .A1(n161), .A2(n160), .B0(n19), .B1(n169), .Y(
        n165) );
  AOI2B1X1M U189 ( .A1N(n165), .A0(n164), .B0(n163), .Y(n166) );
endmodule


module Reg_File_ADDR_WD4_DATA_WD8 ( CLK, RST, WrEn, RdEn, Address, WrData, 
        RdData, REG_0, REG_1, REG_2, REG_3 );
  input [3:0] Address;
  input [7:0] WrData;
  output [7:0] RdData;
  output [7:0] REG_0;
  output [7:0] REG_1;
  output [7:0] REG_2;
  output [7:0] REG_3;
  input CLK, RST, WrEn, RdEn;
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
         N38, N39, N40, N41, N42, N43, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n38, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229;
  assign N11 = Address[0];
  assign N12 = Address[1];
  assign N13 = Address[2];
  assign N14 = Address[3];

  DFFRQX2M \REGs_reg[3][7]  ( .D(n145), .CK(CLK), .RN(n210), .Q(REG_3[7]) );
  DFFRQX2M \REGs_reg[3][6]  ( .D(n144), .CK(CLK), .RN(n210), .Q(REG_3[6]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n177), .CK(CLK), .RN(n203), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n176), .CK(CLK), .RN(RST), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n175), .CK(CLK), .RN(n211), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n174), .CK(CLK), .RN(n211), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n173), .CK(CLK), .RN(n211), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n172), .CK(CLK), .RN(n211), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n171), .CK(CLK), .RN(n211), .Q(RdData[1]) );
  DFFRQX2M \RdData_reg[0]  ( .D(n170), .CK(CLK), .RN(n211), .Q(RdData[0]) );
  DFFRQX2M \REGs_reg[5][7]  ( .D(n129), .CK(CLK), .RN(n209), .Q(\REGs[5][7] )
         );
  DFFRQX2M \REGs_reg[5][6]  ( .D(n128), .CK(CLK), .RN(n209), .Q(\REGs[5][6] )
         );
  DFFRQX2M \REGs_reg[5][5]  ( .D(n127), .CK(CLK), .RN(n209), .Q(\REGs[5][5] )
         );
  DFFRQX2M \REGs_reg[5][4]  ( .D(n126), .CK(CLK), .RN(n209), .Q(\REGs[5][4] )
         );
  DFFRQX2M \REGs_reg[5][3]  ( .D(n125), .CK(CLK), .RN(n209), .Q(\REGs[5][3] )
         );
  DFFRQX2M \REGs_reg[5][2]  ( .D(n124), .CK(CLK), .RN(n208), .Q(\REGs[5][2] )
         );
  DFFRQX2M \REGs_reg[5][1]  ( .D(n123), .CK(CLK), .RN(n208), .Q(\REGs[5][1] )
         );
  DFFRQX2M \REGs_reg[5][0]  ( .D(n122), .CK(CLK), .RN(n208), .Q(\REGs[5][0] )
         );
  DFFRQX2M \REGs_reg[9][7]  ( .D(n97), .CK(CLK), .RN(n207), .Q(\REGs[9][7] )
         );
  DFFRQX2M \REGs_reg[9][6]  ( .D(n96), .CK(CLK), .RN(n207), .Q(\REGs[9][6] )
         );
  DFFRQX2M \REGs_reg[9][5]  ( .D(n95), .CK(CLK), .RN(n206), .Q(\REGs[9][5] )
         );
  DFFRQX2M \REGs_reg[9][4]  ( .D(n94), .CK(CLK), .RN(n206), .Q(\REGs[9][4] )
         );
  DFFRQX2M \REGs_reg[9][3]  ( .D(n93), .CK(CLK), .RN(n206), .Q(\REGs[9][3] )
         );
  DFFRQX2M \REGs_reg[9][2]  ( .D(n92), .CK(CLK), .RN(n206), .Q(\REGs[9][2] )
         );
  DFFRQX2M \REGs_reg[9][1]  ( .D(n91), .CK(CLK), .RN(n206), .Q(\REGs[9][1] )
         );
  DFFRQX2M \REGs_reg[9][0]  ( .D(n90), .CK(CLK), .RN(n206), .Q(\REGs[9][0] )
         );
  DFFRQX2M \REGs_reg[13][7]  ( .D(n65), .CK(CLK), .RN(n204), .Q(\REGs[13][7] )
         );
  DFFRQX2M \REGs_reg[13][6]  ( .D(n64), .CK(CLK), .RN(n204), .Q(\REGs[13][6] )
         );
  DFFRQX2M \REGs_reg[13][5]  ( .D(n63), .CK(CLK), .RN(n204), .Q(\REGs[13][5] )
         );
  DFFRQX2M \REGs_reg[13][4]  ( .D(n62), .CK(CLK), .RN(n204), .Q(\REGs[13][4] )
         );
  DFFRQX2M \REGs_reg[13][3]  ( .D(n61), .CK(CLK), .RN(n204), .Q(\REGs[13][3] )
         );
  DFFRQX2M \REGs_reg[13][2]  ( .D(n60), .CK(CLK), .RN(n204), .Q(\REGs[13][2] )
         );
  DFFRQX2M \REGs_reg[13][1]  ( .D(n59), .CK(CLK), .RN(n204), .Q(\REGs[13][1] )
         );
  DFFRQX2M \REGs_reg[13][0]  ( .D(n58), .CK(CLK), .RN(n204), .Q(\REGs[13][0] )
         );
  DFFRQX2M \REGs_reg[7][7]  ( .D(n113), .CK(CLK), .RN(n208), .Q(\REGs[7][7] )
         );
  DFFRQX2M \REGs_reg[7][6]  ( .D(n112), .CK(CLK), .RN(n208), .Q(\REGs[7][6] )
         );
  DFFRQX2M \REGs_reg[7][5]  ( .D(n111), .CK(CLK), .RN(n208), .Q(\REGs[7][5] )
         );
  DFFRQX2M \REGs_reg[7][4]  ( .D(n110), .CK(CLK), .RN(n208), .Q(\REGs[7][4] )
         );
  DFFRQX2M \REGs_reg[7][3]  ( .D(n109), .CK(CLK), .RN(n207), .Q(\REGs[7][3] )
         );
  DFFRQX2M \REGs_reg[7][2]  ( .D(n108), .CK(CLK), .RN(n207), .Q(\REGs[7][2] )
         );
  DFFRQX2M \REGs_reg[7][1]  ( .D(n107), .CK(CLK), .RN(n207), .Q(\REGs[7][1] )
         );
  DFFRQX2M \REGs_reg[7][0]  ( .D(n106), .CK(CLK), .RN(n207), .Q(\REGs[7][0] )
         );
  DFFRQX2M \REGs_reg[11][7]  ( .D(n81), .CK(CLK), .RN(n206), .Q(\REGs[11][7] )
         );
  DFFRQX2M \REGs_reg[11][6]  ( .D(n80), .CK(CLK), .RN(n205), .Q(\REGs[11][6] )
         );
  DFFRQX2M \REGs_reg[11][5]  ( .D(n79), .CK(CLK), .RN(n205), .Q(\REGs[11][5] )
         );
  DFFRQX2M \REGs_reg[11][4]  ( .D(n78), .CK(CLK), .RN(n205), .Q(\REGs[11][4] )
         );
  DFFRQX2M \REGs_reg[11][3]  ( .D(n77), .CK(CLK), .RN(n205), .Q(\REGs[11][3] )
         );
  DFFRQX2M \REGs_reg[11][2]  ( .D(n76), .CK(CLK), .RN(n205), .Q(\REGs[11][2] )
         );
  DFFRQX2M \REGs_reg[11][1]  ( .D(n75), .CK(CLK), .RN(n205), .Q(\REGs[11][1] )
         );
  DFFRQX2M \REGs_reg[11][0]  ( .D(n74), .CK(CLK), .RN(n205), .Q(\REGs[11][0] )
         );
  DFFRQX2M \REGs_reg[15][7]  ( .D(n49), .CK(CLK), .RN(n204), .Q(\REGs[15][7] )
         );
  DFFRQX2M \REGs_reg[15][6]  ( .D(n48), .CK(CLK), .RN(n203), .Q(\REGs[15][6] )
         );
  DFFRQX2M \REGs_reg[15][5]  ( .D(n47), .CK(CLK), .RN(n203), .Q(\REGs[15][5] )
         );
  DFFRQX2M \REGs_reg[15][4]  ( .D(n46), .CK(CLK), .RN(n203), .Q(\REGs[15][4] )
         );
  DFFRQX2M \REGs_reg[15][3]  ( .D(n45), .CK(CLK), .RN(n203), .Q(\REGs[15][3] )
         );
  DFFRQX2M \REGs_reg[15][2]  ( .D(n44), .CK(CLK), .RN(n203), .Q(\REGs[15][2] )
         );
  DFFRQX2M \REGs_reg[15][1]  ( .D(n43), .CK(CLK), .RN(n203), .Q(\REGs[15][1] )
         );
  DFFRQX2M \REGs_reg[15][0]  ( .D(n42), .CK(CLK), .RN(n207), .Q(\REGs[15][0] )
         );
  DFFRQX2M \REGs_reg[6][7]  ( .D(n121), .CK(CLK), .RN(n208), .Q(\REGs[6][7] )
         );
  DFFRQX2M \REGs_reg[6][6]  ( .D(n120), .CK(CLK), .RN(n208), .Q(\REGs[6][6] )
         );
  DFFRQX2M \REGs_reg[6][5]  ( .D(n119), .CK(CLK), .RN(n208), .Q(\REGs[6][5] )
         );
  DFFRQX2M \REGs_reg[6][4]  ( .D(n118), .CK(CLK), .RN(n208), .Q(\REGs[6][4] )
         );
  DFFRQX2M \REGs_reg[6][3]  ( .D(n117), .CK(CLK), .RN(n208), .Q(\REGs[6][3] )
         );
  DFFRQX2M \REGs_reg[6][2]  ( .D(n116), .CK(CLK), .RN(n208), .Q(\REGs[6][2] )
         );
  DFFRQX2M \REGs_reg[6][1]  ( .D(n115), .CK(CLK), .RN(n208), .Q(\REGs[6][1] )
         );
  DFFRQX2M \REGs_reg[6][0]  ( .D(n114), .CK(CLK), .RN(n208), .Q(\REGs[6][0] )
         );
  DFFRQX2M \REGs_reg[10][7]  ( .D(n89), .CK(CLK), .RN(n206), .Q(\REGs[10][7] )
         );
  DFFRQX2M \REGs_reg[10][6]  ( .D(n88), .CK(CLK), .RN(n206), .Q(\REGs[10][6] )
         );
  DFFRQX2M \REGs_reg[10][5]  ( .D(n87), .CK(CLK), .RN(n206), .Q(\REGs[10][5] )
         );
  DFFRQX2M \REGs_reg[10][4]  ( .D(n86), .CK(CLK), .RN(n206), .Q(\REGs[10][4] )
         );
  DFFRQX2M \REGs_reg[10][3]  ( .D(n85), .CK(CLK), .RN(n206), .Q(\REGs[10][3] )
         );
  DFFRQX2M \REGs_reg[10][2]  ( .D(n84), .CK(CLK), .RN(n206), .Q(\REGs[10][2] )
         );
  DFFRQX2M \REGs_reg[10][1]  ( .D(n83), .CK(CLK), .RN(n206), .Q(\REGs[10][1] )
         );
  DFFRQX2M \REGs_reg[10][0]  ( .D(n82), .CK(CLK), .RN(n206), .Q(\REGs[10][0] )
         );
  DFFRQX2M \REGs_reg[14][7]  ( .D(n57), .CK(CLK), .RN(n204), .Q(\REGs[14][7] )
         );
  DFFRQX2M \REGs_reg[14][6]  ( .D(n56), .CK(CLK), .RN(n204), .Q(\REGs[14][6] )
         );
  DFFRQX2M \REGs_reg[14][5]  ( .D(n55), .CK(CLK), .RN(n204), .Q(\REGs[14][5] )
         );
  DFFRQX2M \REGs_reg[14][4]  ( .D(n54), .CK(CLK), .RN(n204), .Q(\REGs[14][4] )
         );
  DFFRQX2M \REGs_reg[14][3]  ( .D(n53), .CK(CLK), .RN(n204), .Q(\REGs[14][3] )
         );
  DFFRQX2M \REGs_reg[14][2]  ( .D(n52), .CK(CLK), .RN(n203), .Q(\REGs[14][2] )
         );
  DFFRQX2M \REGs_reg[14][1]  ( .D(n51), .CK(CLK), .RN(n204), .Q(\REGs[14][1] )
         );
  DFFRQX2M \REGs_reg[14][0]  ( .D(n50), .CK(CLK), .RN(n203), .Q(\REGs[14][0] )
         );
  DFFRQX2M \REGs_reg[4][7]  ( .D(n137), .CK(CLK), .RN(n209), .Q(\REGs[4][7] )
         );
  DFFRQX2M \REGs_reg[4][6]  ( .D(n136), .CK(CLK), .RN(n209), .Q(\REGs[4][6] )
         );
  DFFRQX2M \REGs_reg[4][5]  ( .D(n135), .CK(CLK), .RN(n209), .Q(\REGs[4][5] )
         );
  DFFRQX2M \REGs_reg[4][4]  ( .D(n134), .CK(CLK), .RN(n209), .Q(\REGs[4][4] )
         );
  DFFRQX2M \REGs_reg[4][3]  ( .D(n133), .CK(CLK), .RN(n209), .Q(\REGs[4][3] )
         );
  DFFRQX2M \REGs_reg[4][2]  ( .D(n132), .CK(CLK), .RN(n209), .Q(\REGs[4][2] )
         );
  DFFRQX2M \REGs_reg[4][1]  ( .D(n131), .CK(CLK), .RN(n209), .Q(\REGs[4][1] )
         );
  DFFRQX2M \REGs_reg[4][0]  ( .D(n130), .CK(CLK), .RN(n209), .Q(\REGs[4][0] )
         );
  DFFRQX2M \REGs_reg[8][7]  ( .D(n105), .CK(CLK), .RN(n207), .Q(\REGs[8][7] )
         );
  DFFRQX2M \REGs_reg[8][6]  ( .D(n104), .CK(CLK), .RN(n207), .Q(\REGs[8][6] )
         );
  DFFRQX2M \REGs_reg[8][5]  ( .D(n103), .CK(CLK), .RN(n207), .Q(\REGs[8][5] )
         );
  DFFRQX2M \REGs_reg[8][4]  ( .D(n102), .CK(CLK), .RN(n207), .Q(\REGs[8][4] )
         );
  DFFRQX2M \REGs_reg[8][3]  ( .D(n101), .CK(CLK), .RN(n207), .Q(\REGs[8][3] )
         );
  DFFRQX2M \REGs_reg[8][2]  ( .D(n100), .CK(CLK), .RN(n207), .Q(\REGs[8][2] )
         );
  DFFRQX2M \REGs_reg[8][1]  ( .D(n99), .CK(CLK), .RN(n207), .Q(\REGs[8][1] )
         );
  DFFRQX2M \REGs_reg[8][0]  ( .D(n98), .CK(CLK), .RN(n207), .Q(\REGs[8][0] )
         );
  DFFRQX2M \REGs_reg[12][7]  ( .D(n73), .CK(CLK), .RN(n205), .Q(\REGs[12][7] )
         );
  DFFRQX2M \REGs_reg[12][6]  ( .D(n72), .CK(CLK), .RN(n205), .Q(\REGs[12][6] )
         );
  DFFRQX2M \REGs_reg[12][5]  ( .D(n71), .CK(CLK), .RN(n205), .Q(\REGs[12][5] )
         );
  DFFRQX2M \REGs_reg[12][4]  ( .D(n70), .CK(CLK), .RN(n205), .Q(\REGs[12][4] )
         );
  DFFRQX2M \REGs_reg[12][3]  ( .D(n69), .CK(CLK), .RN(n205), .Q(\REGs[12][3] )
         );
  DFFRQX2M \REGs_reg[12][2]  ( .D(n68), .CK(CLK), .RN(n205), .Q(\REGs[12][2] )
         );
  DFFRQX2M \REGs_reg[12][1]  ( .D(n67), .CK(CLK), .RN(n205), .Q(\REGs[12][1] )
         );
  DFFRQX2M \REGs_reg[12][0]  ( .D(n66), .CK(CLK), .RN(n205), .Q(\REGs[12][0] )
         );
  DFFSQX2M \REGs_reg[3][5]  ( .D(n143), .CK(CLK), .SN(n203), .Q(REG_3[5]) );
  DFFRQX2M \REGs_reg[3][2]  ( .D(n140), .CK(CLK), .RN(n210), .Q(REG_3[2]) );
  DFFRQX2M \REGs_reg[3][3]  ( .D(n141), .CK(CLK), .RN(n210), .Q(REG_3[3]) );
  DFFRQX2M \REGs_reg[2][1]  ( .D(n147), .CK(CLK), .RN(n210), .Q(REG_2[1]) );
  DFFRQX2M \REGs_reg[3][4]  ( .D(n142), .CK(CLK), .RN(n210), .Q(REG_3[4]) );
  DFFRQX2M \REGs_reg[3][0]  ( .D(n138), .CK(CLK), .RN(n209), .Q(REG_3[0]) );
  DFFRQX2M \REGs_reg[3][1]  ( .D(n139), .CK(CLK), .RN(n209), .Q(REG_3[1]) );
  DFFSQX2M \REGs_reg[2][0]  ( .D(n146), .CK(CLK), .SN(n203), .Q(REG_2[0]) );
  DFFRQX2M \REGs_reg[2][4]  ( .D(n150), .CK(CLK), .RN(n210), .Q(REG_2[4]) );
  DFFRQX2M \REGs_reg[2][2]  ( .D(n148), .CK(CLK), .RN(n210), .Q(REG_2[2]) );
  DFFSQX2M \REGs_reg[2][7]  ( .D(n153), .CK(CLK), .SN(n203), .Q(REG_2[7]) );
  DFFRQX2M \REGs_reg[2][6]  ( .D(n152), .CK(CLK), .RN(n210), .Q(REG_2[6]) );
  DFFRQX2M \REGs_reg[2][3]  ( .D(n149), .CK(CLK), .RN(n210), .Q(REG_2[3]) );
  DFFRQX2M \REGs_reg[2][5]  ( .D(n151), .CK(CLK), .RN(n210), .Q(REG_2[5]) );
  DFFRQX2M \REGs_reg[0][2]  ( .D(n164), .CK(CLK), .RN(n211), .Q(REG_0[2]) );
  DFFRQX2M \REGs_reg[0][1]  ( .D(n163), .CK(CLK), .RN(n211), .Q(REG_0[1]) );
  DFFRQX2M \REGs_reg[0][0]  ( .D(n162), .CK(CLK), .RN(n211), .Q(REG_0[0]) );
  DFFRQX2M \REGs_reg[0][3]  ( .D(n165), .CK(CLK), .RN(n211), .Q(REG_0[3]) );
  DFFRQX2M \REGs_reg[0][4]  ( .D(n166), .CK(CLK), .RN(n211), .Q(REG_0[4]) );
  DFFRQX2M \REGs_reg[0][5]  ( .D(n167), .CK(CLK), .RN(n211), .Q(REG_0[5]) );
  DFFRQX2M \REGs_reg[1][2]  ( .D(n156), .CK(CLK), .RN(n210), .Q(REG_1[2]) );
  DFFRHQX1M \REGs_reg[1][5]  ( .D(n159), .CK(CLK), .RN(n211), .Q(REG_1[5]) );
  DFFRHQX1M \REGs_reg[1][4]  ( .D(n158), .CK(CLK), .RN(n210), .Q(REG_1[4]) );
  DFFRHQX1M \REGs_reg[1][1]  ( .D(n155), .CK(CLK), .RN(n210), .Q(REG_1[1]) );
  DFFRHQX2M \REGs_reg[1][6]  ( .D(n160), .CK(CLK), .RN(n203), .Q(REG_1[6]) );
  DFFRHQX4M \REGs_reg[1][7]  ( .D(n161), .CK(CLK), .RN(n203), .Q(REG_1[7]) );
  DFFRHQX1M \REGs_reg[0][7]  ( .D(n169), .CK(CLK), .RN(n211), .Q(REG_0[7]) );
  DFFRQX2M \REGs_reg[0][6]  ( .D(n168), .CK(CLK), .RN(n211), .Q(REG_0[6]) );
  DFFRHQX4M \REGs_reg[1][3]  ( .D(n157), .CK(CLK), .RN(n210), .Q(REG_1[3]) );
  DFFRHQX4M \REGs_reg[1][0]  ( .D(n154), .CK(CLK), .RN(n203), .Q(REG_1[0]) );
  NOR2X2M U3 ( .A(n218), .B(n217), .Y(n1) );
  NOR2X2M U4 ( .A(n202), .B(N13), .Y(n23) );
  NOR2X2M U5 ( .A(n229), .B(n202), .Y(n15) );
  MX2XLM U6 ( .A(REG_0[5]), .B(WrData[5]), .S0(n216), .Y(n167) );
  MX2XLM U7 ( .A(REG_0[6]), .B(WrData[6]), .S0(n216), .Y(n168) );
  INVX2M U8 ( .A(n201), .Y(n199) );
  INVX2M U9 ( .A(n198), .Y(n200) );
  BUFX2M U10 ( .A(n201), .Y(n198) );
  INVX2M U11 ( .A(n40), .Y(n216) );
  NAND2X2M U12 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U13 ( .A(n31), .B(n20), .Y(n34) );
  INVX2M U14 ( .A(n41), .Y(n227) );
  INVX2M U15 ( .A(n31), .Y(n217) );
  INVX2M U16 ( .A(n202), .Y(n197) );
  NAND2BX2M U17 ( .AN(n218), .B(n33), .Y(n40) );
  NOR2X2M U18 ( .A(n229), .B(N12), .Y(n20) );
  NAND2X2M U19 ( .A(n31), .B(n23), .Y(n36) );
  NAND2X2M U20 ( .A(n33), .B(n23), .Y(n37) );
  NAND2X2M U21 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U22 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U23 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U24 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U25 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U26 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U27 ( .A(n31), .B(n15), .Y(n30) );
  NAND2X2M U28 ( .A(n33), .B(n15), .Y(n32) );
  NAND2X2M U29 ( .A(n33), .B(n20), .Y(n35) );
  NAND2X2M U30 ( .A(n15), .B(n16), .Y(n14) );
  INVX2M U31 ( .A(WrData[0]), .Y(n219) );
  INVX2M U32 ( .A(WrData[1]), .Y(n220) );
  INVX2M U33 ( .A(WrData[2]), .Y(n221) );
  INVX2M U34 ( .A(WrData[3]), .Y(n222) );
  INVX2M U35 ( .A(WrData[4]), .Y(n223) );
  INVX2M U36 ( .A(WrData[6]), .Y(n225) );
  NAND2X2M U37 ( .A(RdEn), .B(n228), .Y(n41) );
  AND2X2M U38 ( .A(n27), .B(n199), .Y(n16) );
  NOR2X2M U39 ( .A(n228), .B(RdEn), .Y(n29) );
  AND2X2M U40 ( .A(n39), .B(n199), .Y(n31) );
  INVX2M U41 ( .A(n26), .Y(n218) );
  BUFX2M U42 ( .A(n215), .Y(n203) );
  BUFX2M U43 ( .A(n214), .Y(n211) );
  BUFX2M U44 ( .A(n215), .Y(n204) );
  BUFX2M U45 ( .A(n214), .Y(n205) );
  BUFX2M U46 ( .A(n214), .Y(n206) );
  BUFX2M U47 ( .A(n213), .Y(n207) );
  BUFX2M U48 ( .A(n213), .Y(n208) );
  BUFX2M U49 ( .A(n212), .Y(n209) );
  BUFX2M U50 ( .A(n212), .Y(n210) );
  NOR2BX2M U51 ( .AN(n29), .B(N14), .Y(n39) );
  AND2X2M U52 ( .A(n39), .B(n201), .Y(n33) );
  NOR2X2M U53 ( .A(n197), .B(N13), .Y(n26) );
  INVX2M U54 ( .A(WrData[7]), .Y(n226) );
  INVX2M U55 ( .A(WrData[5]), .Y(n224) );
  INVX2M U56 ( .A(N13), .Y(n229) );
  AND2X2M U57 ( .A(n27), .B(n201), .Y(n18) );
  AND2X2M U58 ( .A(N14), .B(n29), .Y(n27) );
  INVX2M U59 ( .A(WrEn), .Y(n228) );
  BUFX2M U60 ( .A(RST), .Y(n214) );
  BUFX2M U61 ( .A(RST), .Y(n213) );
  BUFX2M U62 ( .A(RST), .Y(n212) );
  BUFX2M U63 ( .A(RST), .Y(n215) );
  INVX2M U64 ( .A(N11), .Y(n201) );
  AO22X1M U65 ( .A0(N43), .A1(n227), .B0(RdData[0]), .B1(n41), .Y(n170) );
  MX4X1M U66 ( .A(n5), .B(n3), .C(n4), .D(n2), .S0(N14), .S1(N13), .Y(N43) );
  MX4X1M U67 ( .A(\REGs[8][0] ), .B(\REGs[9][0] ), .C(\REGs[10][0] ), .D(
        \REGs[11][0] ), .S0(N11), .S1(N12), .Y(n3) );
  MX4X1M U68 ( .A(\REGs[4][0] ), .B(\REGs[5][0] ), .C(\REGs[6][0] ), .D(
        \REGs[7][0] ), .S0(N11), .S1(N12), .Y(n4) );
  AO22X1M U69 ( .A0(N42), .A1(n227), .B0(RdData[1]), .B1(n41), .Y(n171) );
  MX4X1M U70 ( .A(n9), .B(n7), .C(n8), .D(n6), .S0(N14), .S1(N13), .Y(N42) );
  MX4X1M U71 ( .A(\REGs[8][1] ), .B(\REGs[9][1] ), .C(\REGs[10][1] ), .D(
        \REGs[11][1] ), .S0(N11), .S1(N12), .Y(n7) );
  MX4X1M U72 ( .A(\REGs[12][1] ), .B(\REGs[13][1] ), .C(\REGs[14][1] ), .D(
        \REGs[15][1] ), .S0(n199), .S1(n197), .Y(n6) );
  AO22X1M U73 ( .A0(N41), .A1(n227), .B0(RdData[2]), .B1(n41), .Y(n172) );
  MX4X1M U74 ( .A(n13), .B(n11), .C(n12), .D(n10), .S0(N14), .S1(N13), .Y(N41)
         );
  MX4XLM U75 ( .A(REG_0[2]), .B(REG_1[2]), .C(REG_2[2]), .D(REG_3[2]), .S0(
        n199), .S1(N12), .Y(n13) );
  MX4X1M U76 ( .A(\REGs[8][2] ), .B(\REGs[9][2] ), .C(\REGs[10][2] ), .D(
        \REGs[11][2] ), .S0(n199), .S1(N12), .Y(n11) );
  AO22X1M U77 ( .A0(N40), .A1(n227), .B0(RdData[3]), .B1(n41), .Y(n173) );
  MX4X1M U78 ( .A(n180), .B(n178), .C(n179), .D(n38), .S0(N14), .S1(N13), .Y(
        N40) );
  MX4X1M U79 ( .A(\REGs[8][3] ), .B(\REGs[9][3] ), .C(\REGs[10][3] ), .D(
        \REGs[11][3] ), .S0(n199), .S1(N12), .Y(n178) );
  MX4X1M U80 ( .A(\REGs[4][3] ), .B(\REGs[5][3] ), .C(\REGs[6][3] ), .D(
        \REGs[7][3] ), .S0(n199), .S1(N12), .Y(n179) );
  AO22X1M U81 ( .A0(N39), .A1(n227), .B0(RdData[4]), .B1(n41), .Y(n174) );
  MX4X1M U82 ( .A(n184), .B(n182), .C(n183), .D(n181), .S0(N14), .S1(N13), .Y(
        N39) );
  MX4XLM U83 ( .A(REG_0[4]), .B(REG_1[4]), .C(REG_2[4]), .D(REG_3[4]), .S0(
        n200), .S1(N12), .Y(n184) );
  MX4X1M U84 ( .A(\REGs[8][4] ), .B(\REGs[9][4] ), .C(\REGs[10][4] ), .D(
        \REGs[11][4] ), .S0(n199), .S1(N12), .Y(n182) );
  AO22X1M U85 ( .A0(N38), .A1(n227), .B0(RdData[5]), .B1(n41), .Y(n175) );
  MX4X1M U86 ( .A(n188), .B(n186), .C(n187), .D(n185), .S0(N14), .S1(N13), .Y(
        N38) );
  MX4XLM U87 ( .A(REG_0[5]), .B(REG_1[5]), .C(REG_2[5]), .D(REG_3[5]), .S0(
        n200), .S1(n197), .Y(n188) );
  MX4X1M U88 ( .A(\REGs[8][5] ), .B(\REGs[9][5] ), .C(\REGs[10][5] ), .D(
        \REGs[11][5] ), .S0(n200), .S1(n197), .Y(n186) );
  AO22X1M U89 ( .A0(N37), .A1(n227), .B0(RdData[6]), .B1(n41), .Y(n176) );
  MX4X1M U90 ( .A(n192), .B(n190), .C(n191), .D(n189), .S0(N14), .S1(N13), .Y(
        N37) );
  MX4X1M U91 ( .A(\REGs[8][6] ), .B(\REGs[9][6] ), .C(\REGs[10][6] ), .D(
        \REGs[11][6] ), .S0(n200), .S1(n197), .Y(n190) );
  MX4X1M U92 ( .A(\REGs[4][6] ), .B(\REGs[5][6] ), .C(\REGs[6][6] ), .D(
        \REGs[7][6] ), .S0(n200), .S1(n197), .Y(n191) );
  AO22X1M U93 ( .A0(N36), .A1(n227), .B0(RdData[7]), .B1(n41), .Y(n177) );
  MX4X1M U94 ( .A(n196), .B(n194), .C(n195), .D(n193), .S0(N14), .S1(N13), .Y(
        N36) );
  MX4X1M U95 ( .A(\REGs[8][7] ), .B(\REGs[9][7] ), .C(\REGs[10][7] ), .D(
        \REGs[11][7] ), .S0(n200), .S1(n197), .Y(n194) );
  MX4X1M U96 ( .A(\REGs[4][7] ), .B(\REGs[5][7] ), .C(\REGs[6][7] ), .D(
        \REGs[7][7] ), .S0(n200), .S1(n197), .Y(n195) );
  MX4XLM U97 ( .A(REG_0[1]), .B(REG_1[1]), .C(REG_2[1]), .D(REG_3[1]), .S0(
        n199), .S1(N12), .Y(n9) );
  MX4X1M U98 ( .A(\REGs[4][1] ), .B(\REGs[5][1] ), .C(\REGs[6][1] ), .D(
        \REGs[7][1] ), .S0(n199), .S1(N12), .Y(n8) );
  MX4X1M U99 ( .A(\REGs[4][2] ), .B(\REGs[5][2] ), .C(\REGs[6][2] ), .D(
        \REGs[7][2] ), .S0(n199), .S1(N12), .Y(n12) );
  MX4X1M U100 ( .A(\REGs[4][4] ), .B(\REGs[5][4] ), .C(\REGs[6][4] ), .D(
        \REGs[7][4] ), .S0(n199), .S1(N12), .Y(n183) );
  MX4X1M U101 ( .A(\REGs[4][5] ), .B(\REGs[5][5] ), .C(\REGs[6][5] ), .D(
        \REGs[7][5] ), .S0(n200), .S1(n197), .Y(n187) );
  MX4X1M U102 ( .A(\REGs[12][0] ), .B(\REGs[13][0] ), .C(\REGs[14][0] ), .D(
        \REGs[15][0] ), .S0(n199), .S1(n197), .Y(n2) );
  MX4X1M U103 ( .A(\REGs[12][2] ), .B(\REGs[13][2] ), .C(\REGs[14][2] ), .D(
        \REGs[15][2] ), .S0(n199), .S1(N12), .Y(n10) );
  MX4X1M U104 ( .A(\REGs[12][3] ), .B(\REGs[13][3] ), .C(\REGs[14][3] ), .D(
        \REGs[15][3] ), .S0(n199), .S1(N12), .Y(n38) );
  MX4X1M U105 ( .A(\REGs[12][4] ), .B(\REGs[13][4] ), .C(\REGs[14][4] ), .D(
        \REGs[15][4] ), .S0(n199), .S1(N12), .Y(n181) );
  MX4X1M U106 ( .A(\REGs[12][5] ), .B(\REGs[13][5] ), .C(\REGs[14][5] ), .D(
        \REGs[15][5] ), .S0(n200), .S1(n197), .Y(n185) );
  MX4X1M U107 ( .A(\REGs[12][6] ), .B(\REGs[13][6] ), .C(\REGs[14][6] ), .D(
        \REGs[15][6] ), .S0(n200), .S1(n197), .Y(n189) );
  MX4X1M U108 ( .A(\REGs[12][7] ), .B(\REGs[13][7] ), .C(\REGs[14][7] ), .D(
        \REGs[15][7] ), .S0(n200), .S1(n197), .Y(n193) );
  INVX2M U109 ( .A(N12), .Y(n202) );
  OAI2BB2X1M U110 ( .B0(n14), .B1(n219), .A0N(\REGs[15][0] ), .A1N(n14), .Y(
        n42) );
  OAI2BB2X1M U111 ( .B0(n14), .B1(n220), .A0N(\REGs[15][1] ), .A1N(n14), .Y(
        n43) );
  OAI2BB2X1M U112 ( .B0(n14), .B1(n221), .A0N(\REGs[15][2] ), .A1N(n14), .Y(
        n44) );
  OAI2BB2X1M U113 ( .B0(n14), .B1(n222), .A0N(\REGs[15][3] ), .A1N(n14), .Y(
        n45) );
  OAI2BB2X1M U114 ( .B0(n14), .B1(n223), .A0N(\REGs[15][4] ), .A1N(n14), .Y(
        n46) );
  OAI2BB2X1M U115 ( .B0(n14), .B1(n224), .A0N(\REGs[15][5] ), .A1N(n14), .Y(
        n47) );
  OAI2BB2X1M U116 ( .B0(n14), .B1(n225), .A0N(\REGs[15][6] ), .A1N(n14), .Y(
        n48) );
  OAI2BB2X1M U117 ( .B0(n14), .B1(n226), .A0N(\REGs[15][7] ), .A1N(n14), .Y(
        n49) );
  OAI2BB2X1M U118 ( .B0(n219), .B1(n22), .A0N(\REGs[11][0] ), .A1N(n22), .Y(
        n74) );
  OAI2BB2X1M U119 ( .B0(n220), .B1(n22), .A0N(\REGs[11][1] ), .A1N(n22), .Y(
        n75) );
  OAI2BB2X1M U120 ( .B0(n221), .B1(n22), .A0N(\REGs[11][2] ), .A1N(n22), .Y(
        n76) );
  OAI2BB2X1M U121 ( .B0(n222), .B1(n22), .A0N(\REGs[11][3] ), .A1N(n22), .Y(
        n77) );
  OAI2BB2X1M U122 ( .B0(n223), .B1(n22), .A0N(\REGs[11][4] ), .A1N(n22), .Y(
        n78) );
  OAI2BB2X1M U123 ( .B0(n224), .B1(n22), .A0N(\REGs[11][5] ), .A1N(n22), .Y(
        n79) );
  OAI2BB2X1M U124 ( .B0(n225), .B1(n22), .A0N(\REGs[11][6] ), .A1N(n22), .Y(
        n80) );
  OAI2BB2X1M U125 ( .B0(n226), .B1(n22), .A0N(\REGs[11][7] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U126 ( .B0(n219), .B1(n24), .A0N(\REGs[10][0] ), .A1N(n24), .Y(
        n82) );
  OAI2BB2X1M U127 ( .B0(n220), .B1(n24), .A0N(\REGs[10][1] ), .A1N(n24), .Y(
        n83) );
  OAI2BB2X1M U128 ( .B0(n221), .B1(n24), .A0N(\REGs[10][2] ), .A1N(n24), .Y(
        n84) );
  OAI2BB2X1M U129 ( .B0(n222), .B1(n24), .A0N(\REGs[10][3] ), .A1N(n24), .Y(
        n85) );
  OAI2BB2X1M U130 ( .B0(n223), .B1(n24), .A0N(\REGs[10][4] ), .A1N(n24), .Y(
        n86) );
  OAI2BB2X1M U131 ( .B0(n224), .B1(n24), .A0N(\REGs[10][5] ), .A1N(n24), .Y(
        n87) );
  OAI2BB2X1M U132 ( .B0(n225), .B1(n24), .A0N(\REGs[10][6] ), .A1N(n24), .Y(
        n88) );
  OAI2BB2X1M U133 ( .B0(n226), .B1(n24), .A0N(\REGs[10][7] ), .A1N(n24), .Y(
        n89) );
  OAI2BB2X1M U134 ( .B0(n219), .B1(n19), .A0N(\REGs[13][0] ), .A1N(n19), .Y(
        n58) );
  OAI2BB2X1M U135 ( .B0(n220), .B1(n19), .A0N(\REGs[13][1] ), .A1N(n19), .Y(
        n59) );
  OAI2BB2X1M U136 ( .B0(n221), .B1(n19), .A0N(\REGs[13][2] ), .A1N(n19), .Y(
        n60) );
  OAI2BB2X1M U137 ( .B0(n222), .B1(n19), .A0N(\REGs[13][3] ), .A1N(n19), .Y(
        n61) );
  OAI2BB2X1M U138 ( .B0(n223), .B1(n19), .A0N(\REGs[13][4] ), .A1N(n19), .Y(
        n62) );
  OAI2BB2X1M U139 ( .B0(n224), .B1(n19), .A0N(\REGs[13][5] ), .A1N(n19), .Y(
        n63) );
  OAI2BB2X1M U140 ( .B0(n225), .B1(n19), .A0N(\REGs[13][6] ), .A1N(n19), .Y(
        n64) );
  OAI2BB2X1M U141 ( .B0(n226), .B1(n19), .A0N(\REGs[13][7] ), .A1N(n19), .Y(
        n65) );
  OAI2BB2X1M U142 ( .B0(n219), .B1(n21), .A0N(\REGs[12][0] ), .A1N(n21), .Y(
        n66) );
  OAI2BB2X1M U143 ( .B0(n220), .B1(n21), .A0N(\REGs[12][1] ), .A1N(n21), .Y(
        n67) );
  OAI2BB2X1M U144 ( .B0(n221), .B1(n21), .A0N(\REGs[12][2] ), .A1N(n21), .Y(
        n68) );
  OAI2BB2X1M U145 ( .B0(n222), .B1(n21), .A0N(\REGs[12][3] ), .A1N(n21), .Y(
        n69) );
  OAI2BB2X1M U146 ( .B0(n223), .B1(n21), .A0N(\REGs[12][4] ), .A1N(n21), .Y(
        n70) );
  OAI2BB2X1M U147 ( .B0(n224), .B1(n21), .A0N(\REGs[12][5] ), .A1N(n21), .Y(
        n71) );
  OAI2BB2X1M U148 ( .B0(n225), .B1(n21), .A0N(\REGs[12][6] ), .A1N(n21), .Y(
        n72) );
  OAI2BB2X1M U149 ( .B0(n226), .B1(n21), .A0N(\REGs[12][7] ), .A1N(n21), .Y(
        n73) );
  OAI2BB2X1M U150 ( .B0(n219), .B1(n36), .A0N(REG_3[0]), .A1N(n36), .Y(n138)
         );
  OAI2BB2X1M U151 ( .B0(n220), .B1(n36), .A0N(REG_3[1]), .A1N(n36), .Y(n139)
         );
  OAI2BB2X1M U152 ( .B0(n221), .B1(n36), .A0N(REG_3[2]), .A1N(n36), .Y(n140)
         );
  OAI2BB2X1M U153 ( .B0(n222), .B1(n36), .A0N(REG_3[3]), .A1N(n36), .Y(n141)
         );
  OAI2BB2X1M U154 ( .B0(n223), .B1(n36), .A0N(REG_3[4]), .A1N(n36), .Y(n142)
         );
  OAI2BB2X1M U155 ( .B0(n225), .B1(n36), .A0N(REG_3[6]), .A1N(n36), .Y(n144)
         );
  OAI2BB2X1M U156 ( .B0(n226), .B1(n36), .A0N(REG_3[7]), .A1N(n36), .Y(n145)
         );
  OAI2BB2X1M U157 ( .B0(n220), .B1(n37), .A0N(REG_2[1]), .A1N(n37), .Y(n147)
         );
  OAI2BB2X1M U158 ( .B0(n221), .B1(n37), .A0N(REG_2[2]), .A1N(n37), .Y(n148)
         );
  OAI2BB2X1M U159 ( .B0(n222), .B1(n37), .A0N(REG_2[3]), .A1N(n37), .Y(n149)
         );
  OAI2BB2X1M U160 ( .B0(n223), .B1(n37), .A0N(REG_2[4]), .A1N(n37), .Y(n150)
         );
  OAI2BB2X1M U161 ( .B0(n224), .B1(n37), .A0N(REG_2[5]), .A1N(n37), .Y(n151)
         );
  OAI2BB2X1M U162 ( .B0(n225), .B1(n37), .A0N(REG_2[6]), .A1N(n37), .Y(n152)
         );
  OAI2BB2X1M U163 ( .B0(n219), .B1(n17), .A0N(\REGs[14][0] ), .A1N(n17), .Y(
        n50) );
  OAI2BB2X1M U164 ( .B0(n220), .B1(n17), .A0N(\REGs[14][1] ), .A1N(n17), .Y(
        n51) );
  OAI2BB2X1M U165 ( .B0(n221), .B1(n17), .A0N(\REGs[14][2] ), .A1N(n17), .Y(
        n52) );
  OAI2BB2X1M U166 ( .B0(n222), .B1(n17), .A0N(\REGs[14][3] ), .A1N(n17), .Y(
        n53) );
  OAI2BB2X1M U167 ( .B0(n223), .B1(n17), .A0N(\REGs[14][4] ), .A1N(n17), .Y(
        n54) );
  OAI2BB2X1M U168 ( .B0(n224), .B1(n17), .A0N(\REGs[14][5] ), .A1N(n17), .Y(
        n55) );
  OAI2BB2X1M U169 ( .B0(n225), .B1(n17), .A0N(\REGs[14][6] ), .A1N(n17), .Y(
        n56) );
  OAI2BB2X1M U170 ( .B0(n226), .B1(n17), .A0N(\REGs[14][7] ), .A1N(n17), .Y(
        n57) );
  OAI2BB2X1M U171 ( .B0(n219), .B1(n30), .A0N(\REGs[7][0] ), .A1N(n30), .Y(
        n106) );
  OAI2BB2X1M U172 ( .B0(n220), .B1(n30), .A0N(\REGs[7][1] ), .A1N(n30), .Y(
        n107) );
  OAI2BB2X1M U173 ( .B0(n221), .B1(n30), .A0N(\REGs[7][2] ), .A1N(n30), .Y(
        n108) );
  OAI2BB2X1M U174 ( .B0(n222), .B1(n30), .A0N(\REGs[7][3] ), .A1N(n30), .Y(
        n109) );
  OAI2BB2X1M U175 ( .B0(n223), .B1(n30), .A0N(\REGs[7][4] ), .A1N(n30), .Y(
        n110) );
  OAI2BB2X1M U176 ( .B0(n224), .B1(n30), .A0N(\REGs[7][5] ), .A1N(n30), .Y(
        n111) );
  OAI2BB2X1M U177 ( .B0(n225), .B1(n30), .A0N(\REGs[7][6] ), .A1N(n30), .Y(
        n112) );
  OAI2BB2X1M U178 ( .B0(n226), .B1(n30), .A0N(\REGs[7][7] ), .A1N(n30), .Y(
        n113) );
  OAI2BB2X1M U179 ( .B0(n219), .B1(n32), .A0N(\REGs[6][0] ), .A1N(n32), .Y(
        n114) );
  OAI2BB2X1M U180 ( .B0(n220), .B1(n32), .A0N(\REGs[6][1] ), .A1N(n32), .Y(
        n115) );
  OAI2BB2X1M U181 ( .B0(n221), .B1(n32), .A0N(\REGs[6][2] ), .A1N(n32), .Y(
        n116) );
  OAI2BB2X1M U182 ( .B0(n222), .B1(n32), .A0N(\REGs[6][3] ), .A1N(n32), .Y(
        n117) );
  OAI2BB2X1M U183 ( .B0(n223), .B1(n32), .A0N(\REGs[6][4] ), .A1N(n32), .Y(
        n118) );
  OAI2BB2X1M U184 ( .B0(n224), .B1(n32), .A0N(\REGs[6][5] ), .A1N(n32), .Y(
        n119) );
  OAI2BB2X1M U185 ( .B0(n225), .B1(n32), .A0N(\REGs[6][6] ), .A1N(n32), .Y(
        n120) );
  OAI2BB2X1M U186 ( .B0(n226), .B1(n32), .A0N(\REGs[6][7] ), .A1N(n32), .Y(
        n121) );
  OAI2BB2X1M U187 ( .B0(n219), .B1(n34), .A0N(\REGs[5][0] ), .A1N(n34), .Y(
        n122) );
  OAI2BB2X1M U188 ( .B0(n220), .B1(n34), .A0N(\REGs[5][1] ), .A1N(n34), .Y(
        n123) );
  OAI2BB2X1M U189 ( .B0(n221), .B1(n34), .A0N(\REGs[5][2] ), .A1N(n34), .Y(
        n124) );
  OAI2BB2X1M U190 ( .B0(n222), .B1(n34), .A0N(\REGs[5][3] ), .A1N(n34), .Y(
        n125) );
  OAI2BB2X1M U191 ( .B0(n223), .B1(n34), .A0N(\REGs[5][4] ), .A1N(n34), .Y(
        n126) );
  OAI2BB2X1M U192 ( .B0(n224), .B1(n34), .A0N(\REGs[5][5] ), .A1N(n34), .Y(
        n127) );
  OAI2BB2X1M U193 ( .B0(n225), .B1(n34), .A0N(\REGs[5][6] ), .A1N(n34), .Y(
        n128) );
  OAI2BB2X1M U194 ( .B0(n226), .B1(n34), .A0N(\REGs[5][7] ), .A1N(n34), .Y(
        n129) );
  OAI2BB2X1M U195 ( .B0(n219), .B1(n35), .A0N(\REGs[4][0] ), .A1N(n35), .Y(
        n130) );
  OAI2BB2X1M U196 ( .B0(n220), .B1(n35), .A0N(\REGs[4][1] ), .A1N(n35), .Y(
        n131) );
  OAI2BB2X1M U197 ( .B0(n221), .B1(n35), .A0N(\REGs[4][2] ), .A1N(n35), .Y(
        n132) );
  OAI2BB2X1M U198 ( .B0(n222), .B1(n35), .A0N(\REGs[4][3] ), .A1N(n35), .Y(
        n133) );
  OAI2BB2X1M U199 ( .B0(n223), .B1(n35), .A0N(\REGs[4][4] ), .A1N(n35), .Y(
        n134) );
  OAI2BB2X1M U200 ( .B0(n224), .B1(n35), .A0N(\REGs[4][5] ), .A1N(n35), .Y(
        n135) );
  OAI2BB2X1M U201 ( .B0(n225), .B1(n35), .A0N(\REGs[4][6] ), .A1N(n35), .Y(
        n136) );
  OAI2BB2X1M U202 ( .B0(n226), .B1(n35), .A0N(\REGs[4][7] ), .A1N(n35), .Y(
        n137) );
  OAI2BB2X1M U203 ( .B0(n219), .B1(n25), .A0N(\REGs[9][0] ), .A1N(n25), .Y(n90) );
  OAI2BB2X1M U204 ( .B0(n220), .B1(n25), .A0N(\REGs[9][1] ), .A1N(n25), .Y(n91) );
  OAI2BB2X1M U205 ( .B0(n221), .B1(n25), .A0N(\REGs[9][2] ), .A1N(n25), .Y(n92) );
  OAI2BB2X1M U206 ( .B0(n222), .B1(n25), .A0N(\REGs[9][3] ), .A1N(n25), .Y(n93) );
  OAI2BB2X1M U207 ( .B0(n223), .B1(n25), .A0N(\REGs[9][4] ), .A1N(n25), .Y(n94) );
  OAI2BB2X1M U208 ( .B0(n224), .B1(n25), .A0N(\REGs[9][5] ), .A1N(n25), .Y(n95) );
  OAI2BB2X1M U209 ( .B0(n225), .B1(n25), .A0N(\REGs[9][6] ), .A1N(n25), .Y(n96) );
  OAI2BB2X1M U210 ( .B0(n226), .B1(n25), .A0N(\REGs[9][7] ), .A1N(n25), .Y(n97) );
  OAI2BB2X1M U211 ( .B0(n219), .B1(n28), .A0N(\REGs[8][0] ), .A1N(n28), .Y(n98) );
  OAI2BB2X1M U212 ( .B0(n220), .B1(n28), .A0N(\REGs[8][1] ), .A1N(n28), .Y(n99) );
  OAI2BB2X1M U213 ( .B0(n221), .B1(n28), .A0N(\REGs[8][2] ), .A1N(n28), .Y(
        n100) );
  OAI2BB2X1M U214 ( .B0(n222), .B1(n28), .A0N(\REGs[8][3] ), .A1N(n28), .Y(
        n101) );
  OAI2BB2X1M U215 ( .B0(n223), .B1(n28), .A0N(\REGs[8][4] ), .A1N(n28), .Y(
        n102) );
  OAI2BB2X1M U216 ( .B0(n224), .B1(n28), .A0N(\REGs[8][5] ), .A1N(n28), .Y(
        n103) );
  OAI2BB2X1M U217 ( .B0(n225), .B1(n28), .A0N(\REGs[8][6] ), .A1N(n28), .Y(
        n104) );
  OAI2BB2X1M U218 ( .B0(n226), .B1(n28), .A0N(\REGs[8][7] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U219 ( .B0(n219), .B1(n40), .A0N(REG_0[0]), .A1N(n40), .Y(n162)
         );
  OAI2BB2X1M U220 ( .B0(n220), .B1(n40), .A0N(REG_0[1]), .A1N(n40), .Y(n163)
         );
  OAI2BB2X1M U221 ( .B0(n221), .B1(n40), .A0N(REG_0[2]), .A1N(n40), .Y(n164)
         );
  OAI2BB2X1M U222 ( .B0(n222), .B1(n40), .A0N(REG_0[3]), .A1N(n40), .Y(n165)
         );
  OAI2BB2X1M U223 ( .B0(n223), .B1(n40), .A0N(REG_0[4]), .A1N(n40), .Y(n166)
         );
  OAI2BB2X1M U224 ( .B0(n224), .B1(n36), .A0N(REG_3[5]), .A1N(n36), .Y(n143)
         );
  OAI2BB2X1M U225 ( .B0(n219), .B1(n37), .A0N(REG_2[0]), .A1N(n37), .Y(n146)
         );
  OAI2BB2X1M U226 ( .B0(n226), .B1(n37), .A0N(REG_2[7]), .A1N(n37), .Y(n153)
         );
  MX2XLM U227 ( .A(REG_1[1]), .B(WrData[1]), .S0(n1), .Y(n155) );
  MX2XLM U228 ( .A(REG_1[2]), .B(WrData[2]), .S0(n1), .Y(n156) );
  MX2XLM U229 ( .A(REG_1[4]), .B(WrData[4]), .S0(n1), .Y(n158) );
  MX2XLM U230 ( .A(REG_1[5]), .B(WrData[5]), .S0(n1), .Y(n159) );
  MX4XLM U231 ( .A(REG_0[7]), .B(REG_1[7]), .C(REG_2[7]), .D(REG_3[7]), .S0(
        n200), .S1(n197), .Y(n196) );
  MX4XLM U232 ( .A(REG_0[6]), .B(REG_1[6]), .C(REG_2[6]), .D(REG_3[6]), .S0(
        n200), .S1(n197), .Y(n192) );
  MX4XLM U233 ( .A(REG_0[0]), .B(REG_1[0]), .C(REG_2[0]), .D(REG_3[0]), .S0(
        n200), .S1(N12), .Y(n5) );
  MX4XLM U234 ( .A(REG_0[3]), .B(REG_1[3]), .C(REG_2[3]), .D(REG_3[3]), .S0(
        n199), .S1(N12), .Y(n180) );
  MX2XLM U235 ( .A(REG_1[3]), .B(WrData[3]), .S0(n1), .Y(n157) );
  MX2XLM U236 ( .A(REG_1[0]), .B(WrData[0]), .S0(n1), .Y(n154) );
  MX2XLM U237 ( .A(REG_1[7]), .B(WrData[7]), .S0(n1), .Y(n161) );
  MX2XLM U238 ( .A(REG_1[6]), .B(WrData[6]), .S0(n1), .Y(n160) );
  MX2XLM U239 ( .A(REG_0[7]), .B(WrData[7]), .S0(n216), .Y(n169) );
endmodule


module SYS_CNTRL_DATA_WD8_REG_ADDR_WD4_ALU_FUN_WD4_ALU_OUT_WD16 ( CLK, RST, 
        REG_RD_D, DATA_SYNC, ALU_OUT, FIFO_FULL, ALU_OUT_VALID, VALID_SYNC, 
        REG_WR_D, FIFO_WR_D, REG_ADDR, ALU_FUN, REG_WR_EN, REG_RD_EN, ALU_EN, 
        GATE_EN, FIFO_WR_INC );
  input [7:0] REG_RD_D;
  input [7:0] DATA_SYNC;
  input [15:0] ALU_OUT;
  output [7:0] REG_WR_D;
  output [7:0] FIFO_WR_D;
  output [3:0] REG_ADDR;
  output [3:0] ALU_FUN;
  input CLK, RST, FIFO_FULL, ALU_OUT_VALID, VALID_SYNC;
  output REG_WR_EN, REG_RD_EN, ALU_EN, GATE_EN, FIFO_WR_INC;
  wire   n1, n2, n3, n4, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n73,
         n74, n75;
  wire   [3:0] current_state;
  wire   [3:0] next_state;

  DFFRX1M \INTERNAL_TEMP_reg[0]  ( .D(n72), .CK(CLK), .RN(RST), .QN(n4) );
  DFFRX1M \INTERNAL_TEMP_reg[3]  ( .D(n69), .CK(CLK), .RN(RST), .QN(n1) );
  DFFRX1M \INTERNAL_TEMP_reg[2]  ( .D(n70), .CK(CLK), .RN(RST), .QN(n2) );
  DFFRX1M \INTERNAL_TEMP_reg[1]  ( .D(n71), .CK(CLK), .RN(RST), .QN(n3) );
  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(RST), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(RST), .Q(
        current_state[1]) );
  DFFRQX2M \current_state_reg[3]  ( .D(n8), .CK(CLK), .RN(RST), .Q(
        current_state[3]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(RST), .Q(
        current_state[2]) );
  OAI22X2M U3 ( .A0(n2), .A1(n57), .B0(n33), .B1(n73), .Y(REG_ADDR[2]) );
  OAI22X1M U4 ( .A0(n42), .A1(n75), .B0(n43), .B1(n4), .Y(ALU_FUN[0]) );
  OAI22X1M U5 ( .A0(n42), .A1(n73), .B0(n43), .B1(n2), .Y(ALU_FUN[2]) );
  OAI22X1M U6 ( .A0(n42), .A1(n23), .B0(n43), .B1(n1), .Y(ALU_FUN[3]) );
  OAI22X1M U7 ( .A0(n42), .A1(n74), .B0(n43), .B1(n3), .Y(ALU_FUN[1]) );
  INVX2M U8 ( .A(n44), .Y(n11) );
  NAND2X2M U9 ( .A(n31), .B(n68), .Y(n44) );
  BUFX2M U10 ( .A(n56), .Y(n7) );
  NOR3BX2M U11 ( .AN(n57), .B(n13), .C(n28), .Y(n56) );
  INVX2M U12 ( .A(n24), .Y(n8) );
  AOI211X2M U13 ( .A0(n12), .A1(FIFO_FULL), .B0(n11), .C0(GATE_EN), .Y(n24) );
  INVX2M U14 ( .A(n59), .Y(n10) );
  NOR2X2M U15 ( .A(n15), .B(n17), .Y(n68) );
  NAND3X2M U16 ( .A(n45), .B(n18), .C(n6), .Y(n57) );
  INVX2M U17 ( .A(n45), .Y(n16) );
  AOI31X2M U18 ( .A0(n44), .A1(n58), .A2(n59), .B0(FIFO_FULL), .Y(FIFO_WR_INC)
         );
  NOR2X2M U19 ( .A(n18), .B(n6), .Y(n31) );
  NOR2X2M U20 ( .A(n33), .B(n19), .Y(REG_RD_EN) );
  NOR2X2M U21 ( .A(n7), .B(n20), .Y(REG_WR_D[6]) );
  NOR2X2M U22 ( .A(n7), .B(n73), .Y(REG_WR_D[2]) );
  NOR2X2M U23 ( .A(n7), .B(n74), .Y(REG_WR_D[1]) );
  NOR2X2M U24 ( .A(n7), .B(n22), .Y(REG_WR_D[4]) );
  NOR2X2M U25 ( .A(n7), .B(n75), .Y(REG_WR_D[0]) );
  NOR2X2M U26 ( .A(n7), .B(n23), .Y(REG_WR_D[3]) );
  NAND2X2M U27 ( .A(n31), .B(n45), .Y(n59) );
  AND2X2M U28 ( .A(n53), .B(n31), .Y(n28) );
  INVX2M U29 ( .A(n39), .Y(n13) );
  INVX2M U30 ( .A(n58), .Y(n12) );
  NOR2X2M U31 ( .A(n7), .B(n19), .Y(REG_WR_EN) );
  OAI211X2M U32 ( .A0(n40), .A1(n41), .B0(n42), .C0(n43), .Y(n25) );
  OAI21X2M U33 ( .A0(n6), .A1(n16), .B0(n44), .Y(n36) );
  NAND3X2M U34 ( .A(n6), .B(n18), .C(n53), .Y(n38) );
  AOI21X2M U35 ( .A0(n38), .A1(n39), .B0(n19), .Y(n37) );
  NAND2X2M U36 ( .A(n38), .B(n42), .Y(n47) );
  INVX2M U37 ( .A(n55), .Y(n9) );
  NAND3BX2M U38 ( .AN(n25), .B(n26), .C(n27), .Y(next_state[2]) );
  AOI32X1M U39 ( .A0(n29), .A1(n14), .A2(n30), .B0(FIFO_FULL), .B1(n31), .Y(
        n26) );
  NOR4X1M U40 ( .A(REG_RD_EN), .B(n11), .C(n28), .D(n13), .Y(n27) );
  NOR2X2M U41 ( .A(n73), .B(n20), .Y(n29) );
  INVX2M U42 ( .A(n41), .Y(n14) );
  INVX2M U43 ( .A(n40), .Y(n21) );
  NOR2X2M U44 ( .A(n17), .B(current_state[3]), .Y(n45) );
  NAND3X2M U45 ( .A(n6), .B(n45), .C(current_state[2]), .Y(n42) );
  NAND3X2M U46 ( .A(current_state[2]), .B(n6), .C(n68), .Y(n43) );
  INVX2M U47 ( .A(VALID_SYNC), .Y(n19) );
  BUFX2M U48 ( .A(current_state[0]), .Y(n6) );
  INVX2M U49 ( .A(current_state[1]), .Y(n17) );
  INVX2M U50 ( .A(current_state[3]), .Y(n15) );
  OAI22X4M U51 ( .A0(n1), .A1(n57), .B0(n33), .B1(n23), .Y(REG_ADDR[3]) );
  OAI221X1M U52 ( .A0(n33), .A1(n75), .B0(n4), .B1(n57), .C0(n39), .Y(
        REG_ADDR[0]) );
  OR3X2M U53 ( .A(n6), .B(current_state[2]), .C(n16), .Y(n33) );
  INVX2M U54 ( .A(DATA_SYNC[0]), .Y(n75) );
  INVX2M U55 ( .A(DATA_SYNC[2]), .Y(n73) );
  INVX2M U56 ( .A(DATA_SYNC[1]), .Y(n74) );
  OAI22X1M U57 ( .A0(n3), .A1(n57), .B0(n33), .B1(n74), .Y(REG_ADDR[1]) );
  NOR2X2M U58 ( .A(current_state[3]), .B(current_state[1]), .Y(n53) );
  NOR2BX2M U59 ( .AN(DATA_SYNC[5]), .B(n7), .Y(REG_WR_D[5]) );
  NOR2BX2M U60 ( .AN(DATA_SYNC[7]), .B(n7), .Y(REG_WR_D[7]) );
  NAND3X2M U61 ( .A(current_state[2]), .B(n6), .C(n53), .Y(n39) );
  INVX2M U62 ( .A(current_state[2]), .Y(n18) );
  OAI2BB1X2M U63 ( .A0N(REG_RD_D[0]), .A1N(n10), .B0(n67), .Y(FIFO_WR_D[0]) );
  NAND3X2M U64 ( .A(current_state[3]), .B(n17), .C(n31), .Y(n58) );
  NAND4X2M U65 ( .A(n32), .B(n33), .C(n34), .D(n35), .Y(next_state[1]) );
  NAND3X2M U66 ( .A(n19), .B(n18), .C(n45), .Y(n34) );
  NAND3X2M U67 ( .A(DATA_SYNC[4]), .B(DATA_SYNC[0]), .C(n46), .Y(n32) );
  AOI211X2M U68 ( .A0(FIFO_FULL), .A1(n36), .B0(n25), .C0(n37), .Y(n35) );
  INVX2M U69 ( .A(DATA_SYNC[3]), .Y(n23) );
  NAND4X2M U70 ( .A(DATA_SYNC[3]), .B(n53), .C(DATA_SYNC[7]), .D(n54), .Y(n41)
         );
  NOR3X2M U71 ( .A(n19), .B(current_state[2]), .C(n6), .Y(n54) );
  OAI2BB1X2M U72 ( .A0N(REG_RD_D[1]), .A1N(n10), .B0(n66), .Y(FIFO_WR_D[1]) );
  AOI22X1M U73 ( .A0(ALU_OUT[1]), .A1(n11), .B0(ALU_OUT[9]), .B1(n12), .Y(n66)
         );
  OAI2BB1X2M U74 ( .A0N(REG_RD_D[2]), .A1N(n10), .B0(n65), .Y(FIFO_WR_D[2]) );
  AOI22X1M U75 ( .A0(ALU_OUT[2]), .A1(n11), .B0(ALU_OUT[10]), .B1(n12), .Y(n65) );
  OAI2BB1X2M U76 ( .A0N(REG_RD_D[3]), .A1N(n10), .B0(n64), .Y(FIFO_WR_D[3]) );
  AOI22X1M U77 ( .A0(ALU_OUT[3]), .A1(n11), .B0(ALU_OUT[11]), .B1(n12), .Y(n64) );
  OAI2BB1X2M U78 ( .A0N(REG_RD_D[4]), .A1N(n10), .B0(n63), .Y(FIFO_WR_D[4]) );
  AOI22X1M U79 ( .A0(ALU_OUT[4]), .A1(n11), .B0(ALU_OUT[12]), .B1(n12), .Y(n63) );
  OAI2BB1X2M U80 ( .A0N(REG_RD_D[5]), .A1N(n10), .B0(n62), .Y(FIFO_WR_D[5]) );
  AOI22X1M U81 ( .A0(ALU_OUT[5]), .A1(n11), .B0(ALU_OUT[13]), .B1(n12), .Y(n62) );
  OAI2BB1X2M U82 ( .A0N(REG_RD_D[6]), .A1N(n10), .B0(n61), .Y(FIFO_WR_D[6]) );
  AOI22X1M U83 ( .A0(ALU_OUT[6]), .A1(n11), .B0(ALU_OUT[14]), .B1(n12), .Y(n61) );
  OAI2BB1X2M U84 ( .A0N(REG_RD_D[7]), .A1N(n10), .B0(n60), .Y(FIFO_WR_D[7]) );
  AOI22X1M U85 ( .A0(ALU_OUT[7]), .A1(n11), .B0(ALU_OUT[15]), .B1(n12), .Y(n60) );
  NOR4X1M U86 ( .A(DATA_SYNC[5]), .B(DATA_SYNC[4]), .C(DATA_SYNC[1]), .D(
        DATA_SYNC[0]), .Y(n30) );
  OAI22X1M U87 ( .A0(n9), .A1(n1), .B0(n23), .B1(n55), .Y(n69) );
  OAI22X1M U88 ( .A0(n9), .A1(n3), .B0(n74), .B1(n55), .Y(n71) );
  OAI22X1M U89 ( .A0(n9), .A1(n2), .B0(n73), .B1(n55), .Y(n70) );
  OAI22X1M U90 ( .A0(n9), .A1(n4), .B0(n75), .B1(n55), .Y(n72) );
  NAND4X2M U91 ( .A(DATA_SYNC[4]), .B(DATA_SYNC[2]), .C(DATA_SYNC[6]), .D(n51), 
        .Y(n40) );
  NOR3X2M U92 ( .A(n75), .B(DATA_SYNC[5]), .C(DATA_SYNC[1]), .Y(n51) );
  NAND2X2M U93 ( .A(VALID_SYNC), .B(n47), .Y(n55) );
  NAND4BX1M U94 ( .AN(n47), .B(n48), .C(n49), .D(n50), .Y(next_state[0]) );
  AOI31X2M U95 ( .A0(n19), .A1(n15), .A2(n6), .B0(n13), .Y(n50) );
  AOI2BB2XLM U96 ( .B0(n28), .B1(VALID_SYNC), .A0N(ALU_OUT_VALID), .A1N(n43), 
        .Y(n48) );
  AOI32X1M U97 ( .A0(n75), .A1(n22), .A2(n46), .B0(n14), .B1(n21), .Y(n49) );
  AND4X2M U98 ( .A(DATA_SYNC[5]), .B(DATA_SYNC[1]), .C(n52), .D(n14), .Y(n46)
         );
  NOR2X2M U99 ( .A(DATA_SYNC[6]), .B(DATA_SYNC[2]), .Y(n52) );
  INVX2M U100 ( .A(DATA_SYNC[4]), .Y(n22) );
  INVX2M U101 ( .A(DATA_SYNC[6]), .Y(n20) );
  AOI22X1M U102 ( .A0(ALU_OUT[0]), .A1(n11), .B0(ALU_OUT[8]), .B1(n12), .Y(n67) );
  BUFX2M U103 ( .A(GATE_EN), .Y(ALU_EN) );
  OAI21X2M U104 ( .A0(n42), .A1(n19), .B0(n43), .Y(GATE_EN) );
endmodule


module SYS_TOP ( UART_CLK, REF_CLK, RST_N, UART_RX_IN, UART_TX_O, parity_error, 
        framing_error );
  input UART_CLK, REF_CLK, RST_N, UART_RX_IN;
  output UART_TX_O, parity_error, framing_error;
  wire   REF_SYNC_RST, UART_SYNC_RST, RX_CLK, TX_CLK, RX_data_valid, TX_Busy,
         F_EMPTY, Gate_EN, ALU_CLK, RX_data_valid_SYNC, FIFO_WR_INC,
         FIFO_RD_INC_PULSE, F_FULL, ALU_EN, ALU_OUT_VALID, REG_F_WrEn,
         REG_F_RdEn, n1, n2, n3, n4, n5, n6, n7;
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

  RST_SYNC_NUM_STAGES2_0 RST_SYNC_1 ( .CLK(REF_CLK), .RST(RST_N), .SYNC_RST(
        REF_SYNC_RST) );
  RST_SYNC_NUM_STAGES2_1 RST_SYNC_2 ( .CLK(UART_CLK), .RST(RST_N), .SYNC_RST(
        UART_SYNC_RST) );
  UART_RX_data_wd8_RX_bit_count_wd3_prescale_wd6_TX_data_width8 U0_UART ( 
        .RST(n4), .PAR_EN(UART_CONFIG[0]), .PAR_TYP(UART_CONFIG[1]), .RX_CLK(
        RX_CLK), .TX_P_DATA(FIFO_RD_DATA), .TX_DATA_VALID(n1), .TX_OUT(
        UART_TX_O), .TX_Busy(TX_Busy), .TX_CLK(TX_CLK), .prescale(
        UART_CONFIG[7:2]), .RX_IN(UART_RX_IN), .RX_P_DATA(RX_P_DATA), 
        .RX_data_valid(RX_data_valid), .par_err(parity_error), .stp_err(
        framing_error) );
  ClkDiv_DIV_RATIO_WIDTH6 TX_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio(REG_3[5:0]), .o_div_clk(TX_CLK) );
  ClkDiv_DIV_RATIO_WIDTH4 RX_ClkDiv ( .i_ref_clk(UART_CLK), .i_rst_n(n4), 
        .i_clk_en(1'b1), .i_div_ratio(RX_Div_Ratio), .o_div_clk(RX_CLK) );
  RX_DIV_R_CALC_DIV_RATIO_WIDTH4_prescale_wd6 U0_RX_DIV_R_CALC ( .prescale(
        UART_CONFIG[7:2]), .RX_Div_Ratio(RX_Div_Ratio) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(Gate_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  DATA_SYNC_NUM_STAGES2_BUS_WIDTH8 U0_DATA_SYNC ( .CLK(REF_CLK), .RST(n6), 
        .bus_enable(RX_data_valid), .Unsync_bus(RX_P_DATA), .sync_bus(
        RX_P_DATA_SYNC), .enable_pulse(RX_data_valid_SYNC) );
  ASYNC_FIFO_DATA_WIDTH8_ADDR_WIDTH3 CTRL_2_TX_FIFO ( .R_CLK(TX_CLK), .R_RST(
        n4), .W_CLK(REF_CLK), .W_RST(n6), .W_INC(FIFO_WR_INC), .R_INC(
        FIFO_RD_INC_PULSE), .WR_DATA(FIFO_WR_DATA), .RD_DATA(FIFO_RD_DATA), 
        .FULL(F_FULL), .EMPTY(F_EMPTY) );
  PULSE_GEN U0_PULSE_GEN ( .CLK(TX_CLK), .RST(n4), .IN(TX_Busy), .OUT(
        FIFO_RD_INC_PULSE) );
  ALU_op_size8_rslt_size16_fun_size4 U0_ALU ( .CLK(ALU_CLK), .RST(n6), 
        .ALU_EN(ALU_EN), .A(ALU_OP_A), .B(ALU_OP_B), .ALU_FUN(ALU_FUN), 
        .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VALID) );
  Reg_File_ADDR_WD4_DATA_WD8 U0_RegFile ( .CLK(REF_CLK), .RST(n6), .WrEn(
        REG_F_WrEn), .RdEn(REG_F_RdEn), .Address({REG_F_Address[3:2], n3, n2}), 
        .WrData(REG_F_WrData), .RdData(REG_F_RdData), .REG_0(ALU_OP_A), 
        .REG_1(ALU_OP_B), .REG_2(UART_CONFIG), .REG_3({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, REG_3[5:0]}) );
  SYS_CNTRL_DATA_WD8_REG_ADDR_WD4_ALU_FUN_WD4_ALU_OUT_WD16 U0_SYS_CNTRL ( 
        .CLK(REF_CLK), .RST(n6), .REG_RD_D(REG_F_RdData), .DATA_SYNC(
        RX_P_DATA_SYNC), .ALU_OUT(ALU_OUT), .FIFO_FULL(F_FULL), 
        .ALU_OUT_VALID(ALU_OUT_VALID), .VALID_SYNC(RX_data_valid_SYNC), 
        .REG_WR_D(REG_F_WrData), .FIFO_WR_D(FIFO_WR_DATA), .REG_ADDR(
        REG_F_Address), .ALU_FUN(ALU_FUN), .REG_WR_EN(REG_F_WrEn), .REG_RD_EN(
        REG_F_RdEn), .ALU_EN(ALU_EN), .GATE_EN(Gate_EN), .FIFO_WR_INC(
        FIFO_WR_INC) );
  INVX2M U3 ( .A(n5), .Y(n4) );
  INVX2M U4 ( .A(F_EMPTY), .Y(n1) );
  BUFX2M U5 ( .A(REG_F_Address[0]), .Y(n2) );
  BUFX2M U6 ( .A(REG_F_Address[1]), .Y(n3) );
  INVX4M U7 ( .A(n7), .Y(n6) );
  INVX2M U8 ( .A(REF_SYNC_RST), .Y(n7) );
  INVX2M U9 ( .A(UART_SYNC_RST), .Y(n5) );
endmodule

