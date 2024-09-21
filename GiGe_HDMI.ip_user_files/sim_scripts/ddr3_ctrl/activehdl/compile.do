vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ddr3_ctrl_mig_sim.v" \
"../../../../GiGe_HDMI.srcs/sources_1/ip/ddr3_ctrl/ddr3_ctrl/user_design/rtl/ddr3_ctrl.v" \

vlog -work xil_defaultlib \
"glbl.v"

