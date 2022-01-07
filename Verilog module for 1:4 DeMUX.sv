module DE_MUX(En,S,EnA,EnB,EnC,EnD);
  input En;
  input [1:0] S;
  output EnA,EnB,EnC,EnD;
 
  assign EnA = (S==2'b00) ? En: 1'b1;
  assign EnB = (S==2'b01) ? En: 1'b1;
  assign EnC = (S==2'b10) ? En: 1'b1;
  assign EnD = (S==2'b11) ? En: 1'b1;
 
endmodule
