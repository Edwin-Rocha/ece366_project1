// Code your design here
module PPA(A, B, Cin, S, Cout);
  input[15:0] A, B;
  input Cin;
  output[15:0] S;
  output Cout;
  
  wire[15:0] p, g;//p[-1]=0 and g[-1]=Cin
  wire [31:0] pij, gij;//look at project diagram you numbered them 
  wire pzero;//p[-1]=0
  and(pzero, pzero,0);
  
  pgii pgii0(A[0], B[0], p[0], g[0]);//pgii module
  pgii pgii1(A[1], B[1], p[1], g[1]);
  pgii pgii2(A[2], B[2], p[2], g[2]);
  pgii pgii3(A[3], B[3], p[3], g[3]);
  pgii pgii4(A[4], B[4], p[4], g[4]);
  pgii pgii5(A[5], B[5], p[5], g[5]);
  pgii pgii6(A[6], B[6], p[6], g[6]);
  pgii pgii7(A[7], B[7], p[7], g[7]);  
  pgii pgii8(A[8], B[8], p[8], g[8]);
  pgii pgii9(A[9], B[9], p[9], g[9]);
  pgii pgii10(A[10], B[10], p[10], g[10]);
  pgii pgii11(A[11], B[11], p[11], g[11]);
  pgii pgii12(A[12], B[12], p[12], g[12]);
  pgii pgii13(A[13], B[13], p[13], g[13]);
  pgii pgii14(A[14], B[14], p[14], g[14]);
  pgii pgii15(A[15], B[15], p[15], g[15]);
  //first row
  pgij pgij0_1(p[0], pzero, g[0], Cin, pij[0], gij[0]);//box0  0;-1
  pgij pgij21(p[2],p[1],g[2],g[1],pij[1],gij[1]);//box1 2;1
  pgij pgij43(p[4],p[3], g[4], g[3], pij[2], gij[2]);//box2 4;3
  pgij pgij65(p[6], p[5], g[6], g[5], pij[3], gij[3]);//box3 6;5
  pgij pgij87(p[8],p[7],g[8],g[7], pij[4],gij[4]);//box4 8;7 
  pgij pgij109(p[10],p[9],g[10],g[9], pij[5], gij[5]);//box5 10;9
  pgij pgij1211(p[12],p[11],g[12],g[11], pij[6],gij[6]);//box6 12;11
  pgij pgij1413(p[14],p[13],g[14],g[13], pij[7],gij[7]);//box7 14;13 
  //next row of boxes
  pgij pgij1_1(p[1],pij[0],g[1],gij[0], pij[8],gij[8]);//box8 1;-1
  pgij pgij2_1(pij[1],pij[0],gij[1],gij[0], pij[9],gij[9]);//box9 2;-1
  pgij pgij53(p[5],pij[2],g[5],gij[2], pij[10],gij[10]);//box10 5;3
  pgij pgij63(pij[3], pij[2],gij[3],gij[2], pij[11],gij[11]);//box 11 6;3
  pgij pgij97(p[9], pij[4],g[9],gij[4], pij[12],gij[12]);//box12 9;7
  pgij pgij107(pij[5], pij[4], gij[5],gij[4], pij[13], gij[13]);//box13 10;7
  pgij pgij1311(p[13],pij[6],g[13],gij[6], pij[14], gij[14]);//box14 13;11
  pgij pgij1411(pij[7],pij[6],gij[7], gij[6], pij[15],gij[15]);//box15 14;11  
  //third row of boxes
  pgij pgij3_1(p[3],pij[9],g[3],gij[9], pij[16],gij[16]);//box16 3;-1
  pgij pgij4_1(pij[2],pij[9],gij[2],gij[9], pij[17],gij[17]);//boxes17 4;-1
  pgij pgij5_1(pij[10],pij[9],gij[10],gij[9], pij[18],gij[18]);//box18 5;-1
  pgij pgij6_1(pij[11],pij[9],gij[11],gij[9], pij[19],gij[19]);//box19 6;-1
  pgij pgij117(p[11],pij[13],g[11],gij[13], pij[20], gij[20]);//box20 11;7
  pgij pgij127(pij[6],pij[13],gij[6],gij[13], pij[21], gij[21]);//box21 12;7
  pgij pgij137(pij[14],pij[13],gij[14],gij[13], pij[22], gij[22]);//box22 13;7
  pgij pgij147(pij[15],pij[13],gij[15],gij[13], pij[23], gij[23]);//box23 14;7
  //last row of boxes 
  pgij pgij7_1(p[7], pij[19],g[7], gij[19], pij[24], gij[24]);//box24 7;-1
  pgij pgij8_1(pij[4],pij[19],gij[4],gij[19], pij[25], gij[25]);//box25 8;-1
  pgij pgij9_1(pij[12],pij[19],gij[12],gij[19], pij[26], gij[26]);//box26 9;-1
  pgij pgij10_1(pij[13],pij[19],gij[13],gij[19], pij[27], gij[27]);//box27 10;-1
  pgij pgij11_1(pij[20],pij[19],gij[20],gij[19], pij[28], gij[28]);//box28 11;-1
  pgij pgij12_1(pij[21],pij[19],gij[21],gij[19], pij[29], gij[29]);//box29 12;-1
  pgij pgij13_1(pij[22],pij[19],gij[22],gij[19], pij[30], gij[30]);//box30 13;-1
  pgij pgij14_1(pij[23],pij[19],gij[23],gij[19], pij[31], gij[31]);//box31 14;-1
  
  //S value
  si s0(Cin,     A[0], B[0], S[0]);//si 0
  si s1(gij[0],  A[1], B[1], S[1]);//si 1
  si s2(gij[8],  A[2], B[2], S[2]);//si 2
  si s3(gij[9],  A[3], B[3], S[3]);//si 3
  si s4(gij[16], A[4], B[4], S[4]);//si 4
  si s5(gij[17], A[5], B[5], S[5]);//si 5
  si s6(gij[18], A[6], B[6], S[6]);//si 6
  si s7(gij[19], A[7], B[7], S[7]);//si 7
  si s8(gij[24], A[8], B[8], S[8]);//si 8
  si s9(gij[25], A[9], B[9], S[9]);//si 9
  si s10(gij[26], A[10],B[10], S[10]);//si 10
  si s11(gij[27], A[11],B[11], S[11]);//si 11
  si s12(gij[28], A[12],B[12], S[12]);//si 12
  si s13(gij[29], A[13],B[13], S[13]);//si 13
  si s14(gij[30], A[14],B[14], S[14]);//si 14
  si s15(gij[31], A[15],B[15], S[15]);//si 15
  
  //get Cout
  CallOut cc(g[15], p[15], gij[31], Cout);//get Cout
  
endmodule//end of PPA


module pgii(a, b, p, g);//generates pi,i and gi,i
  input a, b;
  output p, g;
  
  or(p, a, b);
  and(g, a, b);
  
endmodule//---------------------

module pgij(pi, pj, gi, gj, pij, gij);//generates pi;k and gi;k for i;j eqution
  input pi,pj, gi,gj;
  output pij,gij;
  wire temp;
  
  and(pij,pi,pj);//gets pi;j
  
  and(temp, gj, pi);//gi;j
  or(gij, temp, gi);
  
endmodule//----------------------

module si(g, a, b, s);//generates si
  input g, a, b;//input values
  output s;
  
  wire temp;
  xor(temp, a, b);
  xor(s, g, temp);
  
endmodule

module CallOut(g, p, gij, Cout);//gets Cout= g15;15|p14;-1&&g14;-1
  input g, p, gij;
  output Cout;
  wire temp;
  
  and(temp, p, gij);
  or(Cout, temp, g);
  
endmodule

