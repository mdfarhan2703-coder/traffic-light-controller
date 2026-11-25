module tb_traffic_light;

    reg clk;
    reg reset;

    wire [1:0] NS_light;
    wire [1:0] EW_light;

    // Instantiate DUT
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .NS_light(NS_light),
        .EW_light(EW_light)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        clk = 0;
        reset = 1;

        #10 reset = 0;

        #100 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t NS=%b EW=%b",
                  $time, NS_light, EW_light);
    end

    // Generate waveform
    initial begin
        $dumpfile("traffic_light_tb.vcd");
        $dumpvars(0, tb_traffic_light);
    end

endmodule
