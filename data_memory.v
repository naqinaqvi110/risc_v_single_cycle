module data_memory(clk,rst,A,WD,RD,WE);

        //decalring o/ps
        output [31:0]  RD;

        //decalring i/ps
        input clk,rst,WE;
        input [31:0] A, WD;
        
        reg [31:0] mem [1023:0];

        //read 
        assign  RD = (rst) ? mem[A[31:2]] : 32'h00000000;


        //write
        always @(posedge clk ) begin

            if (WE)
               begin
                   mem[A[31:2]] <= WD;
               end
            
        end

       
 


endmodule