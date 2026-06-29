module mytb;
logic a1,b1,c1,z1;
initial begin
	$dumpfile("Mywave.vcd");
	$dumpvars(0,mytb);
end
initial begin
	a1=0;
	b1=0;
	c1=0;
//	$display();
	#5;
	b1=1;
//	$display();
	#5;
	a1=1;
	b1=0;
	#2;
	c1=1;
	$finish;
end
initial
begin
	$monitor("A=%b\tB=%b",a1,b1);
end

//	#30 $finish;
//end
/*initial begin
	#20 $finish;
end
*/
Mycircuit DUT(.a(a1),
	.b(b1),
	.c(c1),
	.z(z1)
	);

//$finish;
endmodule
