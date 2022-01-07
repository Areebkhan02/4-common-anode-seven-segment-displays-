module toplevelmodule_tb;
  reg [6:0] dA,dB,dC,dD;
  reg [1:0] dS; 
  reg  dEn;
  wire [6:0] dY;
  wire dEnA, dEnB,dEnC,dEnD;
  
  toplevelmodule C11(dA,dB,dC,dD,dS,dEn,dEnA,dEnB,dEnC,dEnD,dY);
  
  initial 
    begin
      dA = 7'b0000010 ; dB = 7'b0000000; dC = 7'b0010010; dD = 7'b1111000; dS = 2'b00;dEn = 1'b0;
      #100
      dS = 2'b01;dEn = 1'b0;
      #100
      dS = 2'b10;dEn = 1'b0;
      #100
      dS = 2'b11;dEn = 1'b0;
      #100
      dS = 2'b00;dEn = 1'b1;   
      #100
      dS = 2'b10;dEn = 1'b1;  
    end
 
  initial
    begin
        $dumpfile("testResults.vcd");
      $dumpvars(1,toplevelmodule_tb);
 
      $monitor("Time=%0d,dA = %7b, dB = %7b, dC = %7b, dD = %7b, dS = %2b, dEn = %1b,dEnA = %1b, dEnB = %1b, dEnC = %1b,dEnD=%1b,dY = %7b",$time,dA,dB,dC,dD,dS,dEn,dEnA,dEnB,dEnC,dEnD,dY);
      end 
endmodule
