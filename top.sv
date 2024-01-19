module top(clkin_data, in_data, out_data, probe_data);
  wire celloutsig_0z;
  wire celloutsig_1z;
  wire celloutsig_2z;
  input clkin_data;
  wire clkin_data;
  input [95:0] in_data;
  wire [95:0] in_data;
  output [95:0] out_data;
  wire [95:0] out_data;
  output [31:0] probe_data;
  wire [31:0] probe_data;
  assign celloutsig_0z = ~(in_data[51] & in_data[19]);
  assign celloutsig_1z = ~(celloutsig_0z & in_data[19]);
  assign celloutsig_2z = ~(in_data[68] & in_data[37]);
  assign { out_data[32], out_data[0] } = { celloutsig_1z, celloutsig_2z };
endmodule
