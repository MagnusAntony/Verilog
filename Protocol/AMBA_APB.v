module APB_MASTER(
    input pclk,
    input prst,
    input pread_write,
    input ptransfer,
    input pready,
    input [7:0] apb_write_paddr,
    input [7:0] apb_read_paddr,
    input [7:0] apb_write_data,
    input [7:0] prdata,
    
    output reg psel,
    output reg penable,
    output reg pwrite,
    output reg [7:0] pwdata,
    output reg [7:0] paddr,
    output reg [7:0] apb_read_out_data
);

    reg [1:0] current, next;

    parameter idle = 2'b00;
    parameter setup = 2'b01;
    parameter access = 2'b10;

    // State transition
    always @(posedge pclk or posedge prst) begin
        if (prst) begin
            current <= idle;
            next <= idle;
        end else begin
            current <= next;
        end
    end

    // Next state logic
    always @(*) begin
        case (current)
            idle: begin
                if (ptransfer == 0) begin
                    next = idle;
                end else begin
                    next = setup;
                end
            end

            setup: begin
                if (ptransfer == 1) begin
                    next = access;
                end else begin
                    next = idle;
                end
            end

            access: begin
                if (ptransfer == 1 && pready == 1) begin
                    next = setup;
                end else if (ptransfer == 1 && pready == 0) begin
                    next = access;
                end else if (ptransfer == 0 && pready == 1) begin
                    next = idle;
                end else begin
                    next = idle;
                end
            end

            default: begin
                next = idle;
            end
        endcase
    end

    // Output logic
    always @(posedge pclk or posedge prst) begin
        if (prst) begin
            psel <= 0;
            penable <= 0;
            pwrite <= 0;
            pwdata <= 0;
            paddr <= 0;
            apb_read_out_data <= 0;
        end else begin
            case (current)
                idle: begin
                    psel <= 0;
                    penable <= 0;
                    pwrite <= pread_write;
                    if (pread_write == 0) begin
                        paddr <= 0;
                    end else begin
                        paddr <= 0;
                        pwdata <= 0;
                    end
                end

                setup: begin
                    psel <= 1;
                    penable <= 0;
                    pwrite <= pread_write;
                    if (pread_write == 0) begin
                        paddr <= apb_read_paddr;
                    end else begin
                        paddr <= apb_write_paddr;
                        pwdata <= apb_write_data;
                    end
                end

                access: begin
                    psel <= 1;
                    penable <= 1;
                    if (pread_write == 0) begin
                        if (pready == 1) begin
                            apb_read_out_data <= prdata;
                        end else begin
                            apb_read_out_data <= 0;
                        end
                    end else begin
                        if (pready == 1) begin
                            apb_read_out_data <= 0;
                        end
                    end
                end

                default: begin
                    apb_read_out_data <= 0;
                end
            endcase
        end
    end

endmodule
