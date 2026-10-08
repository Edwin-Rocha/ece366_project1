// Code your design here
module thertytwo_bit_PPA(A,B, Cin, S, Cout, C);//32 bit
  input[31:0]A, B;
  input Cin;
  output[31:0] S;
  output Cout;
  output [7:0] C;
  
  wire C4, C8, C12, C16, C20, C24, C28, C32;
  wire [31:0] P;
  wire [31:0] G;
  
  PG_generation PG0(A[0], B[0], P[0], G[0]);//call to the PG generate module
  PG_generation PG1(A[1], B[1], P[1], G[1]);
  PG_generation PG2(A[2], B[2], P[2], G[2]);
  PG_generation PG3(A[3], B[3], P[3], G[3]);
  PG_generation PG4(A[4], B[4], P[4], G[4]);
  PG_generation PG5(A[5], B[5], P[5], G[5]);
  PG_generation PG6(A[6], B[6], P[6], G[6]);
  PG_generation PG7(A[7], B[7], P[7], G[7]);
  PG_generation PG8(A[8], B[8], P[8], G[8]);
  PG_generation PG9(A[9], B[9], P[9], G[9]);
  PG_generation PG10(A[10], B[10], P[10], G[10]);
  PG_generation PG11(A[11], B[11], P[11], G[11]);
  PG_generation PG12(A[12], B[12], P[12], G[12]);
  PG_generation PG13(A[13], B[13], P[13], G[13]);
  PG_generation PG14(A[14], B[14], P[14], G[14]);
  PG_generation PG15(A[15], B[15], P[15], G[15]);
  PG_generation PG16(A[16], B[16], P[16], G[16]);
  PG_generation PG17(A[17], B[17], P[17], G[17]);
  PG_generation PG18(A[18], B[18], P[18], G[18]);
  PG_generation PG19(A[19], B[19], P[19], G[19]);
  PG_generation PG20(A[20], B[20], P[20], G[20]);
  PG_generation PG21(A[21], B[21], P[21], G[21]);
  PG_generation PG22(A[22], B[22], P[22], G[22]);
  PG_generation PG23(A[23], B[23], P[23], G[23]);
  PG_generation PG24(A[24], B[24], P[24], G[24]);
  PG_generation PG25(A[25], B[25], P[25], G[25]);
  PG_generation PG26(A[26], B[26], P[26], G[26]);
  PG_generation PG27(A[27], B[27], P[27], G[27]);
  PG_generation PG28(A[28], B[28], P[28], G[28]);
  PG_generation PG29(A[29], B[29], P[29], G[29]);
  PG_generation PG30(A[30], B[30], P[30], G[30]);
  PG_generation PG31(A[31], B[31], P[31], G[31]); 
  //---------------------------------------------------
  wire p10, g10;//p1,0 and g1,0 
  wire p32, g32;       
  wire p54, g54;       
  wire p76, g76;       
  wire p98, g98;       
  wire p1110, g1110;   
  wire p1312, g1312;   
  wire p1514, g1514;   
  wire p1716, g1716;   
  wire p1918, g1918;   
  wire p2120, g2120;   
  wire p2322, g2322;   
  wire p2524, g2524;   
  wire p2726, g2726;   
  wire p2928, g2928;   
  wire p3130, g3130;   
  Pik_Gik_generator PG_10(P[1], P[0], G[1], G[0], p10, g10);//call pik gik generator
  Pik_Gik_generator PG_32(P[3],  P[2],  G[3],  G[2],  p32,   g32);
  Pik_Gik_generator PG_54(P[5],  P[4],  G[5],  G[4],  p54,   g54);
  Pik_Gik_generator PG_76(P[7],  P[6],  G[7],  G[6],  p76,   g76);
  Pik_Gik_generator PG_98(P[9],  P[8],  G[9],  G[8],  p98,   g98);
  Pik_Gik_generator PG_1110(P[11], P[10], G[11], G[10], p1110, g1110);
  Pik_Gik_generator PG_1312(P[13], P[12], G[13], G[12], p1312, g1312);
  Pik_Gik_generator PG_1514(P[15], P[14], G[15], G[14], p1514, g1514);
  Pik_Gik_generator PG_1716(P[17], P[16], G[17], G[16], p1716, g1716);
  Pik_Gik_generator PG_1918(P[19], P[18], G[19], G[18], p1918, g1918);
  Pik_Gik_generator PG_2120(P[21], P[20], G[21], G[20], p2120, g2120);
  Pik_Gik_generator PG_2322(P[23], P[22], G[23], G[22], p2322, g2322);
  Pik_Gik_generator PG_2524(P[25], P[24], G[25], G[24], p2524, g2524);
  Pik_Gik_generator PG_2726(P[27], P[26], G[27], G[26], p2726, g2726);
  Pik_Gik_generator PG_2928(P[29], P[28], G[29], G[28], p2928, g2928);
  Pik_Gik_generator PG_3130(P[31], P[30], G[31], G[30], p3130, g3130);
  
  
  
  //--------------------------------------
  wire p30, g30;//p3:0
  PGik_two_generator PG_30(p32, p10, g32, g10, p30, g30);
  wire p74, g74;//p7:4
  PGik_two_generator PG_74(p76, p54, g76, g54, p74, g74);
  wire p118, g118;//p11:8
  PGik_two_generator PG_118(p1110, p98, g1110, g98, p118, g118);
  wire p1512, g1512;//p15:12
  PGik_two_generator PG_1512(p1514, p1312, g1514, g1312, p1512, g1512);    
  wire p1916, g1916;//p19:16
  PGik_two_generator PG_1916(p1918, p1716, g1918, g1716, p1916, g1916);
  wire p2320, g2320;//p23:20
  PGik_two_generator PG_2320(p2322, p2120, g2322, g2120, p2320, g2320);
  wire p2724, g2724;//p27:24
  PGik_two_generator PG_2724(p2726, p2524, g2726, g2524, p2724, g2724);
  wire p3128, g3128;//p31:28
  PGik_two_generator PG_3128(p3130, p2928, g3130, g2928, p3128, g3128);
  
  //--------------------------------
  wire tempc4;
  and(tempc4, p30, Cin);
  or(C4, g30, tempc4);
  or(C[0],C4,C4);//save into C[] to read

  wire tempc8;
  and(tempc8, p74, C4);
  or(C8, g74, tempc8);
  or(C[1],C8,C8);

  wire tempc12;
  and(tempc12, p118, C8);
  or(C12, g118, tempc12);
  or(C[2],C12,C12);

  wire tempc16;
  and(tempc16, p1512, C12);
  or(C16, g1512, tempc16);
  or(C[3],C16,C16);
//--
  wire tempc20;
  and(tempc20, p1916, C16);
  or(C20, g1916, tempc20);
  or(C[4], C20, C20);
  
  wire tempc24;
  and(tempc24, p2320, C20);
  or(C24, g2320, tempc24);
  or(C[5],C24,C24);
  
  wire tempc28;
  and(tempc28, p2724, C24);
  or(C28, g2724, tempc28);
  or(C[6],C28,C28);
  
  wire tempc32; //keep incase of 64bit adder is needed
  and(tempc32, p3128, C28);
  or(Cout, g3128, tempc32);//all block value obtained also c32 is Cout
  or(C[7],Cout,Cout);//save Cout to read
  
  //------------------------
  four_bit_RCA_RCS FA0(A[3:0], B[3:0], Cin, S[3:0], C4);//call 4bit adder with block fuctions already calculated
  four_bit_RCA_RCS FA1(A[7:4],   B[7:4],   C4,  S[7:4],   C8);
  four_bit_RCA_RCS FA2(A[11:8],  B[11:8],  C8,  S[11:8],  C12);
  four_bit_RCA_RCS FA3(A[15:12], B[15:12], C12, S[15:12], C16);
  four_bit_RCA_RCS FA4(A[19:16], B[19:16], C16, S[19:16], C20);
  four_bit_RCA_RCS FA5(A[23:20], B[23:20], C20, S[23:20], C24);
  four_bit_RCA_RCS FA6(A[27:24], B[27:24], C24, S[27:24], C28);
  wire fakeCout;
  four_bit_RCA_RCS FA7(A[31:28], B[31:28], C28, S[31:28], fakeCout);
   
endmodule
//----------------------------------------------------------

module PG_generation(a, b, Pout, Gout);//generates p and g
  input a, b;
  output Pout, Gout;
  
  or (Pout,a,b);
  and(Gout, a,b);
  
endmodule

module Pik_Gik_generator(pi, pk, gi, gk, p, g);//generates pik and gik values ex:P1,0
  input pi, pk, gi, gk;//i is final, k is inital 
  output p, g;
  wire temp;
  
  and(p,pi,pk);
  and(temp, pi, gk);
  or(g,gi,temp);
  
endmodule

module PGik_two_generator(pi,pk,gi,gk,pout,gout);
  input pi,pk,gi,gk;//i final k is intial
  output pout, gout;
  wire temp;
  
  and(pout,pi,pk);//gives p3:0 and g3:0
  and(temp, pi, gk);
  or(gout,gi,temp);
  
endmodule

module four_bit_RCA_RCS(A, B, Cin, S, Cout);//4 bit adder/subtractor

input [3:0] A, B;
input Cin;
output [3:0] S;
output Cout;//this will be c4,8,12,ect for bigger adders

  //wire b0,b1,b2,b3;//inverted value for be
  //xor(b0,B[0],Cin);//invert B with Cin to get B'
  //xor(b1,B[1],Cin);
  //xor(b2,B[2],Cin);
  //xor(b3,B[3],Cin);
  
  wire c1, c2, c3;//c0 is Cin
  
  one_bit_full_adder Fa0(A[0], B[0], Cin, S[0], c1);//call to other module 
  one_bit_full_adder Fa1(A[1], B[1], c1, S[1], c2);
  one_bit_full_adder Fa2(A[2], B[2], c2, S[2], c3);
  one_bit_full_adder Fa3(A[3], B[3], c3, S[3], Cout);//Cout is c4

endmodule

module one_bit_full_adder(a, b, Cin, S, Cout);//1b

input a, b, Cin;
output S, Cout;

 wire w1, w2, w3;
  xor(w1,a,b);
  and(w2,a,b);
  xor(S,w1,Cin);//this is gives sum
  and(w3,Cin,w1);
  or(Cout, w3,w2);//gives Cout
  
endmodule

