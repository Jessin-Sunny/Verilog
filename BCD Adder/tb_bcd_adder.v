module tb_bcd_adder;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] s;
  wire cout;
  bcd_adder ba1 (.a(a),.b(b),.cin(cin),.sum(s),.cout(cout));
  initial begin
    a=4'b0111;
    b=4'b0101;
    cin=1'b0;
    #1 $display("A=%b B=%b Cin=%b S=%b Cout=%b",a,b,cin,s,cout);
    a=4'b0001;
    b=4'b0001;
    cin=1'b1;
    #1 $display("A=%b B=%b Cin=%b S=%b Cout=%b",a,b,cin,s,cout);
    a=4'b0001;
    b=4'b0001;
    cin=1'b0;
    #1 $display("A=%b B=%b Cin=%b S=%b Cout=%b",a,b,cin,s,cout);
    a=4'b1000;
    b=4'b1000;
    cin=1'b0;
    #1 $display("A=%b B=%b Cin=%b S=%b Cout=%b",a,b,cin,s,cout);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
