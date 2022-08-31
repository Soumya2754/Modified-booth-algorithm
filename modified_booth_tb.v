module modified_booth_tb;

    // Inputs
  reg [15:0] a;
  reg [15:0] b;
    reg clock;

    // Outputs
  wire [31:0] p;
  
    // Variables
    integer j,k;

    // Instantiate the Unit Under Test (UUT)
    modified_booth uut (
        .p(p), 
        .a(a), 
        .b(b), 
      .clock(clock)
    );

    initial clock = 0;
    always #5 clock = ~clock;

    initial
    begin
        a=-120;
        b=-120;
        #20 $display("a * b = %b (%d) * %b (%d) = p = %d = %b", a, a, b, b, p, p);
    end      
endmodule
