/*==============================
			FULL ADDER
================================
Description: 
	This is an full adder circuit
	
Design Engineer: 
	Shedrack Uri B. Dojillo

Date: 
	16 Apr 2026
----------------------------------*/


module full_adder(sum, cout, A, B, cin);
//ports 
input A;
input B;
input cin;
output sum;
output cout;

//nets
wire w1,w2,w3;


//full adder
xor u1(w1, A, B);
xor u2(sum, w1,cin);
and u3(w2, A, B);
and u4(w3, w1, cin);
or u5(cout, w2, w3);

endmodule