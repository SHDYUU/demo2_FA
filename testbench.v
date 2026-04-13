//testbench for full adder module

module testbench;

	//tb signals
	reg a;
	reg b;
	reg cin;
	wire cout;
	wire sum;
	
	full_adder dut(
		.sum(sum),
		.cout(cout),
		.A(a),
		.B(b),
		.cin(cin)
	);
	initial begin
		  a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;
	end
	
endmodule