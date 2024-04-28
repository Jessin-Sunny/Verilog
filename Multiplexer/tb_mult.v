module tb_mult;
  reg i0,i1,i2,i3,s0,s1;
  wire y;
  
  mult m (.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
  
  initial begin
    i0=1'b1;
    i1=1'b0;
    i2=1'b0;
    i3=1'b0;
    s0=1'b0;
    s1=1'b0;
    $display("time=0%t\tso=%b\ts1=%b\ty=%b\t,$time,so,s1,y");
    #45 $finish;
  end
  
  always #3 s0=~s0;
  always #6 s1=~s1;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
