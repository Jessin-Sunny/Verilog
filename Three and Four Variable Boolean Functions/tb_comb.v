module tb_comb;
  reg A, B, C, D;
  wire Y;
  
  comb c1 (.a(A), .b(B), .c(C), .d(D), .y(Y));
  
  initial begin
    A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b1;
    #1 $display("A=%b\tB=%b\tC=%b\tD=%b\tY=%b\t", A, B, C, D, Y);
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
endmodule
