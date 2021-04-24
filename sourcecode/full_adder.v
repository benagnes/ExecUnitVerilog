module full_adder(x, y, cin, s, cout);
	input x,y,cin;
	output s,cout;
   assign s = (x^y) ^ cin;
   assign cout = (y&cin)| (x&y) | (x&cin);
endmodule // full_adder
