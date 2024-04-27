module tb_not_gate;
  reg X;
  wire Y;
  
  initial begin
    X=1'b0;
    #1 $display("X=%b\tY=%b\t",X,Y);
    X=1'b1;
    #1 $display("X=%b\tY=%b\t",X,Y);
  end
  
endmodule
