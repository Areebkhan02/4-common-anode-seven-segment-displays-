module toplevelmodule(A,B,C,D,S,En,EnA,EnB,EnC,EnD,Y);
  input [6:0] A,B,C,D;
  input [1:0] S;
  input En;
  output EnA,EnB,EnC,EnD;
  output [6:0] Y;  
  MUX g1 (A,B,C,D,S,Y);
  DE_MUX g2(En,S,EnA,EnB,EnC,EnD);
endmodule

