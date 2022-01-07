module MUX_testv;
  reg [6:0] dA,dB,dC,dD ;
  reg [1:0] dS;
  wire [6:0] dY; 
  
  MUX A1(dA,dB,dC,dD,dS,dY);
 
  initial 
    begin
      dA = 7'b0000010; dB = 7'b0000000; dC = 7'b0000010; dD = 7'b0010010; dS = 2'b00;
      #100
      dS = 2'b01;
      #100
      dS = 2'b10;
      #100
      dS = 2'b11;
      #100
      dS = 2'b00;
      #100; 
    end
 
  initial
    begin
        $dumpfile("testResults.vcd");
      $dumpvars(1,MUX_testv);
      $monitor("Time=%0d, A=%7b, B=%7b, C=%7b, D=%7b,S=%2b,Y=%7b\n",$time,dA,dB,dC,dD,dS,dY);
    end
endmodule
