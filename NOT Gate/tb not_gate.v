module tb_not_gate;
  reg X;
  wire Y;
  not_gate n1(.x(X),.y(Y));
  
  initial begin
    X=1'b0;
    #1 $display("X=%b\tY=%b\t",X,Y);
    X=1'b1;
    #1 $display("X=%b\tY=%b\t",X,Y);
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
