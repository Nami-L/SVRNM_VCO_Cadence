`timescale 1ns/1ps
nettype real realnet ; // A Nettype Declaration with data type real
module vco (vin, clk);

input realnet vin; 
output logic clk; // input is real value
// output is digital clock
parameter real center_freq = 1; // freq in GHz when zero input
parameter real vco_gain = 1; // freq gain constant in GHz/V
real freq, clk_delay; // freq value & half cycle delay

always_comb begin
freq = center_freq + vco_gain*vin; // update frequency value
clk_delay = 0.5/freq; // and half cycle delay(sampling)
end

initial 
clk = 0; 
always #(clk_delay) clk = !clk; // start with clock at zero
// invert every half cycle
endmodule