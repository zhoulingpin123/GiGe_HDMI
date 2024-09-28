// -----------------------------------------------------------------------------
// Copyright (c) 2014-2019 All rights reserved
// -----------------------------------------------------------------------------
// Author : Youkaiyuan  v3eduyky@126.com
// wechat : 15921999232
// File   : chechsum_ctrl.v
// Create : 2019-11-02 11:57:32
// Revise : 2019-11-05 19:41:25
// Editor : sublime text3, tab size (4)
// -----------------------------------------------------------------------------
`timescale 1ns / 1ps
module chechsum_ctrl(
		input	wire 					tx_clk,
		input	wire 					rst,
		input	wire 	[7:0]			tx_gen_data,
		input	wire 					tx_data_en,
		output	wire 	[7:0]			tx_data,
		output	wire 					tx_en,
		output	wire 					pre_flag
    );

parameter IP_S_HEAD = 'hc0a8+'h0001+'hffff+'hffff+'h0011+'h0048;

reg 		tx_data_en_dly;
reg [7:0]	tx_gen_data_dly;
reg	[13:0]	data_cnt;
reg 		shift_ip_en,shift_ip_en_dly;
reg [15:0]	shift_ip_data;

reg 		ip_add_flag;
reg [31:0]	ip_sum;
reg 		ip_end;
reg [15:0]	ip_checksum;

reg 		shift_udp_en,shift_udp_en_dly;
reg [15:0]	shift_udp_data;
reg 		shift_udp_flag;
reg [31:0]	udp_sum;
reg 		udp_end;
reg [15:0]	udp_checksum;
wire 		tx_end_flag;
reg 		rd_en,rd_en_dly;
reg [11:0]	rd_addr;
wire [7:0]	rd_data;
reg [7:0]	po_checksum_data;
reg 		po_checksum_en;
reg 		pre_flag_r;

assign pre_flag = pre_flag_r;
assign tx_en = po_checksum_en;
assign tx_data = po_checksum_data;

assign  tx_end_flag = udp_end;

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		tx_data_en_dly <= 1'b0;
		tx_gen_data_dly <= 'd0;
	end
	else begin
		tx_data_en_dly <= tx_data_en;
		tx_gen_data_dly <= tx_gen_data;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		data_cnt <='d0;
	end
	else if (tx_data_en_dly == 1'b1) begin
		data_cnt <= data_cnt + 1'b1;
	end
	else begin
		data_cnt <='d0;
	end
end
always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		shift_ip_en <= 1'b0;
	end
	else if(data_cnt == 'd41) begin
		shift_ip_en <= 1'b0;
	end
	else if (data_cnt == 'd21) begin
		shift_ip_en <= 1'b1;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		shift_ip_data <='d0;
	end
	else if (shift_ip_en == 1'b1) begin
		shift_ip_data <= {shift_ip_data[7:0],tx_gen_data_dly};
	end
end

always @(posedge tx_clk) begin
	shift_ip_en_dly <= shift_ip_en;
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		ip_add_flag <= 1'b0;
	end
	else if (shift_ip_en_dly == 1'b1) begin
		ip_add_flag <= ip_add_flag + 1'b1;
	end
	else begin
		ip_add_flag <='d0;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		ip_sum <='d0;
	end
	else if(ip_end == 1'b1) begin
		ip_sum <='d0;
	end
	else if (ip_add_flag == 1'b1) begin
		ip_sum <= ip_sum + shift_ip_data;
	end
end

always @(posedge tx_clk) begin
	if(rst == 1'b1) begin
		ip_end <= 1'b0;
	end
	else if(shift_ip_en == 1'b0 && shift_ip_en_dly == 1'b1) begin
		ip_end <= 1'b1;
	end
	else  begin
		ip_end <= 1'b0;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		ip_checksum <= 'd0;
	end
	else if (ip_end == 1'b1) begin
		ip_checksum <= ~(ip_sum[31:16] + ip_sum[15:0]);
	end
end

blkwr8x4096 frame_buffer (
  .clka(tx_clk),    // input wire clka
  .wea(tx_data_en_dly),      // input wire [0 : 0] wea
  .addra(data_cnt),  // input wire [11 : 0] addra
  .dina(tx_gen_data_dly),    // input wire [7 : 0] dina
  .clkb(tx_clk),    // input wire clkb
  .addrb(rd_addr),  // input wire [11 : 0] addrb
  .doutb(rd_data)  // output wire [7 : 0] doutb
);

always @(posedge tx_clk) begin
	if(rst == 1'b1) begin
		shift_udp_en <='d0;
	end
	else if(data_cnt == 'd113) begin
		shift_udp_en <= 1'b0;
	end
	else if(data_cnt == 'd41) begin
		shift_udp_en <= 1'b1;
	end
end

always @(posedge tx_clk) begin
	shift_udp_en_dly <= shift_udp_en;
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		shift_udp_data <='d0;
	end
	else if (shift_udp_en == 1'b1) begin
		shift_udp_data <= {shift_udp_data[7:0],tx_gen_data_dly};
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		shift_udp_flag <= 1'b0;
	end
	else if (shift_udp_en_dly == 1'b1) begin
		shift_udp_flag <= shift_udp_flag + 1'b1;
	end
	else begin
		shift_udp_flag <= 1'b0;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		udp_sum <='d0;
	end
	else if (shift_udp_en == 1'b1 && shift_udp_en_dly == 1'b0) begin
		udp_sum <= IP_S_HEAD;
	end
	else if(shift_udp_flag == 1'b1) begin
		udp_sum <= udp_sum + shift_udp_data;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		udp_end <=1'b0;
	end
	else if (shift_udp_en_dly == 1'b1 && shift_udp_en == 1'b0) begin
		udp_end <= 1'b1;
	end
	else begin
		udp_end <= 1'b0;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		udp_checksum <='d0;
	end
	else if (udp_end == 1'b1) begin
		udp_checksum <= ~(udp_sum[31:16]+udp_sum[15:0]);
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		rd_en <= 1'b0;
	end
	else if(rd_en == 1'b1 && rd_addr == 'd113)begin
		rd_en <= 1'b0;
	end
	else if (tx_end_flag==1'b1) begin
		rd_en <= 1'b1;
	end
end

always @(posedge tx_clk) begin
	rd_en_dly <= rd_en;
	po_checksum_en <= rd_en_dly;
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		rd_addr <= 'd0;
	end
	else if (rd_en == 1'b1) begin
		rd_addr <= rd_addr + 1'b1;
	end
	else begin
		rd_addr <='d0;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		po_checksum_data <='d0;
	end
	else if (rd_en == 1'b1 && rd_addr == 'd33) begin
		po_checksum_data <= ip_checksum[15:8];
	end
	else if (rd_en == 1'b1 && rd_addr == 'd34) begin
		po_checksum_data <= ip_checksum[7:0];
	end
	else if (rd_en == 1'b1 && rd_addr == 'd49) begin
		po_checksum_data <= udp_checksum[15:8];
	end
	else if (rd_en == 1'b1 && rd_addr == 'd50) begin
		po_checksum_data <= udp_checksum[7:0];
	end
	else  begin
		po_checksum_data <= rd_data;
	end
end

always @(posedge tx_clk) begin
	if (rst == 1'b1) begin
		pre_flag_r <=1'b0;
	end
	else if (rd_en == 1'b1 && rd_addr == 'd9) begin
		pre_flag_r <= 1'b0;
	end
	else if (rd_en == 1'b1 && rd_addr == 'd1) begin
		pre_flag_r <= 1'b1;
	end
end


endmodule
