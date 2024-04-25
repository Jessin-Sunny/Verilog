module tb_and_gate;
  reg A,B;
  wire Y;

  and_gate a1 (.a(A),.b(B),.y(Y));
  
  initial begin
    A=0;
    B=0;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    #10
    A=0;
    B=1;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    #10
    A=1;
    B=0;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    #10
    A=1;
    B=1;
    #1 $display("A=%b\tB=%b\tY=%b\t",A,B,Y);
    #10
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
