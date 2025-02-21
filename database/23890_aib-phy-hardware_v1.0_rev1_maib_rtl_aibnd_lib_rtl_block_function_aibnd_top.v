// This program was cloned from: https://github.com/chipsalliance/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. 
// Library - aibnd_lib, Cell - aibnd_top, View - schematic
// LAST TIME SAVED: May 12 19:18:16 2015
// NETLIST TIME: May 12 19:44:01 2015
// `timescale 1ns / 1ns 

module aibnd_top ( jtag_clksel_out, jtag_intest_out, jtag_mode_out,
     jtag_rstb_en_out, jtag_rstb_out, jtag_tx_scanen_out,
     jtag_weakpdn_out, jtag_weakpu_out, oatpg_scan_out0,
     oatpg_scan_out1, ohssi_avmm1_data_in, ohssi_avmm2_data_in,
     ohssi_fsr_data_in, ohssi_fsr_load_in, ohssi_pld_8g_rxelecidle,
     ohssi_pld_pcs_rx_clk_out, ohssi_pld_pcs_tx_clk_out,
     ohssi_pld_pma_clkdiv_rx_user, ohssi_pld_pma_clkdiv_tx_user,
     ohssi_pld_pma_hclk, ohssi_pld_pma_internal_clk1,
     ohssi_pld_pma_internal_clk2, ohssi_pld_pma_pfdmode_lock,
     ohssi_pld_pma_rxpll_lock, ohssi_pld_rx_hssi_fifo_latency_pulse,
     ohssi_pld_tx_hssi_fifo_latency_pulse, ohssi_pma_aib_tx_clk,
     ohssi_rx_data_out, ohssi_rx_transfer_clk, ohssi_sr_clk_in,
     ohssi_sr_clk_n_in, ohssi_ssr_data_in, ohssi_ssr_load_in,
     ohssi_tx_dll_lock, ohssitx_dcc_done, ohssitx_odcc_dll2core,
     ojtag_clkdr_out_chain, ojtag_last_bs_out_chain,
     ojtag_rx_scan_out_chain, ored_directin_data_out0_chain1,
     ored_directin_data_out0_chain2, ored_rxen_out_chain1,
     ored_rxen_out_chain2, ored_shift_en_out_chain1,
     ored_shift_en_out_chain2, aib_hssi_adapter_rx_pld_rst_n,
     aib_hssi_adapter_tx_pld_rst_n, aib_hssi_avmm1_data_in,
     aib_hssi_avmm1_data_out, aib_hssi_avmm2_data_in,
     aib_hssi_avmm2_data_out, aib_hssi_fsr_data_in,
     aib_hssi_fsr_data_out, aib_hssi_fsr_load_in,
     aib_hssi_fsr_load_out, aib_hssi_pcs_rx_pld_rst_n,
     aib_hssi_pcs_tx_pld_rst_n, aib_hssi_pld_8g_rxelecidle,
     aib_hssi_pld_pcs_rx_clk_out, aib_hssi_pld_pcs_rx_clk_out_n,
     aib_hssi_pld_pcs_tx_clk_out, aib_hssi_pld_pcs_tx_clk_out_n,
     aib_hssi_pld_pma_clkdiv_rx_user, aib_hssi_pld_pma_clkdiv_tx_user,
     aib_hssi_pld_pma_coreclkin, aib_hssi_pld_pma_coreclkin_n,
     aib_hssi_pld_pma_hclk, aib_hssi_pld_pma_internal_clk1,
     aib_hssi_pld_pma_internal_clk2, aib_hssi_pld_pma_pfdmode_lock,
     aib_hssi_pld_pma_rxpll_lock, aib_hssi_pld_pma_rxpma_rstb,
     aib_hssi_pld_pma_txdetectrx, aib_hssi_pld_pma_txpma_rstb,
     aib_hssi_pld_rx_hssi_fifo_latency_pulse, aib_hssi_pld_sclk,
     aib_hssi_pld_tx_hssi_fifo_latency_pulse, aib_hssi_pma_aib_tx_clk,
     aib_hssi_pma_aib_tx_clk_n, aib_hssi_rx_data_out,
     aib_hssi_rx_transfer_clk, aib_hssi_rx_transfer_clk_n,
     aib_hssi_sr_clk_in, aib_hssi_sr_clk_n_in, aib_hssi_sr_clk_n_out,
     aib_hssi_sr_clk_out, aib_hssi_ssr_data_in, aib_hssi_ssr_data_out,
     aib_hssi_ssr_load_in, aib_hssi_ssr_load_out, aib_hssi_tx_data_in,
     aib_hssi_tx_transfer_clk, aib_hssi_tx_transfer_clk_n,
     aib_shared_direct_async, oshared_direct_async,
     iatpg_pipeline_global_en, iatpg_scan_clk_in0, iatpg_scan_clk_in1,
     iatpg_scan_in0, iatpg_scan_in1, iatpg_scan_mode_n,
     iatpg_scan_rst_n, iatpg_scan_shift_n, iavm1_sr_clk_out,
     iavm1in_en0, iavm1in_en1, iavm1in_en2, iavm1out_dataselb,
     iavm1out_en, iavm2in_en0, iavm2out_dataselb, iavm2out_en,
     ihssi_adapter_rx_pld_rst_n, ihssi_adapter_tx_pld_rst_n,
     ihssi_avmm1_data_out, ihssi_avmm2_data_out, ihssi_dcc_dft_nrst,
     ihssi_dcc_dft_nrst_coding, ihssi_dcc_dft_up,
     ihssi_dcc_dll_core2dll_str, ihssi_dcc_dll_csr_reg,
     ihssi_dcc_dll_entest, ihssi_dcc_req, ihssi_fsr_data_out,
     ihssi_fsr_load_out, ihssi_pcs_rx_pld_rst_n,
     ihssi_pcs_tx_pld_rst_n, ihssi_pld_pma_coreclkin,
     ihssi_pld_pma_rxpma_rstb, ihssi_pld_pma_txdetectrx,
     ihssi_pld_pma_txpma_rstb, ihssi_pld_sclk, ihssi_rb_clkdiv,
     ihssi_rb_dcc_byp, ihssi_rb_dcc_byp_dprio, // Mod : Add dprio rambit
     ihssi_rb_dcc_dft, ihssi_rb_dcc_dft_sel,
     ihssi_rb_dcc_dll_dft_sel, ihssi_rb_dcc_en, ihssi_rb_dcc_en_dprio, // Mod : Add dprio rambit 
     ihssi_rb_dcc_manual_dn,
     ihssi_rb_dcc_manual_mode, ihssi_rb_dcc_manual_mode_dprio, // Mod : Added dprio rambit
     ihssi_rb_dcc_manual_up,
     ihssi_rb_dcc_test_clk_pll_en_n, ihssi_rb_dll_test_clk_pll_en_n,
     ihssi_rb_half_code, ihssi_rb_selflock, ihssi_ssr_data_out,
     ihssi_ssr_load_out, ihssi_tx_data_in, ihssi_tx_dll_lock_req,
     ihssi_tx_transfer_clk, ihssirx_async_en, ihssirx_clk_en,
     ihssirx_out_dataselb, ihssirx_out_ddren, ihssirx_out_en,
     ihssitx_in_en0, ihssitx_in_en1, ihssitx_in_en2, ihssitx_in_en3,
     ihssitx_out_dataselb, ihssitx_out_en, ihssitxdll_rb_clkdiv_str,
     ihssitxdll_rb_half_code_str, ihssitxdll_rb_selflock_str,
     ihssitxdll_str_align_dly_pst,
     ihssitxdll_str_align_dyconfig_ctl_static,
     ihssitxdll_str_align_dyconfig_ctlsel, ihssitxdll_str_align_entest,
     ihssitxdll_str_align_stconfig_core_dn_prgmnvrt,
     ihssitxdll_str_align_stconfig_core_up_prgmnvrt,
     ihssitxdll_str_align_stconfig_core_updnen,
     ihssitxdll_str_align_stconfig_dftmuxsel,
     ihssitxdll_str_align_stconfig_dll_en,
     ihssitxdll_str_align_stconfig_dll_rst_en,
     ihssitxdll_str_align_stconfig_hps_ctrl_en,
     ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt,
     ihssitxdll_str_align_stconfig_new_dll,
     ihssitxdll_str_align_stconfig_spare, ijtag_clkdr_in_chain,
     ijtag_last_bs_in_chain, ijtag_tx_scan_in_chain, indrv_r12,
     indrv_r34, indrv_r56, indrv_r78, ipdrv_r12, ipdrv_r34, ipdrv_r56,
     ipdrv_r78, ired_avm1_shift_en, ired_directin_data_in_chain1,
     ired_directin_data_in_chain2, ired_irxen_in_chain1,
     ired_irxen_in_chain2, ired_rshift_en_dirclkn,
     ired_rshift_en_dirclkp, ired_rshift_en_drx, ired_rshift_en_dtx,
     ired_rshift_en_poutp, ired_rshift_en_rx, ired_rshift_en_rx_avmm2,
     ired_rshift_en_tx, ired_rshift_en_tx_avmm2,
     ired_rshift_en_txferclkout, ired_rshift_en_txferclkoutn,
     ired_rx_shift_en, ired_shift_en_in_chain1,
     ired_shift_en_in_chain2, irstb, jtag_clksel, jtag_intest,
     jtag_mode_in, jtag_rstb, jtag_rstb_en, jtag_tx_scanen_in,
     jtag_weakpdn, jtag_weakpu, vccl_aibnd, vssl_aibnd );

output  jtag_clksel_out, jtag_intest_out, jtag_mode_out,
     jtag_rstb_en_out, jtag_rstb_out, jtag_tx_scanen_out,
     jtag_weakpdn_out, jtag_weakpu_out, oatpg_scan_out0,
     oatpg_scan_out1, ohssi_avmm1_data_in, ohssi_avmm2_data_in,
     ohssi_fsr_data_in, ohssi_fsr_load_in, ohssi_pld_8g_rxelecidle,
     ohssi_pld_pcs_rx_clk_out, ohssi_pld_pcs_tx_clk_out,
     ohssi_pld_pma_clkdiv_rx_user, ohssi_pld_pma_clkdiv_tx_user,
     ohssi_pld_pma_hclk, ohssi_pld_pma_internal_clk1,
     ohssi_pld_pma_internal_clk2, ohssi_pld_pma_pfdmode_lock,
     ohssi_pld_pma_rxpll_lock, ohssi_pld_rx_hssi_fifo_latency_pulse,
     ohssi_pld_tx_hssi_fifo_latency_pulse, ohssi_pma_aib_tx_clk,
     ohssi_rx_transfer_clk, ohssi_sr_clk_in, ohssi_sr_clk_n_in,
     ohssi_ssr_data_in, ohssi_ssr_load_in, ohssi_tx_dll_lock,
     ohssitx_dcc_done, ojtag_clkdr_out_chain, ojtag_last_bs_out_chain,
     ojtag_rx_scan_out_chain, ored_directin_data_out0_chain1,
     ored_directin_data_out0_chain2, ored_shift_en_out_chain1,
     ored_shift_en_out_chain2;

inout  aib_hssi_adapter_rx_pld_rst_n, aib_hssi_adapter_tx_pld_rst_n,
     aib_hssi_avmm1_data_in, aib_hssi_avmm2_data_in,
     aib_hssi_fsr_data_in, aib_hssi_fsr_data_out, aib_hssi_fsr_load_in,
     aib_hssi_fsr_load_out, aib_hssi_pcs_rx_pld_rst_n,
     aib_hssi_pcs_tx_pld_rst_n, aib_hssi_pld_8g_rxelecidle,
     aib_hssi_pld_pcs_rx_clk_out, aib_hssi_pld_pcs_rx_clk_out_n,
     aib_hssi_pld_pcs_tx_clk_out, aib_hssi_pld_pcs_tx_clk_out_n,
     aib_hssi_pld_pma_clkdiv_rx_user, aib_hssi_pld_pma_clkdiv_tx_user,
     aib_hssi_pld_pma_coreclkin, aib_hssi_pld_pma_coreclkin_n,
     aib_hssi_pld_pma_hclk, aib_hssi_pld_pma_internal_clk1,
     aib_hssi_pld_pma_internal_clk2, aib_hssi_pld_pma_pfdmode_lock,
     aib_hssi_pld_pma_rxpll_lock, aib_hssi_pld_pma_rxpma_rstb,
     aib_hssi_pld_pma_txdetectrx, aib_hssi_pld_pma_txpma_rstb,
     aib_hssi_pld_rx_hssi_fifo_latency_pulse, aib_hssi_pld_sclk,
     aib_hssi_pld_tx_hssi_fifo_latency_pulse, aib_hssi_pma_aib_tx_clk,
     aib_hssi_pma_aib_tx_clk_n, aib_hssi_rx_transfer_clk,
     aib_hssi_rx_transfer_clk_n, aib_hssi_sr_clk_in,
     aib_hssi_sr_clk_n_in, aib_hssi_sr_clk_n_out, aib_hssi_sr_clk_out,
     aib_hssi_ssr_data_in, aib_hssi_ssr_data_out, aib_hssi_ssr_load_in,
     aib_hssi_ssr_load_out, aib_hssi_tx_transfer_clk,
     aib_hssi_tx_transfer_clk_n;

input  iatpg_pipeline_global_en, iatpg_scan_clk_in0,
     iatpg_scan_clk_in1, iatpg_scan_in0, iatpg_scan_in1,
     iatpg_scan_mode_n, iatpg_scan_rst_n, iatpg_scan_shift_n,
     iavm1_sr_clk_out, iavm2out_dataselb, iavm2out_en,
     ihssi_adapter_rx_pld_rst_n, ihssi_adapter_tx_pld_rst_n,
     ihssi_dcc_dft_nrst, ihssi_dcc_dft_nrst_coding, ihssi_dcc_dft_up,
     ihssi_dcc_dll_entest, ihssi_dcc_req, ihssi_fsr_data_out,
     ihssi_fsr_load_out, ihssi_pcs_rx_pld_rst_n,
     ihssi_pcs_tx_pld_rst_n, ihssi_pld_pma_coreclkin,
     ihssi_pld_pma_rxpma_rstb, ihssi_pld_pma_txdetectrx,
     ihssi_pld_pma_txpma_rstb, ihssi_pld_sclk, ihssi_rb_dcc_byp, ihssi_rb_dcc_byp_dprio, // Mod : Added dprio rambit
     ihssi_rb_dcc_dft, ihssi_rb_dcc_dft_sel, ihssi_rb_dcc_dll_dft_sel,
     ihssi_rb_dcc_en, ihssi_rb_dcc_en_dprio, // Mod : added dprio rambit
     ihssi_rb_dcc_manual_mode, ihssi_rb_dcc_manual_mode_dprio , // Mod : Added dprio rambit
     ihssi_rb_dcc_test_clk_pll_en_n, ihssi_rb_dll_test_clk_pll_en_n,
     ihssi_rb_half_code, ihssi_rb_selflock, ihssi_ssr_data_out,
     ihssi_ssr_load_out, ihssi_tx_dll_lock_req, ihssi_tx_transfer_clk,
     ihssirx_out_ddren, ihssitxdll_rb_half_code_str,
     ihssitxdll_rb_selflock_str, ihssitxdll_str_align_dyconfig_ctlsel,
     ihssitxdll_str_align_entest,
     ihssitxdll_str_align_stconfig_core_dn_prgmnvrt,
     ihssitxdll_str_align_stconfig_core_up_prgmnvrt,
     ihssitxdll_str_align_stconfig_core_updnen,
     ihssitxdll_str_align_stconfig_dll_en,
     ihssitxdll_str_align_stconfig_dll_rst_en,
     ihssitxdll_str_align_stconfig_hps_ctrl_en,
     ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt,
     ihssitxdll_str_align_stconfig_spare, ijtag_clkdr_in_chain,
     ijtag_last_bs_in_chain, ijtag_tx_scan_in_chain,
     ired_directin_data_in_chain1, ired_directin_data_in_chain2,
     ired_rshift_en_rx_avmm2, ired_rshift_en_txferclkout,
     ired_rshift_en_txferclkoutn, ired_shift_en_in_chain1,
     ired_shift_en_in_chain2, irstb, jtag_clksel, jtag_intest,
     jtag_mode_in, jtag_rstb, jtag_rstb_en, jtag_tx_scanen_in,
     jtag_weakpdn, jtag_weakpu, vccl_aibnd, vssl_aibnd;

output [2:0]  ored_rxen_out_chain2;
output [39:0]  ohssi_rx_data_out;
output [12:0]  ohssitx_odcc_dll2core;
output [2:0]  ored_rxen_out_chain1;

inout [1:0]  aib_hssi_avmm2_data_out;
inout [19:0]  aib_hssi_tx_data_in;
inout [7:0]  aib_shared_direct_async;
inout [19:0]  aib_hssi_rx_data_out;
inout [7:0]  oshared_direct_async;
inout [1:0]  aib_hssi_avmm1_data_out;

input [2:0]  iavm1out_en;
input [2:0]  ihssi_dcc_dll_core2dll_str;
input [1:0]  indrv_r78;
input [2:0]  ihssitx_in_en3;
input [3:0]  ihssirx_out_en;
input [2:0]  ihssirx_clk_en;
input [2:0]  ired_rshift_en_drx;
input [1:0]  ipdrv_r78;
input [9:0]  ihssitxdll_str_align_dly_pst;
input [36:0]  ired_rx_shift_en;
input [51:0]  ihssi_dcc_dll_csr_reg;
input [2:0]  ihssitx_in_en0;
input [2:0]  iavm1out_dataselb;
input [1:0]  ipdrv_r34;
input [2:0]  ihssitxdll_rb_clkdiv_str;
input [1:0]  indrv_r12;
input [2:0]  ired_irxen_in_chain2;
input [39:0]  ihssi_tx_data_in;
input [3:0]  ired_rshift_en_tx;
input [1:0]  ihssi_avmm2_data_out;
input [1:0]  ired_rshift_en_dirclkp;
input [2:0]  iavm1in_en1;
input [2:0]  ihssitx_in_en2;
input [1:0]  ihssi_avmm1_data_out;
input [2:0]  ihssi_rb_clkdiv;
input [14:0]  ired_avm1_shift_en;
input [1:0]  ipdrv_r12;
input [3:0]  ihssirx_out_dataselb;
input [2:0]  iavm1in_en2;
input [2:0]  ihssirx_async_en;
input [2:0]  iavm1in_en0;
input [4:0]  ihssi_rb_dcc_manual_up;
input [1:0]  ipdrv_r56;
input [1:0]  ired_rshift_en_tx_avmm2;
input [9:0]  ihssitxdll_str_align_dyconfig_ctl_static;
input [2:0]  ired_irxen_in_chain1;
input [2:0]  ihssitx_out_en;
input [1:0]  indrv_r56;
input [2:0]  ihssitxdll_str_align_stconfig_new_dll;
input [2:0]  iavm2in_en0;
input [3:0]  ired_rshift_en_dtx;
input [1:0]  indrv_r34;
input [1:0]  ired_rshift_en_dirclkn;
input [19:0]  ihssitxdll_str_align_stconfig_dftmuxsel;
input [3:0]  ired_rshift_en_rx;
input [2:0]  ihssitx_in_en1;
input [2:0]  ihssitx_out_dataselb;
input [4:0]  ihssi_rb_dcc_manual_dn;
input [19:0]  ired_rshift_en_poutp;

wire jtag_clkdr_mid, ojtag_clkdr_out_chain, ijtag_clkdr_in_chain, clkdr_xr1r, clkdr_xr2r, clkdr_xr2l, clkdr_xr3l, clkdr_xr5r, clkdr_xr6r, clkdr_xr7r, clkdr_xr5l, clkdr_xr6l, clkdr_xr7l, clkdr_xr8r, clkdr_xr4l, clkdr_xr8l, clkdr_xr4r, clkdr_xr3r, clkdr_xr1l, ojtag_last_bs_out_chain, ijtag_last_bs_in_chain, jtag_clksel_out, jtag_clksel, jtag_mode_out, jtag_mode_in, jtag_rstb_en_out, jtag_rstb_en, jtag_rstb_out, jtag_rstb, jtag_weakpdn_out, jtag_weakpdn, jtag_intest_out, jtag_intest, jtag_weakpu_out, jtag_weakpu, jtag_tx_scanen_out, jtag_tx_scanen_in; // Conversion Sript Generated

wire iatpg_pipeline_global_en_inv;
assign iatpg_pipeline_global_en_inv = !iatpg_pipeline_global_en;

// Buses in the design

wire  [2:0]  irxen_inpdir2;

wire  [2:0]  ihssitxdll_str_align_dll_core2dll_str;

wire  [2:0]  rxen_inpclk3;

wire  [2:0]  rxen_inpdir3;

wire  [2:0]  ihssirx_clk_en_buf;

wire  [3:0]  ihssirx_out_dataselb_buf;

wire  [1:0]  ired_rshift_en_tx_avmm2_buf;

wire  [3:0]  avmm1_nc2;

wire  [36:0]  ired_rx_shift_en_buf;

wire  [2:0]  irxen_pinp0;

wire  [2:0]  iavm1in_en2_buf;

wire  [2:0]  iavm1in_en1_buf;

wire  [2:0]  ihssitx_in_en1_buf;

wire  [14:0]  ired_avm1_shift_en_buf;

wire  [2:0]  iavm1in_en0_buf;

wire  [2:0]  ihssitx_out_en_buf;

wire  [2:0]  ihssitx_in_en3_buf;

wire  [2:0]  ihssitx_in_en0_buf;

wire  [9:0]  ihssitxdll_str_align_dly_pst_buf;

wire  [9:0]  ihssitxdll_str_align_dyconfig_ctl_static_buf;

wire  [2:0]  ihssitxdll_str_align_stconfig_new_dll_buf;

wire  [19:0]  ihssitxdll_str_align_stconfig_dftmuxsel_buf;

wire  [51:0]  ihssi_dcc_dll_csr_reg_buf;

wire  [2:0]  ihssi_dcc_dll_core2dll_str_buf;

wire  [12:0]  ohssitx_odcc_dll2core_in;

wire  [1:0]  indrv_r12_buf;

wire  [2:0]  irxen_ptxclkin;

wire  [4:0]  ihssi_rb_dcc_manual_up_buf;

wire  [4:0]  ihssi_rb_dcc_manual_dn_buf;

wire  [2:0]  ihssi_rb_clkdiv_buf;

wire  [2:0]  ihssitx_out_dataselb_buf;

wire  [1:0]  ipdrv_r12_buf;

wire  [1:0]  ipdrv_r34_buf;

wire  [1:0]  ipdrv_r78_buf;

wire  [1:0]  indrv_r78_buf;

wire  [1:0]  indrv_r56_buf;

wire  [2:0]  ihssitx_in_en2_buf;

wire  [1:0]  ipdrv_r56_buf;

wire  [1:0]  indrv_r34_buf;

wire  [2:0]  ihssirx_async_en_buf;

wire  [3:0]  ihssirx_out_en_buf;

wire  [2:0]  irxen_inpshared0;

wire  [2:0]  ihssitxdll_rb_clkdiv_str_buf;

wire  [2:0]  iasyncdata_out;

wire  [12:0]  ohssirx_odll_dll2core;

wire  [4:0]  odat_async_in;

wire  [2:0]  irxen_vinp1;

wire  [2:0]  irxen_inpshared4;

wire  [2:0]  irxen_vinp0;

wire  [2:0]  iavm2in_en0_buf;

wire  [2:0]  irxen_inpclk6;

wire  [39:0]  ihssi_tx_data_in_buf;

wire  [1:0]  ihssi_avmm1_data_out_buf;

wire  [39:0]  ohssi_rx_data_out_in;

wire  [2:0]  iavm1out_en_buf;

wire  [2:0]  iavm1out_dataselb_buf;

wire  [1:0]  ihssi_avmm2_data_out_buf;

wire [39:0] ihssi_tx_data_in_dly;
// specify 
//     specparam CDS_LIBNAME  = "aibnd_lib";
//     specparam CDS_CELLNAME = "aibnd_top";
//     specparam CDS_VIEWNAME = "schematic";
// endspecify

assign ojtag_clkdr_out_chain = jtag_clkdr_mid;
assign jtag_clkdr_mid = ijtag_clkdr_in_chain;
aibnd_avmm1 xavmm1 ( .clkdr_xr4l(clkdr_xr4l), .clkdr_xr4r(clkdr_xr4r),
     .clkdr_xr2r(clkdr_xr2r), .clkdr_xr3l(clkdr_xr3l),
     .clkdr_xr3r(clkdr_xr3r), .clkdr_xr1l(clkdr_xr1l),
     .clkdr_xr1r(clkdr_xr1r), .clkdr_xr2l(clkdr_xr2l),
     .istrbclk_vinp1(istrbclk_vinp1),
     .iclkin_dist_vinp1(iclkin_dist_vinp1),
     .resetb_sync_buf(avmm_sync_resetb),
     .ipdrv_r12(ipdrv_r12_buf[1:0]), .indrv_r12(indrv_r12_buf[1:0]),
     .shift_en_srcclkinn(shift_en_srcclkinn),
     .shift_en_voutp11(shift_en_voutp11),
     .shift_en_voutp10(shift_en_voutp10),
     .shift_en_ssrldout(shift_en_ssrldout),
     .shift_en_voutp00(shift_en_voutp00),
     .shift_en_ptxclkinn(shift_en_ptxclkinn),
     .shift_en_ptxclkin(shift_en_ptxclkin),
     .shift_en_ssrdout(shift_en_ssrdout),
     .shift_en_vinp0(shift_en_vinp0),
     .shift_en_oshared2(shift_en_oshared2),
     .shift_en_inpshared4(shift_en_inpshared4),
     .shift_en_voutp01(shift_en_voutp01),
     .itxen_oshared2(itxen_oshared2),
     .irxen_inpshared4(irxen_inpshared4[2:0]),
     .jtag_rx_scan_oshared2(jtag_rx_scan_oshared2),
     .jtag_rx_scan_inpshared4(jtag_rx_scan_inpshared4),
     .jtag_clkdr_oshared2(jtag_clkdr_oshared2),
     .jtag_clkdr_inpshared4(jtag_clkdr_inpshared4),
     .idataselb_oshared2(idataselb_oshared2),
     .odat_async_fsrdin(odat_async_fsrdin),
     .iasyncdata_oshared2(async_dat_oshared2),
     .jtag_clksel(jtag_clksel_out), .jtag_intest(jtag_intest_out),
     .jtag_rstb_en(jtag_rstb_en_out),
     .odat1_outpclk1_1(odat1_outpclk1_1),
     .odat0_outpclk1_1(odat0_outpclk1_1),
     .jtag_rx_scan_ptxclkinn(jtag_rx_scan_ptxclkinn),
     .jtag_rx_scan_ptxclkin(jtag_rx_scan_ptxclkin),
     .jtag_clkdr_ptxclkin(jtag_clkdr_ptxclkin),
     .jtag_clkdr_ptxclkinn(jtag_clkdr_ptxclkinn),
     .oclk_srclkout(oclk_srclkout), .oclkb_srclkout(oclkb_srclkout),
     .jtag_rx_scan_voutp01(jtag_rx_scan_voutp01),
     .jtag_clkdr_voutp00(jtag_clkdr_voutp00),
     .jtag_clkdr_voutp01(jtag_clkdr_voutp01),
     .jtag_rx_scan_vinp0(jtag_rx_scan_vinp0),
     .jtag_rx_scan_voutp00(jtag_rx_scan_voutp00),
     .jtag_clkdr_vinp0(jtag_clkdr_vinp0),
     .itxen_voutp01(itxen_voutp01), .itxen_voutp00(itxen_voutp00),
     .istrbclk_vinp0(istrbclk_vinp0), .irxen_vinp0(irxen_vinp0[2:0]),
     .ilaunch_clk_voutp01(ilaunch_clk_voutp01),
     .ilaunch_clk_voutp00(ilaunch_clk_voutp00),
     .idataselb_voutp01(idataselb_voutp01),
     .idataselb_voutp00(idataselb_voutp00),
     .idat1_voutp01(idat1_voutp01), .idat1_voutp00(idat1_voutp00),
     .idat0_voutp01(idat0_voutp01), .idat0_voutp00(idat0_voutp00),
     .iclkin_dist_vinp0(iclkin_dist_vinp0),
     .pcs_clkb(ohssi_sr_clk_n_in_in), .vccl_aibnd(vccl_aibnd),
     .vssl_aibnd(vssl_aibnd), .oclkn_vinp1(oclkn_vinp1),
     .avmm2_tx_launch_clk_l1(avmm2_tx_launch_clk_l1),
     .avmm2_tx_launch_clk_l0(avmm2_tx_launch_clk_l0),
     .avmm1_rstb(irstb_buf), .avmm_tx_clk_in(iavm1_sr_clk_out_buf),
     .ipdrv_r34(ipdrv_r34_buf[1:0]), .indrv_r34(indrv_r34_buf[1:0]),
     .idat1_clkn(vssl_aibnd), .idat0_clkn(vccl_aibnd),
     .avmm2_rx_strbclk(rx_strbclk), .avmm1_idat1({vssl_aibnd,
     vssl_aibnd}), .avmm1_idat0(ihssi_avmm1_data_out_buf[1:0]),
     .iopad_avmm1_in(aib_hssi_avmm1_data_in),
     .iopad_avmm1_out(aib_hssi_avmm1_data_out[1:0]),
     .iopad_clkn(aib_hssi_sr_clk_n_out),
     .iopad_clkp(aib_hssi_sr_clk_out),
     .iopad_inclkn(aib_hssi_sr_clk_n_in),
     .iopad_inclkp(aib_hssi_sr_clk_in),
     .iopad_sdr_in({aib_hssi_fsr_data_in, aib_hssi_ssr_data_in,
     aib_hssi_fsr_load_in, aib_hssi_ssr_load_in}),
     .iopad_sdr_out({aib_hssi_fsr_data_out, aib_hssi_ssr_data_out,
     aib_hssi_fsr_load_out, aib_hssi_ssr_load_out}),
     .avmm1_odat0(ohssi_avmm1_data_in_in),
     .avmm1_odat1(avmm1_odat1_nc), .avmm2_rx_distclk(rx_distclk),
     .idata0_ssrdout(idata0_ssrdout), .idata0_ssrldout(data0_ssrldout),
     .idata1_ssrdout(idata1_ssrdout), .idata1_ssrldout(data1_ssrldout),
     .idataselb_ssrdout(dataselb_ssrdout),
     .idataselb_ssrldout(dataselb_ssrldout),
     .ilaunch_clk_ssrdout(launch_clk_ssrdout),
     .ilaunch_clk_ssrldout(launch_clk_ssrldout),
     .itxen_ssrdout(itxen_ssrdout), .itxen_ssrldout(itxen_ssrldout),
     .jtag_clkdr_in_srcclkinn(jtag_clkdr_srcclkinn),
     .jtag_clkdr_in_ssrdout(jtag_clkdr_in_ssrdout),
     .jtag_clkdr_in_ssrldout(jtag_clkdr_in_ssrldout),
     .jtag_rx_scan_in_srcclkinn(jtag_rx_scan_srcclkinn),
     .jtag_rx_scan_in_ssrdout(jtag_rx_scan_in_ssrdout),
     .jtag_rx_scan_in_ssrldout(jtag_rx_scan_in_ssrldout),
     .osdrin_odat0({ohssi_fsr_data_in_in, ohssi_ssr_data_in_in,
     ohssi_fsr_load_in_in, ohssi_ssr_load_in_in}),
     .osdrin_odat1(avmm1_nc2[3:0]), .pcs_clk(ohssi_sr_clk_in_in),
     .idat0_clkp(vssl_aibnd), .idat0_voutp10(idat0_voutp10),
     .idat0_voutp11(idat0_voutp11), .idat1_clkp(vccl_aibnd),
     .idat1_voutp10(idat1_voutp10), .idat1_voutp11(idat1_voutp11),
     .idataselb(iavm1out_dataselb_buf[2:0]),
     .idataselb_voutp10(idataselb_voutp10),
     .idataselb_voutp11(idataselb_voutp11),
     .irxen_ptxclkin(irxen_ptxclkin[2:0]),
     .irxen_r0(iavm1in_en0_buf[2:0]), .irxen_r1(iavm1in_en1_buf[2:0]),
     .irxen_r2(iavm1in_en2_buf[2:0]),
     .isdrin_idat0({ihssi_fsr_data_out_buf, ihssi_ssr_data_out_buf,
     ihssi_fsr_load_out_buf, ihssi_ssr_load_out_buf}),
     .isdrin_idat1({vssl_aibnd, vssl_aibnd, vssl_aibnd, vssl_aibnd}),
     .itxen(iavm1out_en_buf[2:0]), .itxen_voutp10(itxen_voutp10),
     .itxen_voutp11(itxen_voutp11),
     .jtag_clkdr_in_dirin5(jtag_clkdr_in_dirin5),
     .jtag_clkdr_in_voutp10(jtag_clkdr_in_voutp10),
     .jtag_mode_in(jtag_mode_out), .jtag_rstb(jtag_rstb_out),
     .jtag_rx_scan_in_dirin5(jtag_rx_scan_in_dirin5),
     .jtag_rx_scan_in_voutp10(jtag_rx_scan_in_voutp10),
     .jtag_tx_scanen_in(jtag_tx_scanen_out),
     .jtag_weakpdn(jtag_weakpdn_out), .jtag_weakpu(jtag_weakpu_out),
     .rx_shift_en(ired_avm1_shift_en_buf[14:0]));
aibnd_avmm2 xavmm2 ( .clkdr_xr4l(clkdr_xr4l), .clkdr_xr3l(clkdr_xr3l),
     .clkdr_xr2l(clkdr_xr2l), .avmm_sync_rstb(avmm_sync_resetb),
     .shift_en_voutp10(shift_en_voutp10),
     .shift_en_voutp11(shift_en_voutp11),
     .shift_en_vinp1(shift_en_vinp1),
     .shift_en_srcclkinn(shift_en_srcclkinn),
     .shift_en_outpdir1_1(shift_en_outpdir1_1),
     .shift_en_directout2(shift_en_directout2),
     .jtag_clksel(jtag_clksel_out), .jtag_rstb_en(jtag_rstb_en_out),
     .jtag_intest(jtag_intest_out),
     .odat1_outpdir0_1(odat1_outpdir0_1),
     .odat0_outpdir0_1(odat0_outpdir0_1),
     .jtag_rx_scan_srcclkinn(jtag_rx_scan_srcclkinn),
     .jtag_clkdr_srcclkinn(jtag_clkdr_srcclkinn),
     .jtag_rx_scan_vinp1(jtag_rx_scan_vinp1),
     .jtag_clkdr_vinp1(jtag_clkdr_vinp1), .vssl_aibnd(vssl_aibnd),
     .vccl_aibnd(vccl_aibnd),
     .tx_launch_clk_l0(avmm2_tx_launch_clk_l0),
     .tx_launch_clk_l1(avmm2_tx_launch_clk_l1),
     .ipdrv_r34(ipdrv_r34_buf[1:0]), .indrv_r34(indrv_r34_buf[1:0]),
     .jtag_clkdr_in_dirin5(jtag_clkdr_in_dirin5),
     .idataselb_in0_directout2(idataselb_in0_directout2),
     .jtag_rx_scan_out_dirout2(jtag_rx_scan_out_dirout2),
     .jtag_rx_scan_out_outpdir1_1(jtag_rx_scan_out_outpdir1_1),
     .itxen_in0_directout2(itxen_in0_directout2),
     .jtag_rx_scan_in_dirin5(jtag_rx_scan_in_dirin5),
     .jtag_clkdr_out_outpdir1_1(jtag_clkdr_out_outpdir1_1),
     .jtag_clkdr_out_dirout2(jtag_clkdr_out_dirout2),
     .jtag_rx_scan_in_voutp10(jtag_rx_scan_in_voutp10),
     .async_dat_outpdir1_1(async_dat_outpdir1_1),
     .jtag_clkdr_in_voutp10(jtag_clkdr_in_voutp10),
     .irxen_vinp1(irxen_vinp1[2:0]), .idat0_voutp10(idat0_voutp10),
     .idat0_voutp11(idat0_voutp11), .idat1_voutp10(idat1_voutp10),
     .idat1_voutp11(idat1_voutp11),
     .idataselb_voutp10(idataselb_voutp10),
     .idirectout_data_outpdir2_1(idirectout_data_outpdir2_1),
     .idataselb_outpdir1_1(dataselb_outpdir1_1),
     .itxen_outpdir1_1(itxen_outpdir1_1),
     .itxen_voutp10(itxen_voutp10), .itxen_voutp11(itxen_voutp11),
     .idataselb_voutp11(idataselb_voutp11),
     .jtag_mode_in(jtag_mode_out), .jtag_rstb(jtag_rstb_out),
     .rx_distclk_vinp1(rx_distclk),
     .iopad_avmm2_in(aib_hssi_avmm2_data_in),
     .avmm2_odat0(ohssi_avmm2_data_in_in),
     .iopad_avmm2_out(aib_hssi_avmm2_data_out[1:0]),
     .avmm2_odat1(avmm2_odat1_nc),
     .avmm2_idat0(ihssi_avmm2_data_out_buf[1:0]),
     .rshift_en_rx(ired_rshift_en_rx_avmm2_buf),
     .avmm2_rstb(irstb_buf), .avmm2_idat1({vssl_aibnd, vssl_aibnd}),
     .jtag_weakpu(jtag_weakpu_out), .jtag_weakpdn(jtag_weakpdn_out),
     .rshift_en_tx(ired_rshift_en_tx_avmm2_buf[1:0]),
     .jtag_tx_scanen_in(jtag_tx_scanen_out),
     .idataselb(iavm2out_dataselb_buf),
     .irxen_r0(iavm2in_en0_buf[2:0]), .itxen(iavm2out_en_buf),
     .rx_strbclk_vinp1(rx_strbclk), .oclkn_vinp1(oclkn_vinp1));
aibnd_rxdatapath_rx xrxdatapath_rx (
     .idatdll_scan_shift_n(iatpg_scan_shift_n_buf),
     .clkdr_xr7r(clkdr_xr7r), .clkdr_xr8l(clkdr_xr8l),
     .clkdr_xr8r(clkdr_xr8r), .oclkb_inpdir2(oclkb_inpdir2),
     .oclk_inpdir2(oclk_inpdir2), .clkdr_xr3l(clkdr_xr3l),
     .clkdr_xr3r(clkdr_xr3r), .clkdr_xr4l(clkdr_xr4l),
     .clkdr_xr1r(clkdr_xr1r), .clkdr_xr2l(clkdr_xr2l),
     .clkdr_xr2r(clkdr_xr2r), .clkdr_xr6l(clkdr_xr6l),
     .clkdr_xr6r(clkdr_xr6r), .clkdr_xr7l(clkdr_xr7l),
     .clkdr_xr1l(clkdr_xr1l), .clkdr_xr4r(clkdr_xr4r),
     .clkdr_xr5l(clkdr_xr5l), .clkdr_xr5r(clkdr_xr5r),
     .avmm_sync_rstb(avmm_sync_resetb),
     .shift_en_inpdir2(shift_en_inpdir2),
     .oclkn_outpdir4_1(oclkn_outpdir4_1),
     .odat_async_inpclk4(odat_async_inpclk4),
     .odat1_inpdir0(odat1_inpdir0), .odat0_inpdir0(odat0_inpdir0),
     .shift_en_inpshared0(shift_en_inpshared0),
     .idatdll_rb_clkdiv_str(ihssitxdll_rb_clkdiv_str_buf[2:0]),
     .jtag_clkdr_inpclk0n(jtag_clkdr_inpclk0n),
     .jtag_rx_scan_inpclk0n(jtag_rx_scan_inpclk0n),
     .oclkn_inpclk3(oclkn_inpclk3),
     .odat_async_inpclk1(odat_async_inpclk1),
     .oclkn_inpdir4(oclkn_inpdir4), .jtag_scan_pinp0(jtag_scan_pinp0),
     .jtag_clkdr_pinp0(jtag_clkdr_pinp0),
     .istrbclk_pinp0(istrbclk_pinp0), .irxen_pinp0(irxen_pinp0[2:0]),
     .irxen_inpshared0(irxen_inpshared0[2:0]),
     .idlkin_dist_pinp0(iclkin_dist_pinp0),
     .shift_en_inpdir3(shift_en_inpdir3),
     .shift_en_inpclk0n(shift_en_inpclk0n),
     .shift_en_poutp18(shift_en_poutp18),
     .jtag_clkdr_inpclk1n(jtag_clkdr_inpclk1n),
     .jtag_rx_scan_inpclk1n(jtag_rx_scan_inpclk1n),
     .odat_async_poutp0(odat_async_pout0),
     .shift_en_pinp0(shift_en_pinp0),
     .shift_en_outpdir0_1(shift_en_outpdir0_1),
     .shift_en_outpclk1_1(shift_en_outpclk1_1),
     .shift_en_out_chain1(ored_shift_en_out_chain1),
     .shift_en_inpclk1n(shift_en_inpclk1n),
     .shift_en_inpclk6(shift_en_inpclk6),
     .shift_en_dout_clkp(shift_en_dout_clkp),
     .shift_en_directout2(shift_en_directout2),
     .jtag_scan_out_chain1(ojtag_rx_scan_out_chain),
     .jtag_rx_scan_inpclk6(jtag_rx_scan_inpclk6),
     .jtag_clkdr_inpclk6(jtag_clkdr_inpclk6),
     .shift_en_outpdir6(shift_en_outpdir6),
     .irxen_inpclk6(irxen_inpclk6[2:0]),
     .jtag_rx_scan_inpshared0(jtag_rx_scan_inpshared0),
     .jtag_clkdr_inpshared0(jtag_clkdr_inpshared0),
     .jtag_scan_in_chain1(jtag_rx_scan_int),
     .shift_en_in_chain1(ired_shift_en_in_chain1),
     .shift_en_inpclk3(shift_en_inpclk3),
     .shift_en_vinp1(shift_en_vinp1), .shift_en_vinp0(shift_en_vinp0),
     .odat_async_oshared1(odat_async_oshared1),
     .dft_rx_clk(dft_rx_clk), .jtag_clksel(jtag_clksel_out),
     .jtag_intest(jtag_intest_out), .jtag_rstb_en(jtag_rstb_en_out),
     .jtag_rx_scan_vinp1(jtag_rx_scan_vinp1),
     .jtag_clkdr_vinp0(jtag_clkdr_vinp0),
     .jtag_clkdr_vinp1(jtag_clkdr_vinp1),
     .jtag_rx_scan_vinp0(jtag_rx_scan_vinp0),
     .irxen_vinp1(irxen_vinp1[2:0]), .istrbclk_vinp0(istrbclk_vinp0),
     .istrbclk_vinp1(istrbclk_vinp1), .irxen_vinp0(irxen_vinp0[2:0]),
     .iclkin_dist_vinp1(iclkin_dist_vinp1),
     .iclkin_dist_vinp0(iclkin_dist_vinp0),
     .odat1_outpdir0_1(odat1_outpdir0_1),
     .odat1_outpclk1_1(odat1_outpclk1_1),
     .odat0_outpdir0_1(odat0_outpdir0_1),
     .odat0_outpclk1_1(odat0_outpclk1_1),
     .jtag_rx_scan_outpdir0_1(jtag_rx_scan_outpdir0_1),
     .jtag_rx_scan_outpclk1_1(jtag_rx_scan_outpclk1_1),
     .jtag_clkdr_outpdir0_1(jtag_clkdr_outpdir0_1),
     .jtag_clkdr_outpclk1_1(jtag_clkdr_outpclk1_1),
     .itxen_outpdir0_1(itxen_outpdir0_1),
     .itxen_outpclk1_1(itxen_outpclk1_1),
     .idataselb_outpclk1_1(idataselb_outpclk1_1),
     .idataselb_outpdir0_1(idataselb_outpdir0_1),
     .async_dat_outpdir0_1(async_dat_outpdir0_1),
     .async_dat_outpclk1_1(async_dat_outpclk1_1),
     .idatdll_test_clk_pll_en_n(ihssi_rb_dll_test_clk_pll_en_n_buf),
     .idatdll_scan_rst_n(iatpg_scan_rst_n_buf),
     .txpma_dig_rstb(irstb_buf), .vssl_aibnd(vssl_aibnd),
     .vccl_aibnd(vccl_aibnd), .rx_shift_en(ired_rx_shift_en_buf[36:0]),
     .jtag_clkdr_in_chain1(jtag_clkdr_int),
     .odirectin_data_in_chain1(ired_directin_data_in_chain1),
     .odirectin_data_out0_chain1(ored_directin_data_out0_chain1),
     .last_bs_out_chain1(nc_last_bs_out_chain1),
     .jtag_clkdr_out_chain1(nc_jtag_clkdr_out_chain1),
     .irxen_in_chain1(ired_irxen_in_chain1[2:0]),
     .irxen_chain1(ored_rxen_out_chain1[2:0]),
     .iasync_dat_outpdir6(idat0_outpdir6),
     .ipdrv_r78(ipdrv_r78_buf[1:0]), .indrv_r56(indrv_r56_buf[1:0]),
     .indrv_r78(indrv_r78_buf[1:0]), .ipdrv_r12(ipdrv_r12_buf[1:0]),
     .ipdrv_r34(ipdrv_r34_buf[1:0]), .ipdrv_r56(ipdrv_r56_buf[1:0]),
     .indrv_r34(indrv_r34_buf[1:0]), .indrv_r12(indrv_r12_buf[1:0]),
     .idatdll_entest_str(ihssitxdll_str_align_entest_buf),
     .idatdll_scan_mode_n(iatpg_scan_mode_n_buf),
     .idatdll_pipeline_global_en(iatpg_pipeline_global_en_buf),
     .idatdll_rb_half_code_str(ihssitxdll_rb_half_code_str_buf),
     .idatdll_rb_selflock_str(ihssitxdll_rb_selflock_str_buf),
     .idatdll_scan_clk_in(iatpg_scan_clk_in0_buf),
     .idatdll_scan_in(iatpg_scan_in0_buf),
     .iopad_directinclkn(aib_hssi_pld_pcs_rx_clk_out_n),
     .iopad_directinclkp(aib_hssi_pld_pcs_rx_clk_out),
     .iopad_directoutclkn(aib_hssi_pld_pma_coreclkin_n),
     .iopad_directoutclkp(aib_hssi_pld_pma_coreclkin),
     .iopad_inclkn(aib_hssi_rx_transfer_clk_n),
     .iopad_inclkp(aib_hssi_rx_transfer_clk),
     .iopad_indat(aib_hssi_rx_data_out[19:0]),
     .idat0_in0_dout_clkp(idat0_in0_dout_clkp),
     .idat1_in0_dout_clkp(idat1_in0_dout_clkp),
     .idataselb_in0_directout2(idataselb_in0_directout2),
     .idataselb_in0_dout_clkp(idataselb_in0_dout_clkp),
     .idirectout_data_outpdir2_1(idirectout_data_outpdir2_1),
     .ilaunch_clk_in0_dout_clkp(ilaunch_clk_in0_dout_clkp),
     .iopad_directout({aib_hssi_pcs_rx_pld_rst_n,
     aib_hssi_adapter_rx_pld_rst_n, aib_hssi_pld_pma_rxpma_rstb,
     aib_hssi_pld_sclk}), .irxen_inpdir2(irxen_inpdir2[2:0]),
     .itxen_in0_directout2(itxen_in0_directout2),
     .itxen_in0_dout_clkp(itxen_in0_dout_clkp),
     .jtag_clkdr_out_diin_clkp(jtag_clkdr_out_diin_clkp),
     .jtag_clkdr_out_directin2(jtag_clkdr_out_directin2),
     .jtag_clkdr_out_dirout2(jtag_clkdr_out_dirout2),
     .jtag_rx_scan_out_diin_clkp(jtag_rx_scan_out_diin_clkp),
     .jtag_rx_scan_out_directin2(jtag_rx_scan_out_directin2),
     .jtag_rx_scan_out_dirout2(jtag_rx_scan_out_dirout2),
     .odirectin_data({ohssi_pld_pma_clkdiv_rx_user_in,
     ohssi_pld_pma_internal_clk1_in, ohssi_pld_pma_internal_clk2_in,
     ohssi_pld_pma_hclk_in, ohssi_pld_8g_rxelecidle_in,
     ohssi_pld_pma_rxpll_lock_in,
     ohssi_pld_rx_hssi_fifo_latency_pulse_in}),
     .odll_dll2core_str(ohssirx_odll_dll2core[12:0]),
     .odll_lock(ohssi_tx_dll_lock_in),
     .out_rx_fast_clk(ohssi_pld_pcs_rx_clk_out_in),
     .pcs_clk(ohssi_rx_transfer_clk_in),
     .pcs_data_out0({ohssi_rx_data_out_in[38],
     ohssi_rx_data_out_in[36], ohssi_rx_data_out_in[34],
     ohssi_rx_data_out_in[32], ohssi_rx_data_out_in[30],
     ohssi_rx_data_out_in[28], ohssi_rx_data_out_in[26],
     ohssi_rx_data_out_in[24], ohssi_rx_data_out_in[22],
     ohssi_rx_data_out_in[20], ohssi_rx_data_out_in[18],
     ohssi_rx_data_out_in[16], ohssi_rx_data_out_in[14],
     ohssi_rx_data_out_in[12], ohssi_rx_data_out_in[10],
     ohssi_rx_data_out_in[8], ohssi_rx_data_out_in[6],
     ohssi_rx_data_out_in[4], ohssi_rx_data_out_in[2],
     ohssi_rx_data_out_in[0]}),
     .pcs_data_out1({ohssi_rx_data_out_in[39],
     ohssi_rx_data_out_in[37], ohssi_rx_data_out_in[35],
     ohssi_rx_data_out_in[33], ohssi_rx_data_out_in[31],
     ohssi_rx_data_out_in[29], ohssi_rx_data_out_in[27],
     ohssi_rx_data_out_in[25], ohssi_rx_data_out_in[23],
     ohssi_rx_data_out_in[21], ohssi_rx_data_out_in[19],
     ohssi_rx_data_out_in[17], ohssi_rx_data_out_in[15],
     ohssi_rx_data_out_in[13], ohssi_rx_data_out_in[11],
     ohssi_rx_data_out_in[9], ohssi_rx_data_out_in[7],
     ohssi_rx_data_out_in[5], ohssi_rx_data_out_in[3],
     ohssi_rx_data_out_in[1]}), .scan_out(oatpg_scan_out0_in),
     .idat0_directoutclkn(vccl_aibnd),
     .idat0_directoutclkp(vssl_aibnd), .idat0_poutp18(idat0_poutp18),
     .idat1_directoutclkn(vssl_aibnd),
     .idat1_directoutclkp(vccl_aibnd), .idat1_poutp18(idat1_poutp18),
     .idataselb(ihssitx_out_dataselb_buf[2:0]),
     .idataselb_outpdir6(dataselb_outpdir6),
     .idataselb_poutp18(dataselb_poutp18),
     .idatdll_str_align_dyconfig_ctl_static(ihssitxdll_str_align_dyconfig_ctl_static_buf[9:0]),
     .idatdll_str_align_dyconfig_ctlsel(ihssitxdll_str_align_dyconfig_ctlsel_buf),
     .idatdll_str_align_stconfig_core_dn_prgmnvrt(ihssitxdll_str_align_stconfig_core_dn_prgmnvrt_buf),
     .idatdll_str_align_stconfig_core_up_prgmnvrt(ihssitxdll_str_align_stconfig_core_up_prgmnvrt_buf),
     .idatdll_str_align_stconfig_core_updnen(ihssitxdll_str_align_stconfig_core_updnen_buf),
     .idatdll_str_align_stconfig_dftmuxsel(ihssitxdll_str_align_stconfig_dftmuxsel_buf[19:0]),
     .idatdll_str_align_stconfig_dll_en(ihssitxdll_str_align_stconfig_dll_en_buf),
     .idatdll_str_align_stconfig_dll_rst_en(ihssitxdll_str_align_stconfig_dll_rst_en_buf),
     .idatdll_str_align_stconfig_hps_ctrl_en(ihssitxdll_str_align_stconfig_hps_ctrl_en_buf),
     .idatdll_str_align_stconfig_ndllrst_prgmnvrt(ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt_buf),
     .idatdll_str_align_stconfig_new_dll(ihssitxdll_str_align_stconfig_new_dll_buf[2:0]),
     .idatdll_str_align_stconfig_spare({ihssitxdll_str_align_stconfig_spare_buf,
     ihssitxdll_str_align_dly_pst_buf[9:0]}),
     .iddren_poutp18(ddren_poutp18),
     .idirectout_data({ihssi_pcs_rx_pld_rst_n_buf,
     ihssi_adapter_rx_pld_rst_n_buf, ihssi_pld_pma_rxpma_rstb_buf,
     ihssi_pld_sclk_buf}),
     .idll_core2dll_str(ihssitxdll_str_align_dll_core2dll_str[2:0]),
     .idll_lock_req(ihssi_tx_dll_lock_req_buf),
     .ilaunch_clk_poutp18(launch_clk_poutp18), .input_rstb(irstb_buf),
     .iopad_direct_input({aib_hssi_pld_pma_clkdiv_rx_user,
     aib_hssi_pld_pma_internal_clk1, aib_hssi_pld_pma_internal_clk2,
     aib_hssi_pld_pma_hclk, aib_hssi_pld_8g_rxelecidle,
     aib_hssi_pld_pma_rxpll_lock,
     aib_hssi_pld_rx_hssi_fifo_latency_pulse}),
     .irxen_inpclk3(rxen_inpclk3[2:0]),
     .irxen_inpdir3(rxen_inpdir3[2:0]),
     .irxen_r0(ihssitx_in_en0_buf[2:0]),
     .irxen_r1(ihssitx_in_en1_buf[2:0]),
     .irxen_r2(ihssitx_in_en2_buf[2:0]),
     .irxen_r3(ihssitx_in_en3_buf[2:0]),
     .itxen(ihssitx_out_en_buf[2:0]), .itxen_outpdir6(txen_outpdir6),
     .itxen_poutp18(txen_poutp18),
     .jtag_clkdr_out_inpclk3(jtag_clkdr_out_inpclk3),
     .jtag_clkdr_out_inpdir3(jtag_clkdr_out_inpdir3),
     .jtag_clkdr_out_outpdir6(jtag_clkdr_out_outpdir6),
     .jtag_clkdr_out_poutp18(jtag_clkdr_out_poutp18),
     .jtag_mode_in(jtag_mode_out), .jtag_rstb(jtag_rstb_out),
     .jtag_rx_scan_out_inpclk3(jtag_rx_scan_out_inpclk3),
     .jtag_rx_scan_out_inpdir3(jtag_rx_scan_out_inpdir3),
     .jtag_rx_scan_out_outpdir6(jtag_rx_scan_out_outpdir6),
     .jtag_rx_scan_out_poutp18(jtag_rx_scan_out_poutp18),
     .jtag_tx_scanen_in(jtag_tx_scanen_out),
     .jtag_weakpdn(jtag_weakpdn_out), .jtag_weakpu(jtag_weakpu_out),
     .oclk_inpclk3(oclk_inpclk3), .oclkb_inpclk3(oclkb_inpclk3),
     .poutp_dig_rstb(irstb_buf),
     .txdirclk_fast_clkn(ihssi_pld_pma_coreclkin_buf),
     .txdirclk_fast_clkp(ihssi_pld_pma_coreclkin_buf));
aibnd_txdatapath_tx xtxdatapath_tx (
     .iddren(ihssirx_out_ddren_buf), .oclk_inpdir2(oclk_inpdir2),
     .oclkb_inpdir2(oclkb_inpdir2),
     .odirectin_data_out0_chain2(ored_directin_data_out0_chain2),
     .clkdr_xr7r(clkdr_xr7r), .clkdr_xr8l(clkdr_xr8l),
     .clkdr_xr8r(clkdr_xr8r), .clkdr_xr6l(clkdr_xr6l),
     .clkdr_xr6r(clkdr_xr6r), .clkdr_xr7l(clkdr_xr7l),
     .clkdr_xr4r(clkdr_xr4r), .clkdr_xr5l(clkdr_xr5l),
     .clkdr_xr5r(clkdr_xr5r), .clkdr_xr3l(clkdr_xr3l),
     .clkdr_xr3r(clkdr_xr3r), .clkdr_xr4l(clkdr_xr4l),
     .clkdr_xr2r(clkdr_xr2r), .clkdr_xr2l(clkdr_xr2l),
     .clkdr_xr1r(clkdr_xr1r), .clkdr_xr1l(clkdr_xr1l),
     .jtag_clkdr_in_chain2(vssl_aibnd),
     .avmm_sync_rstb(avmm_sync_resetb),
     .shift_en_inpclk3(shift_en_inpclk3),
     .shift_en_out_chain2(ored_shift_en_out_chain2),
     .oclkn_inpdir4(oclkn_inpdir4),
     .shift_en_ptxclkinn(shift_en_ptxclkinn),
     .odat_async_pout0(odat_async_pout0),
     .odat0_inpdir0(odat0_inpdir0), .odat1_inpdir0(odat1_inpdir0),
     .odat_async_inpclk1(odat_async_inpclk1),
     .odat_async_inpclk4(odat_async_inpclk4),
     .oclkb_inpclk3(oclkb_inpclk3), .oclk_inpclk3(oclk_inpclk3),
     .irxen_inpclk6(irxen_inpclk6[2:0]),
     .jtag_clkdr_inpclk6(jtag_clkdr_inpclk6),
     .jtag_rx_scan_inpclk6(jtag_rx_scan_inpclk6),
     .shift_en_voutp01(shift_en_voutp01),
     .shift_en_outpdir0_1(shift_en_outpdir0_1),
     .shift_en_voutp00(shift_en_voutp00),
     .rb_clkdiv(ihssi_rb_clkdiv_buf[2:0]),
     .scan_shift_n(iatpg_scan_shift_n_buf),
     .shift_en_in_chain2(ired_shift_en_in_chain2),
     .shift_en_inpclk6(shift_en_inpclk6),
     .odat_async_chain2(ired_directin_data_in_chain2),
     .jtag_scan_pinp0(jtag_scan_pinp0),
     .jtag_scan_in_chain2(ijtag_tx_scan_in_chain),
     .shift_en_pinp0(shift_en_pinp0),
     .shift_en_inpclk0n(shift_en_inpclk0n),
     .shift_en_ssrldout(shift_en_ssrldout),
     .oclkn_outpdir4_1(oclkn_outpdir4_1),
     .shift_en_ssrdout(shift_en_ssrdout),
     .shift_en_outpclk1_1(shift_en_outpclk1_1),
     .jtag_clkdr_pinp0(jtag_clkdr_pinp0),
     .shift_en_inpclk1n(shift_en_inpclk1n),
     .shift_en_outpclk0(shift_en_dout_clkp),
     .istrbclk_pinp0(istrbclk_pinp0), .irxen_pinp0(irxen_pinp0[2:0]),
     .jtag_rx_scan_inpclk1n(jtag_rx_scan_inpclk1n),
     .irxen_in_chain2(ired_irxen_in_chain2[2:0]),
     .jtag_clkdr_inpclk1n(jtag_clkdr_inpclk1n),
     .shift_en_outpdir6(shift_en_outpdir6),
     .shift_en_ptxclkin(shift_en_ptxclkin),
     .shift_en_outpdir1_1(shift_en_outpdir1_1),
     .iclkin_dist_pinp0(iclkin_dist_pinp0),
     .shift_en_poutp18(shift_en_poutp18),
     .shift_en_inpdir3(shift_en_inpdir3),
     .shift_en_oshared2(shift_en_oshared2),
     .shift_en_inpshared4(shift_en_inpshared4),
     .jtag_clkdr_inpclk0n(jtag_clkdr_inpclk0n),
     .shift_en_inpshared0(shift_en_inpshared0),
     .jtag_scan_out_chain2(jtag_rx_scan_int),
     .oclkn_inpclk3(oclkn_inpclk3),
     .jtag_rx_scan_inpclk0n(jtag_rx_scan_inpclk0n),
     .shift_en_inpdir2(shift_en_inpdir2),
     .jtag_rx_scan_inpshared0(jtag_rx_scan_inpshared0),
     .irxen_inpshared0(irxen_inpshared0[2:0]),
     .jtag_clkdr_inpshared0(jtag_clkdr_inpshared0),
     .jtag_clkdr_out_chain2(jtag_clkdr_int),
     .irxen_chain2(ored_rxen_out_chain2[2:0]),
     .odat_async_oshared1(odat_async_oshared1),
     .odat_async_fsrdin(odat_async_fsrdin),
     .jtag_clkdr_oshared2(jtag_clkdr_oshared2),
     .iopad_async_out(aib_shared_direct_async[2:0]),
     .iopad_async_in(aib_shared_direct_async[7:3]),
     .iasyncdata(iasyncdata_out[2:0]), .odat_async(odat_async_in[4:0]),
     .jtag_rx_scan_oshared2(jtag_rx_scan_oshared2),
     .jtag_rx_scan_inpshared4(jtag_rx_scan_inpshared4),
     .irxen_inpshared4(irxen_inpshared4[2:0]),
     .iasyncdata_oshared2(async_dat_oshared2),
     .idataselb_oshared2(idataselb_oshared2),
     .itxen_oshared2(itxen_oshared2),
     .jtag_clkdr_inpshared4(jtag_clkdr_inpshared4),
     .dll_csr_reg6(ihssitxdll_str_align_dly_pst_buf[0]),
     .dft_rx_clk(dft_rx_clk), .jtag_rstb_en(jtag_rstb_en_out),
     .jtag_clksel(jtag_clksel_out), .jtag_intest(jtag_intest_out),
     .jtag_rx_scan_outpdir0_1(jtag_rx_scan_outpdir0_1),
     .jtag_rx_scan_outpclk1_1(jtag_rx_scan_outpclk1_1),
     .jtag_clkdr_outpdir0_1(jtag_clkdr_outpdir0_1),
     .jtag_clkdr_outpclk1_1(jtag_clkdr_outpclk1_1),
     .itxen_outpdir0_1(itxen_outpdir0_1),
     .itxen_outpclk1_1(itxen_outpclk1_1),
     .idataselb_outpclk1_1(idataselb_outpclk1_1),
     .idataselb_outpdir0_1(idataselb_outpdir0_1),
     .async_dat_outpclk1_1(async_dat_outpclk1_1),
     .async_dat_outpdir0_1(async_dat_outpdir0_1),
     .oclkb_srclkout(oclkb_srclkout), .oclk_srclkout(oclk_srclkout),
     .jtag_rx_scan_voutp01(jtag_rx_scan_voutp01),
     .jtag_rx_scan_voutp00(jtag_rx_scan_voutp00),
     .jtag_clkdr_voutp01(jtag_clkdr_voutp01),
     .jtag_clkdr_voutp00(jtag_clkdr_voutp00),
     .itxen_voutp01(itxen_voutp01), .itxen_voutp00(itxen_voutp00),
     .ipdrv_r12(ipdrv_r12_buf[1:0]), .indrv_r12(indrv_r12_buf[1:0]),
     .ilaunch_clk_voutp00(ilaunch_clk_voutp00),
     .ilaunch_clk_voutp01(ilaunch_clk_voutp01),
     .idat1_voutp01(idat1_voutp01),
     .idataselb_voutp00(idataselb_voutp00),
     .idataselb_voutp01(idataselb_voutp01),
     .idat0_voutp00(idat0_voutp00), .idat0_voutp01(idat0_voutp01),
     .idat1_voutp00(idat1_voutp00),
     .jtag_rx_scan_ptxclkinn(jtag_rx_scan_ptxclkinn),
     .jtag_clkdr_ptxclkin(jtag_clkdr_ptxclkin),
     .jtag_clkdr_ptxclkinn(jtag_clkdr_ptxclkinn),
     .jtag_rx_scan_ptxclkin(jtag_rx_scan_ptxclkin),
     .rb_dcc_test_clk_pll_en_n(ihssi_rb_dcc_test_clk_pll_en_n_buf),
     .oaibdftcore2dll(ihssitxdll_str_align_dll_core2dll_str[2:0]),
     .idll_dll2core(ohssirx_odll_dll2core[12:0]),
     .rb_dcc_dll_dft_sel(ihssi_rb_dcc_dll_dft_sel_buf),
     .scan_rst_n(iatpg_scan_rst_n_buf),
     .rb_dcc_manual_up(ihssi_rb_dcc_manual_up_buf[4:0]),
     .rb_dcc_manual_dn(ihssi_rb_dcc_manual_dn_buf[4:0]),
     .iaibdftcore2dll(ihssi_dcc_dll_core2dll_str_buf[2:0]),
     .oaibdftdll2core(ohssitx_odcc_dll2core_in[12:0]),
     .vssl_aibnd(vssl_aibnd), .vccl_aibnd(vccl_aibnd),
     .ipdrv_r34(ipdrv_r34_buf[1:0]), .ipdrv_r56(ipdrv_r56_buf[1:0]),
     .indrv_r34(indrv_r34_buf[1:0]), .indrv_r56(indrv_r56_buf[1:0]),
     .idat0_in0_dout_clkp(idat0_in0_dout_clkp),
     .idat1_in0_dout_clkp(idat1_in0_dout_clkp),
     .idataselb_in0_dout_clkp(idataselb_in0_dout_clkp),
     .ilaunch_clk_in0_dout_clkp(ilaunch_clk_in0_dout_clkp),
     .itxen_in0_dout_clkp(itxen_in0_dout_clkp),
     .jtag_clkdr_out_diin_clkp(jtag_clkdr_out_diin_clkp),
     .jtag_clkdr_out_directin2(jtag_clkdr_out_directin2),
     .jtag_rx_scan_out_diin_clkp(jtag_rx_scan_out_diin_clkp),
     .jtag_rx_scan_out_directin2(jtag_rx_scan_out_directin2),
     .rshift_en_txferclkout(ired_rshift_en_txferclkout),
     .rshift_en_txferclkoutn(ired_rshift_en_txferclkoutn),
     .async_dat_outpdir1_1(async_dat_outpdir1_1),
     .dcc_done(ohssitx_dcc_done_in), .idat0_outpdir6(idat0_outpdir6),
     .idat0_poutp18(idat0_poutp18), .idat1_poutp18(idat1_poutp18),
     .idataselb_outpdir1_1(dataselb_outpdir1_1),
     .idataselb_outpdir6(dataselb_outpdir6),
     .idataselb_poutp18(dataselb_poutp18),
     .iddren_poutp18(ddren_poutp18),
     .ilaunch_clk_poutp18(launch_clk_poutp18),
     .irxen_inpclk3(rxen_inpclk3[2:0]),
     .irxen_inpdir3(rxen_inpdir3[2:0]),
     .irxen_ptxclkin(irxen_ptxclkin[2:0]),
     .itxen_outpdir1_1(itxen_outpdir1_1),
     .itxen_outpdir6(txen_outpdir6), .itxen_poutp18(txen_poutp18),
     .jtag_clkdr_out_inpclk3(jtag_clkdr_out_inpclk3),
     .jtag_clkdr_out_inpdir3(jtag_clkdr_out_inpdir3),
     .jtag_clkdr_out_outpdir1_1(jtag_clkdr_out_outpdir1_1),
     .jtag_clkdr_out_outpdir6(jtag_clkdr_out_outpdir6),
     .jtag_clkdr_out_poutp18(jtag_clkdr_out_poutp18),
     .jtag_rx_scan_out_inpclk3(jtag_rx_scan_out_inpclk3),
     .jtag_rx_scan_out_inpdir3(jtag_rx_scan_out_inpdir3),
     .jtag_rx_scan_out_outpdir1_1(jtag_rx_scan_out_outpdir1_1),
     .jtag_rx_scan_out_outpdir6(jtag_rx_scan_out_outpdir6),
     .jtag_rx_scan_out_poutp18(jtag_rx_scan_out_poutp18),
     .scan_out(oatpg_scan_out1_in),
     .csr_reg(ihssi_dcc_dll_csr_reg_buf[51:0]),
     .dcc_dft_nrst(ihssi_dcc_dft_nrst_buf),
     .dcc_dft_nrst_coding(ihssi_dcc_dft_nrst_coding_buf),
     .dcc_dft_up(ihssi_dcc_dft_up_buf), .dcc_req(ihssi_dcc_req_buf),
     .idata0_ssrdout(idata0_ssrdout), .idata0_ssrldout(data0_ssrldout),
     .idata1_ssrdout(idata1_ssrdout), .idata1_ssrldout(data1_ssrldout),
     .idataselb_ssrdout(dataselb_ssrdout),
     .idataselb_ssrldout(dataselb_ssrldout),
     .idll_entest(ihssi_dcc_dll_entest_buf),
     .ilaunch_clk_ssrdout(launch_clk_ssrdout),
     .ilaunch_clk_ssrldout(launch_clk_ssrldout),
     .irxen_inpdir2(irxen_inpdir2[2:0]), .itxen_ssrdout(itxen_ssrdout),
     .itxen_ssrldout(itxen_ssrldout),
     .jtag_clkdr_in_ssrdout(jtag_clkdr_in_ssrdout),
     .jtag_clkdr_in_ssrldout(jtag_clkdr_in_ssrldout),
     .jtag_mode_in(jtag_mode_out), .jtag_rstb(jtag_rstb_out),
     .jtag_rx_scan_in_ssrdout(jtag_rx_scan_in_ssrdout),
     .jtag_rx_scan_in_ssrldout(jtag_rx_scan_in_ssrldout),
     .jtag_tx_scanen_in(jtag_tx_scanen_out),
     .jtag_weakpdn(jtag_weakpdn_out), .jtag_weakpu(jtag_weakpu_out),
     .pipeline_global_en(iatpg_pipeline_global_en_buf),
     .poutp_dig_rstb(irstb_buf), .rb_dcc_byp(ihssi_rb_dcc_byp_buf),
     .rb_dcc_byp_dprio(ihssi_rb_dcc_byp_dprio), //Mod : Add DPRIO rambit 
     .rb_dcc_dft(ihssi_rb_dcc_dft_buf),
     .rb_dcc_dft_sel(ihssi_rb_dcc_dft_sel_buf),
     .rb_dcc_en(ihssi_rb_dcc_en_buf),
     .rb_dcc_en_dprio(ihssi_rb_dcc_en_dprio),
     .rb_dcc_manual_mode(ihssi_rb_dcc_manual_mode_buf),
     .rb_dcc_manual_mode_dprio(ihssi_rb_dcc_manual_mode_dprio),
     .rb_half_code(ihssi_rb_half_code_buf),
     .rb_selflock(ihssi_rb_selflock_buf),
     .rshift_en_dirclkn(ired_rshift_en_dirclkn[1:0]),
     .rshift_en_dirclkp(ired_rshift_en_dirclkp[1:0]),
     .rshift_en_drx(ired_rshift_en_drx[2:0]),
     .rshift_en_dtx(ired_rshift_en_dtx[3:0]),
     .rshift_en_poutp(ired_rshift_en_poutp[19:0]),
     .rshift_en_rx(ired_rshift_en_rx[3:0]),
     .irxen_r0(ihssirx_clk_en_buf[2:0]),
     .irxen_r1(ihssirx_async_en_buf[2:0]),
     .scan_mode_n(iatpg_scan_mode_n_buf),
     .odirectin_data({ohssi_pld_pma_clkdiv_tx_user_in,
     ohssi_pld_pma_pfdmode_lock_in,
     ohssi_pld_tx_hssi_fifo_latency_pulse_in}),
     .idirectout_data({ihssi_pcs_tx_pld_rst_n_buf,
     ihssi_adapter_tx_pld_rst_n_buf, ihssi_pld_pma_txdetectrx_buf,
     ihssi_pld_pma_txpma_rstb_buf}),
     .out_rx_fast_clk({ohssi_pld_pcs_tx_clk_out_in,
     ohssi_pma_aib_tx_clk_in}), .scan_in(iatpg_scan_in1_buf),
     .scan_clk_in(iatpg_scan_clk_in1_buf),
     .rshift_en_tx(ired_rshift_en_tx[3:0]),
     .iopad_direct_input({aib_hssi_pld_pma_clkdiv_tx_user,
     aib_hssi_pld_pma_pfdmode_lock,
     aib_hssi_pld_tx_hssi_fifo_latency_pulse}),
     .output_buffer_clk(ihssi_tx_transfer_clk_buf),
     .output_rstb(irstb_buf), .irxen_r2(ihssirx_async_en_buf[2:0]),
     .iopad_directinclkn({aib_hssi_pld_pcs_tx_clk_out_n,
     aib_hssi_pma_aib_tx_clk_n}),
     .iopad_directinclkp({aib_hssi_pld_pcs_tx_clk_out,
     aib_hssi_pma_aib_tx_clk}), .iopad_dat(aib_hssi_tx_data_in[19:0]),
     .iopad_clkp(aib_hssi_tx_transfer_clk),
     .iopad_clkn(aib_hssi_tx_transfer_clk_n),
     .iopad_directout({aib_hssi_pcs_tx_pld_rst_n,
     aib_hssi_adapter_tx_pld_rst_n, aib_hssi_pld_pma_txdetectrx,
     aib_hssi_pld_pma_txpma_rstb}), .idat0({ihssi_tx_data_in_buf[38],
     ihssi_tx_data_in_buf[36], ihssi_tx_data_in_buf[34],
     ihssi_tx_data_in_buf[32], ihssi_tx_data_in_buf[30],
     ihssi_tx_data_in_buf[28], ihssi_tx_data_in_buf[26],
     ihssi_tx_data_in_buf[24], ihssi_tx_data_in_buf[22],
     ihssi_tx_data_in_buf[20], ihssi_tx_data_in_buf[18],
     ihssi_tx_data_in_buf[16], ihssi_tx_data_in_buf[14],
     ihssi_tx_data_in_buf[12], ihssi_tx_data_in_buf[10],
     ihssi_tx_data_in_buf[8], ihssi_tx_data_in_buf[6],
     ihssi_tx_data_in_buf[4], ihssi_tx_data_in_buf[2],
     ihssi_tx_data_in_buf[0]}), .idat0_clkn(vccl_aibnd),
     .idat0_clkp(vssl_aibnd), .idat1({ihssi_tx_data_in_buf[39],
     ihssi_tx_data_in_buf[37], ihssi_tx_data_in_buf[35],
     ihssi_tx_data_in_buf[33], ihssi_tx_data_in_buf[31],
     ihssi_tx_data_in_buf[29], ihssi_tx_data_in_buf[27],
     ihssi_tx_data_in_buf[25], ihssi_tx_data_in_buf[23],
     ihssi_tx_data_in_buf[21], ihssi_tx_data_in_buf[19],
     ihssi_tx_data_in_buf[17], ihssi_tx_data_in_buf[15],
     ihssi_tx_data_in_buf[13], ihssi_tx_data_in_buf[11],
     ihssi_tx_data_in_buf[9], ihssi_tx_data_in_buf[7],
     ihssi_tx_data_in_buf[5], ihssi_tx_data_in_buf[3],
     ihssi_tx_data_in_buf[1]}), .idat1_clkn(vssl_aibnd),
     .idat1_clkp(vccl_aibnd),
     .idataselb(ihssirx_out_dataselb_buf[3:0]),
     .itxen(ihssirx_out_en_buf[3:0]));
aibnd_interface x15 ( .ihssirx_out_ddren_out(ihssirx_out_ddren_buf),
     .ihssirx_out_ddren(ihssirx_out_ddren),
     .iasyncdata_out(iasyncdata_out[2:0]),
     .odat_async(oshared_direct_async[7:3]),
     .iasyncdata(oshared_direct_async[2:0]),
     .odat_async_in(odat_async_in[4:0]),
     .ihssi_adapter_rx_pld_rst_n_out(ihssi_adapter_rx_pld_rst_n_buf),
     .ihssi_pcs_rx_pld_rst_n_out(ihssi_pcs_rx_pld_rst_n_buf),
     .ihssi_pld_pma_rxpma_rstb_out(ihssi_pld_pma_rxpma_rstb_buf),
     .ihssi_pld_sclk_out(ihssi_pld_sclk_buf),
     .ihssi_adapter_rx_pld_rst_n(ihssi_adapter_rx_pld_rst_n),
     .ihssi_pcs_rx_pld_rst_n(ihssi_pcs_rx_pld_rst_n),
     .ihssi_pld_pma_rxpma_rstb(ihssi_pld_pma_rxpma_rstb),
     .ihssi_pld_sclk(ihssi_pld_sclk),
     .indrv_r12_out(indrv_r12_buf[1:0]),
     .indrv_r34_out(indrv_r34_buf[1:0]),
     .indrv_r56_out(indrv_r56_buf[1:0]),
     .indrv_r78_out(indrv_r78_buf[1:0]),
     .ipdrv_r12_out(ipdrv_r12_buf[1:0]),
     .ipdrv_r34_out(ipdrv_r34_buf[1:0]),
     .ipdrv_r56_out(ipdrv_r56_buf[1:0]),
     .ipdrv_r78_out(ipdrv_r78_buf[1:0]), .indrv_r12(indrv_r12[1:0]),
     .indrv_r34(indrv_r34[1:0]), .indrv_r56(indrv_r56[1:0]),
     .indrv_r78(indrv_r78[1:0]), .ipdrv_r12(ipdrv_r12[1:0]),
     .ipdrv_r34(ipdrv_r34[1:0]), .ipdrv_r56(ipdrv_r56[1:0]),
     .ipdrv_r78(ipdrv_r78[1:0]), .irstb_out(irstb_buf), .irstb(irstb),
     .iavm2in_en0_out(iavm2in_en0_buf[2:0]),
     .iavm2out_dataselb_out(iavm2out_dataselb_buf),
     .iavm2out_en_out(iavm2out_en_buf),
     .ihssi_avmm2_data_out_out(ihssi_avmm2_data_out_buf[1:0]),
     .ired_rshift_en_rx_avmm2_out(ired_rshift_en_rx_avmm2_buf),
     .ired_rshift_en_tx_avmm2_out(ired_rshift_en_tx_avmm2_buf[1:0]),
     .ohssi_avmm2_data_in(ohssi_avmm2_data_in),
     .iavm2in_en0(iavm2in_en0[2:0]),
     .iavm2out_dataselb(iavm2out_dataselb), .iavm2out_en(iavm2out_en),
     .ihssi_avmm2_data_out(ihssi_avmm2_data_out[1:0]),
     .ired_rshift_en_rx_avmm2(ired_rshift_en_rx_avmm2),
     .ired_rshift_en_tx_avmm2(ired_rshift_en_tx_avmm2[1:0]),
     .ohssi_avmm2_data_in_in(ohssi_avmm2_data_in_in),
     .iavm1_sr_clk_out_out(iavm1_sr_clk_out_buf),
     .iavm1in_en0_out(iavm1in_en0_buf[2:0]),
     .iavm1in_en1_out(iavm1in_en1_buf[2:0]),
     .iavm1in_en2_out(iavm1in_en2_buf[2:0]),
     .iavm1out_dataselb_out(iavm1out_dataselb_buf[2:0]),
     .iavm1out_en_out(iavm1out_en_buf[2:0]),
     .ihssi_avmm1_data_out_out(ihssi_avmm1_data_out_buf[1:0]),
     .ihssi_fsr_data_out_out(ihssi_fsr_data_out_buf),
     .ihssi_fsr_load_out_out(ihssi_fsr_load_out_buf),
     .ihssi_ssr_data_out_out(ihssi_ssr_data_out_buf),
     .ihssi_ssr_load_out_out(ihssi_ssr_load_out_buf),
     .ired_avm1_shift_en_out(ired_avm1_shift_en_buf[14:0]),
     .ohssi_avmm1_data_in(ohssi_avmm1_data_in),
     .ohssi_fsr_data_in(ohssi_fsr_data_in),
     .ohssi_fsr_load_in(ohssi_fsr_load_in),
     .ohssi_sr_clk_in(ohssi_sr_clk_in),
     .ohssi_sr_clk_n_in(ohssi_sr_clk_n_in),
     .ohssi_ssr_data_in(ohssi_ssr_data_in),
     .ohssi_ssr_load_in(ohssi_ssr_load_in),
     .iavm1_sr_clk_out(iavm1_sr_clk_out),
     .iavm1in_en0(iavm1in_en0[2:0]), .iavm1in_en1(iavm1in_en1[2:0]),
     .iavm1in_en2(iavm1in_en2[2:0]),
     .iavm1out_dataselb(iavm1out_dataselb[2:0]),
     .iavm1out_en(iavm1out_en[2:0]),
     .ihssi_avmm1_data_out(ihssi_avmm1_data_out[1:0]),
     .ihssi_fsr_data_out(ihssi_fsr_data_out),
     .ihssi_fsr_load_out(ihssi_fsr_load_out),
     .ihssi_ssr_data_out(ihssi_ssr_data_out),
     .ihssi_ssr_load_out(ihssi_ssr_load_out),
     .ired_avm1_shift_en(ired_avm1_shift_en[14:0]),
     .ohssi_avmm1_data_in_in(ohssi_avmm1_data_in_in),
     .ohssi_fsr_data_in_in(ohssi_fsr_data_in_in),
     .ohssi_fsr_load_in_in(ohssi_fsr_load_in_in),
     .ohssi_sr_clk_in_in(ohssi_sr_clk_in_in),
     .ohssi_sr_clk_n_in_in(ohssi_sr_clk_n_in_in),
     .ohssi_ssr_data_in_in(ohssi_ssr_data_in_in),
     .ohssi_ssr_load_in_in(ohssi_ssr_load_in_in),
     .iatpg_scan_clk_in0_out(iatpg_scan_clk_in0_buf),
     .iatpg_scan_in0_out(iatpg_scan_in0_buf),
     .ihssi_pld_pma_coreclkin_out(ihssi_pld_pma_coreclkin_buf),
     .ihssi_rb_dll_test_clk_pll_en_n_out(ihssi_rb_dll_test_clk_pll_en_n_buf),
     .ihssi_tx_dll_lock_req_out(ihssi_tx_dll_lock_req_buf),
     .ihssitx_in_en0_out(ihssitx_in_en0_buf[2:0]),
     .ihssitx_in_en1_out(ihssitx_in_en1_buf[2:0]),
     .ihssitx_in_en2_out(ihssitx_in_en2_buf[2:0]),
     .ihssitx_in_en3_out(ihssitx_in_en3_buf[2:0]),
     .ihssitx_out_dataselb_out(ihssitx_out_dataselb_buf[2:0]),
     .ihssitx_out_en_out(ihssitx_out_en_buf[2:0]),
     .ihssitxdll_rb_clkdiv_str_out(ihssitxdll_rb_clkdiv_str_buf[2:0]),
     .ihssitxdll_rb_half_code_str_out(ihssitxdll_rb_half_code_str_buf),
     .ihssitxdll_rb_selflock_str_out(ihssitxdll_rb_selflock_str_buf),
     .ihssitxdll_str_align_dly_pst_out(ihssitxdll_str_align_dly_pst_buf[9:0]),
     .ihssitxdll_str_align_dyconfig_ctl_static_out(ihssitxdll_str_align_dyconfig_ctl_static_buf[9:0]),
     .ihssitxdll_str_align_dyconfig_ctlsel_out(ihssitxdll_str_align_dyconfig_ctlsel_buf),
     .ihssitxdll_str_align_entest_out(ihssitxdll_str_align_entest_buf),
     .ihssitxdll_str_align_stconfig_core_dn_prgmnvrt_out(ihssitxdll_str_align_stconfig_core_dn_prgmnvrt_buf),
     .ihssitxdll_str_align_stconfig_core_up_prgmnvrt_out(ihssitxdll_str_align_stconfig_core_up_prgmnvrt_buf),
     .ihssitxdll_str_align_stconfig_core_updnen_out(ihssitxdll_str_align_stconfig_core_updnen_buf),
     .ihssitxdll_str_align_stconfig_dftmuxsel_out(ihssitxdll_str_align_stconfig_dftmuxsel_buf[19:0]),
     .ihssitxdll_str_align_stconfig_dll_en_out(ihssitxdll_str_align_stconfig_dll_en_buf),
     .ihssitxdll_str_align_stconfig_dll_rst_en_out(ihssitxdll_str_align_stconfig_dll_rst_en_buf),
     .ihssitxdll_str_align_stconfig_hps_ctrl_en_out(ihssitxdll_str_align_stconfig_hps_ctrl_en_buf),
     .ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt_out(ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt_buf),
     .ihssitxdll_str_align_stconfig_new_dll_out(ihssitxdll_str_align_stconfig_new_dll_buf[2:0]),
     .ihssitxdll_str_align_stconfig_spare_out(ihssitxdll_str_align_stconfig_spare_buf),
     .ired_rx_shift_en_out(ired_rx_shift_en_buf[36:0]),
     .oatpg_scan_out0(oatpg_scan_out0),
     .ohssi_pld_8g_rxelecidle(ohssi_pld_8g_rxelecidle),
     .ohssi_pld_pcs_rx_clk_out(ohssi_pld_pcs_rx_clk_out),
     .ohssi_pld_pma_clkdiv_rx_user(ohssi_pld_pma_clkdiv_rx_user),
     .ohssi_pld_pma_hclk(ohssi_pld_pma_hclk),
     .ohssi_pld_pma_internal_clk1(ohssi_pld_pma_internal_clk1),
     .ohssi_pld_pma_internal_clk2(ohssi_pld_pma_internal_clk2),
     .ohssi_pld_pma_rxpll_lock(ohssi_pld_pma_rxpll_lock),
     .ohssi_pld_rx_hssi_fifo_latency_pulse(ohssi_pld_rx_hssi_fifo_latency_pulse),
     .ohssi_rx_data_out(ohssi_rx_data_out[39:0]),
     .ohssi_rx_transfer_clk(ohssi_rx_transfer_clk),
     .ohssi_tx_dll_lock(ohssi_tx_dll_lock),
     .iatpg_scan_clk_in0(iatpg_scan_clk_in0),
     .iatpg_scan_in0(iatpg_scan_in0),
     .ihssi_pld_pma_coreclkin(ihssi_pld_pma_coreclkin),
     .ihssi_rb_dll_test_clk_pll_en_n(ihssi_rb_dll_test_clk_pll_en_n),
     .ihssi_tx_dll_lock_req(ihssi_tx_dll_lock_req),
     .ihssitx_in_en0(ihssitx_in_en0[2:0]),
     .ihssitx_in_en1(ihssitx_in_en1[2:0]),
     .ihssitx_in_en2(ihssitx_in_en2[2:0]),
     .ihssitx_in_en3(ihssitx_in_en3[2:0]),
     .ihssitx_out_dataselb(ihssitx_out_dataselb[2:0]),
     .ihssitx_out_en(ihssitx_out_en[2:0]),
     .ihssitxdll_rb_clkdiv_str(ihssitxdll_rb_clkdiv_str[2:0]),
     .ihssitxdll_rb_half_code_str(ihssitxdll_rb_half_code_str),
     .ihssitxdll_rb_selflock_str(ihssitxdll_rb_selflock_str),
     .ihssitxdll_str_align_dly_pst(ihssitxdll_str_align_dly_pst[9:0]),
     .ihssitxdll_str_align_dyconfig_ctl_static(ihssitxdll_str_align_dyconfig_ctl_static[9:0]),
     .ihssitxdll_str_align_dyconfig_ctlsel(ihssitxdll_str_align_dyconfig_ctlsel),
     .ihssitxdll_str_align_entest(ihssitxdll_str_align_entest),
     .ihssitxdll_str_align_stconfig_core_dn_prgmnvrt(ihssitxdll_str_align_stconfig_core_dn_prgmnvrt),
     .ihssitxdll_str_align_stconfig_core_up_prgmnvrt(ihssitxdll_str_align_stconfig_core_up_prgmnvrt),
     .ihssitxdll_str_align_stconfig_core_updnen(ihssitxdll_str_align_stconfig_core_updnen),
     .ihssitxdll_str_align_stconfig_dftmuxsel(ihssitxdll_str_align_stconfig_dftmuxsel[19:0]),
     .ihssitxdll_str_align_stconfig_dll_en(ihssitxdll_str_align_stconfig_dll_en),
     .ihssitxdll_str_align_stconfig_dll_rst_en(ihssitxdll_str_align_stconfig_dll_rst_en),
     .ihssitxdll_str_align_stconfig_hps_ctrl_en(ihssitxdll_str_align_stconfig_hps_ctrl_en),
     .ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt(ihssitxdll_str_align_stconfig_ndllrst_prgmnvrt),
     .ihssitxdll_str_align_stconfig_new_dll(ihssitxdll_str_align_stconfig_new_dll[2:0]),
     .ihssitxdll_str_align_stconfig_spare(ihssitxdll_str_align_stconfig_spare),
     .ired_rx_shift_en(ired_rx_shift_en[36:0]),
     .oatpg_scan_out0_in(oatpg_scan_out0_in),
     .ohssi_pld_8g_rxelecidle_in(ohssi_pld_8g_rxelecidle_in),
     .ohssi_pld_pcs_rx_clk_out_in(ohssi_pld_pcs_rx_clk_out_in),
     .ohssi_pld_pma_clkdiv_rx_user_in(ohssi_pld_pma_clkdiv_rx_user_in),
     .ohssi_pld_pma_hclk_in(ohssi_pld_pma_hclk_in),
     .ohssi_pld_pma_internal_clk1_in(ohssi_pld_pma_internal_clk1_in),
     .ohssi_pld_pma_internal_clk2_in(ohssi_pld_pma_internal_clk2_in),
     .ohssi_pld_pma_rxpll_lock_in(ohssi_pld_pma_rxpll_lock_in),
     .ohssi_pld_rx_hssi_fifo_latency_pulse_in(ohssi_pld_rx_hssi_fifo_latency_pulse_in),
     .ohssi_rx_data_out_in(ohssi_rx_data_out_in[39:0]),
     .ohssi_rx_transfer_clk_in(ohssi_rx_transfer_clk_in),
     .ohssi_tx_dll_lock_in(ohssi_tx_dll_lock_in),
     .vssl_aibnd(vssl_aibnd), .vccl_aibnd(vccl_aibnd),
     .iatpg_pipeline_global_en_out(iatpg_pipeline_global_en_buf),
     .iatpg_scan_clk_in1_out(iatpg_scan_clk_in1_buf),
     .iatpg_scan_in1_out(iatpg_scan_in1_buf),
     .iatpg_scan_mode_n_out(iatpg_scan_mode_n_buf),
     .iatpg_scan_rst_n_out(iatpg_scan_rst_n_buf),
     .iatpg_scan_shift_n_out(iatpg_scan_shift_n_buf),
     .ihssi_adapter_tx_pld_rst_n_out(ihssi_adapter_tx_pld_rst_n_buf),
     .ihssi_dcc_dft_nrst_coding_out(ihssi_dcc_dft_nrst_coding_buf),
     .ihssi_dcc_dft_nrst_out(ihssi_dcc_dft_nrst_buf),
     .ihssi_dcc_dft_up_out(ihssi_dcc_dft_up_buf),
     .ihssi_dcc_dll_core2dll_str_out(ihssi_dcc_dll_core2dll_str_buf[2:0]),
     .ihssi_dcc_dll_csr_reg_out(ihssi_dcc_dll_csr_reg_buf[51:0]),
     .ihssi_dcc_dll_entest_out(ihssi_dcc_dll_entest_buf),
     .ihssi_dcc_req_out(ihssi_dcc_req_buf),
     .ihssi_pcs_tx_pld_rst_n_out(ihssi_pcs_tx_pld_rst_n_buf),
     .ihssi_pld_pma_txdetectrx_out(ihssi_pld_pma_txdetectrx_buf),
     .ihssi_pld_pma_txpma_rstb_out(ihssi_pld_pma_txpma_rstb_buf),
     .ihssi_rb_clkdiv_out(ihssi_rb_clkdiv_buf[2:0]),
     .ihssi_rb_dcc_byp_out(ihssi_rb_dcc_byp_buf),
     .ihssi_rb_dcc_dft_out(ihssi_rb_dcc_dft_buf),
     .ihssi_rb_dcc_dft_sel_out(ihssi_rb_dcc_dft_sel_buf),
     .ihssi_rb_dcc_dll_dft_sel_out(ihssi_rb_dcc_dll_dft_sel_buf),
     .ihssi_rb_dcc_en_out(ihssi_rb_dcc_en_buf),
     .ihssi_rb_dcc_manual_dn_out(ihssi_rb_dcc_manual_dn_buf[4:0]),
     .ihssi_rb_dcc_manual_mode_out(ihssi_rb_dcc_manual_mode_buf),
     .ihssi_rb_dcc_manual_up_out(ihssi_rb_dcc_manual_up_buf[4:0]),
     .ihssi_rb_dcc_test_clk_pll_en_n_out(ihssi_rb_dcc_test_clk_pll_en_n_buf),
     .ihssi_rb_half_code_out(ihssi_rb_half_code_buf),
     .ihssi_rb_selflock_out(ihssi_rb_selflock_buf),
     .ihssi_tx_data_in_out(ihssi_tx_data_in_buf[39:0]),
     .ihssi_tx_transfer_clk_out(ihssi_tx_transfer_clk_buf),
     .ihssirx_async_en_out(ihssirx_async_en_buf[2:0]),
     .ihssirx_clk_en_out(ihssirx_clk_en_buf[2:0]),
     .ihssirx_out_dataselb_out(ihssirx_out_dataselb_buf[3:0]),
     .ihssirx_out_en_out(ihssirx_out_en_buf[3:0]),
     .oatpg_scan_out1(oatpg_scan_out1),
     .ohssi_pld_pcs_tx_clk_out(ohssi_pld_pcs_tx_clk_out),
     .ohssi_pld_pma_clkdiv_tx_user(ohssi_pld_pma_clkdiv_tx_user),
     .ohssi_pld_pma_pfdmode_lock(ohssi_pld_pma_pfdmode_lock),
     .ohssi_pld_tx_hssi_fifo_latency_pulse(ohssi_pld_tx_hssi_fifo_latency_pulse),
     .ohssi_pma_aib_tx_clk(ohssi_pma_aib_tx_clk),
     .ohssitx_dcc_done(ohssitx_dcc_done),
     .ohssitx_odcc_dll2core(ohssitx_odcc_dll2core[12:0]),
     .iatpg_pipeline_global_en(iatpg_pipeline_global_en_inv),
     .iatpg_scan_clk_in1(iatpg_scan_clk_in1),
     .iatpg_scan_in1(iatpg_scan_in1),
     .iatpg_scan_mode_n(iatpg_scan_mode_n),
     .iatpg_scan_rst_n(iatpg_scan_rst_n),
     .iatpg_scan_shift_n(iatpg_scan_shift_n),
     .ihssi_adapter_tx_pld_rst_n(ihssi_adapter_tx_pld_rst_n),
     .ihssi_dcc_dft_nrst(ihssi_dcc_dft_nrst),
     .ihssi_dcc_dft_nrst_coding(ihssi_dcc_dft_nrst_coding),
     .ihssi_dcc_dft_up(ihssi_dcc_dft_up),
     .ihssi_dcc_dll_core2dll_str(ihssi_dcc_dll_core2dll_str[2:0]),
     .ihssi_dcc_dll_csr_reg(ihssi_dcc_dll_csr_reg[51:0]),
     .ihssi_dcc_dll_entest(ihssi_dcc_dll_entest),
     .ihssi_dcc_req(ihssi_dcc_req),
     .ihssi_pcs_tx_pld_rst_n(ihssi_pcs_tx_pld_rst_n),
     .ihssi_pld_pma_txdetectrx(ihssi_pld_pma_txdetectrx),
     .ihssi_pld_pma_txpma_rstb(ihssi_pld_pma_txpma_rstb),
     .ihssi_rb_clkdiv(ihssi_rb_clkdiv[2:0]),
     .ihssi_rb_dcc_byp(ihssi_rb_dcc_byp),
     .ihssi_rb_dcc_dft(ihssi_rb_dcc_dft),
     .ihssi_rb_dcc_dft_sel(ihssi_rb_dcc_dft_sel),
     .ihssi_rb_dcc_dll_dft_sel(ihssi_rb_dcc_dll_dft_sel),
     .ihssi_rb_dcc_en(ihssi_rb_dcc_en),
     .ihssi_rb_dcc_manual_dn(ihssi_rb_dcc_manual_dn[4:0]),
     .ihssi_rb_dcc_manual_mode(ihssi_rb_dcc_manual_mode),
     .ihssi_rb_dcc_manual_up(ihssi_rb_dcc_manual_up[4:0]),
     .ihssi_rb_dcc_test_clk_pll_en_n(ihssi_rb_dcc_test_clk_pll_en_n),
     .ihssi_rb_half_code(ihssi_rb_half_code),
     .ihssi_rb_selflock(ihssi_rb_selflock),
     .ihssi_tx_data_in(ihssi_tx_data_in_dly[39:0]),
     .ihssi_tx_transfer_clk(ihssi_tx_transfer_clk),
     .ihssirx_async_en(ihssirx_async_en[2:0]),
     .ihssirx_clk_en(ihssirx_clk_en[2:0]),
     .ihssirx_out_dataselb(ihssirx_out_dataselb[3:0]),
     .ihssirx_out_en(ihssirx_out_en[3:0]),
     .oatpg_scan_out1_in(vssl_aibnd),
     .ohssi_pld_pcs_tx_clk_out_in(ohssi_pld_pcs_tx_clk_out_in),
     .ohssi_pld_pma_clkdiv_tx_user_in(ohssi_pld_pma_clkdiv_tx_user_in),
     .ohssi_pld_pma_pfdmode_lock_in(ohssi_pld_pma_pfdmode_lock_in),
     .ohssi_pld_tx_hssi_fifo_latency_pulse_in(ohssi_pld_tx_hssi_fifo_latency_pulse_in),
     .ohssi_pma_aib_tx_clk_in(ohssi_pma_aib_tx_clk_in),
     .ohssitx_dcc_done_in(ohssitx_dcc_done_in),
     .ohssitx_odcc_dll2core_in(ohssitx_odcc_dll2core_in[12:0]));

aibnd_dly_mimic x17 ( .csr_reg6(ihssi_dcc_dll_csr_reg[6]),
     .idll_core2dll_1(ihssi_dcc_dll_core2dll_str[1]), .vss_aibnd(vssl_aibnd),
     .vcc_aibnd(vccl_aibnd),
     .ihssi_tx_data_out_dly(ihssi_tx_data_in_dly[39:0]),
     .ihssi_tx_data_out(ihssi_tx_data_in[39:0]),
     .rb_dcc_byp(ihssi_rb_dcc_byp),
     .rb_dcc_byp_dprio(ihssi_rb_dcc_byp_dprio));


assign clkdr_xr1r = jtag_clkdr_mid;
assign clkdr_xr2r = clkdr_xr1r;
assign clkdr_xr3l = clkdr_xr2l;
assign clkdr_xr6r = clkdr_xr5r;
assign clkdr_xr7r = clkdr_xr6r;
assign clkdr_xr6l = clkdr_xr5l;
assign clkdr_xr7l = clkdr_xr6l;
assign clkdr_xr8r = clkdr_xr7r;
assign clkdr_xr5l = clkdr_xr4l;
assign clkdr_xr4l = clkdr_xr3l;
assign clkdr_xr8l = clkdr_xr7l;
assign clkdr_xr5r = clkdr_xr4r;
assign clkdr_xr4r = clkdr_xr3r;
assign clkdr_xr2l = clkdr_xr1l;
assign clkdr_xr3r = clkdr_xr2r;
assign clkdr_xr1l = jtag_clkdr_mid;
assign ojtag_last_bs_out_chain = ijtag_last_bs_in_chain;
assign jtag_clksel_out = jtag_clksel;
assign jtag_mode_out = jtag_mode_in;
assign jtag_rstb_en_out = jtag_rstb_en;
assign jtag_rstb_out = jtag_rstb;
assign jtag_weakpdn_out = jtag_weakpdn;
assign jtag_intest_out = jtag_intest;
assign jtag_weakpu_out = jtag_weakpu;
assign jtag_tx_scanen_out = jtag_tx_scanen_in;

endmodule

