//
// Complete this module to decode the 8-bit input count as follows:
//
//   ready should go high when 0 <= count <= 25
//
//   run should go high when 25 <= count <= 100, and also when 125 <= count <= 200
//
//   brake should go high when 100 <= count <= 125, and also when 200 <= count <= 210
//
//   stop should go high when 0 <= count <= 10, and also when 210 <= count <= 225

module count_decode (
    input [7:0]	count,
    output	ready, 
    output	run,
    output	brake,
    output	stop
);
    // ready: 0 <= count <= 25
assign ready = (count <= 8'd25);

// run: 25 <= count <= 100 OR 125 <= count <= 200
    assign run = ((count >= 8'd25) && (count <= 8'd100)) || ((count >= 8'd125) && (count <= 8'd200));

// brake: 100 <= count <= 125 OR 200 <= count <= 210
    assign brake = ((count >= 8'd100) && (count <= 8'd125)) || ((count >= 8'd200) && (count <= 8'd210));

// stop: 0 <= count <= 10 OR 210 <= count <= 225
    assign stop = (count <= 8'd10) || ((count >= 8'd210) && (count <= 8'd225));

endmodule
