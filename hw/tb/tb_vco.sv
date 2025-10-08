`timescale 1ns/1ps
module tb_vco ( );
real r_in; wire clk; // input voltage & output clock signals
vco I1 (r_in, clk); // instantiate the vco
initial begin 
    r_in = 1.0; 
    #10 r_in = 1.2; 
    #10 r_in = 0.2; 
    #10 r_in = -0.2; 
    #10 r_in = -0.7; 
    #10 $finish; 
    end
// describe sequential test procedure
// start with input at 1V (2GHz expected)
// 2.2GHz expected
// 1.2GHz expected
// 0.8GHz expected
// 0.3GHz expected
// stop simulation when tests done
real fmeas, tup=0; // output frequency measure:

always @(posedge clk) begin // on leading clock edge
if (tup>0)
 fmeas=1/($realtime-tup);// compute F=1/period
tup = $realtime; // and save edge time pero guarda el valor anterior
    $display("Time=%t, r_in=%.5f, tup= %.5f, frecuencia:_o= %.5f", $realtime, r_in,tup,fmeas);

end


endmodule
