
// Code your design here
module MUX(A,B,C,D,S,Y);
  input [6:0] A;
  input [6:0] B;
  input [6:0] C;
  input [6:0] D;
  input [1:0] S;
  output [6:0] Y;
  //Yaha per first what we have done is We have taken the input of S[1] now if the S[1] is 0 so A and B condition will run and if thr S[1] is 1 the D and C condition will run now in the conditions also there is nesting like S[0] is is true so D and B will run depending upon what S[1] was. 
  assign Y = S[1] ? (S[0] ? D : C) : (S[0] ? B : A);
  
endmodule
