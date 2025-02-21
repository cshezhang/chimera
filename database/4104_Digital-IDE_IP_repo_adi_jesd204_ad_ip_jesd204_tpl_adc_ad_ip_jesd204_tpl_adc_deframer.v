// This program was cloned from: https://github.com/Nitcloud/Digital-IDE
// License: GNU General Public License v3.0

// ***************************************************************************
// ***************************************************************************
// Copyright 2018 (c) Analog Devices, Inc. All rights reserved.
//
// Each core or library found in this collection may have its own licensing terms.
// The user should keep this in in mind while exploring these cores.
//
// Redistribution and use in source and binary forms,
// with or without modification of this file, are permitted under the terms of either
//  (at the option of the user):
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory, or at:
// https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html
//
// OR
//
//   2.  An ADI specific BSD license as noted in the top level directory, or on-line at:
// https://github.com/analogdevicesinc/hdl/blob/dev/LICENSE
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module ad_ip_jesd204_tpl_adc_deframer #(
  parameter NUM_LANES = 1,
  parameter NUM_CHANNELS = 4,
  parameter BITS_PER_SAMPLE = 16,
  parameter CONVERTER_RESOLUTION = 14,
  parameter SAMPLES_PER_FRAME = 1,
  parameter OCTETS_PER_BEAT = 8,
  parameter LINK_DATA_WIDTH = OCTETS_PER_BEAT * 8 * NUM_LANES,
  parameter ADC_DATA_WIDTH = LINK_DATA_WIDTH * CONVERTER_RESOLUTION / BITS_PER_SAMPLE
) (
  // jesd interface
  // clk is (line-rate/40)

  input clk,
  input [OCTETS_PER_BEAT-1:0] link_sof,
  input [LINK_DATA_WIDTH-1:0] link_data,

   // adc data output

   output [ADC_DATA_WIDTH-1:0] adc_data
 );


  localparam SAMPLES_PER_BEAT = ADC_DATA_WIDTH / CONVERTER_RESOLUTION;
  localparam BITS_PER_CHANNEL_PER_FRAME = BITS_PER_SAMPLE * SAMPLES_PER_FRAME;
  localparam BITS_PER_LANE_PER_FRAME = BITS_PER_CHANNEL_PER_FRAME *
                                       NUM_CHANNELS / NUM_LANES;
  localparam FRAMES_PER_BEAT = OCTETS_PER_BEAT * 8 / BITS_PER_LANE_PER_FRAME;

  wire [LINK_DATA_WIDTH-1:0] link_data_s;
  wire [LINK_DATA_WIDTH-1:0] link_data_msb_s;
  wire [LINK_DATA_WIDTH-1:0] frame_data_s;
  wire [LINK_DATA_WIDTH-1:0] adc_data_msb;

  // data multiplex

  genvar i;
  genvar j;
  generate
    /* Reorder octets MSB first */
    for (i = 0; i < LINK_DATA_WIDTH; i = i + 8) begin: g_adc_data
      assign link_data_msb_s[i+:8] = link_data_s[LINK_DATA_WIDTH-1-i-:8];
    end

    /* Slice lanes into frames */
    ad_perfect_shuffle #(
      .NUM_GROUPS (NUM_LANES),
      .WORDS_PER_GROUP (FRAMES_PER_BEAT),
      .WORD_WIDTH (BITS_PER_LANE_PER_FRAME)
    ) i_lanes_to_frames (
      .data_in (link_data_msb_s),
      .data_out (frame_data_s)
    );

    /* Slice frames into channels */
    ad_perfect_shuffle #(
      .NUM_GROUPS (FRAMES_PER_BEAT),
      .WORDS_PER_GROUP (NUM_CHANNELS),
      .WORD_WIDTH (BITS_PER_CHANNEL_PER_FRAME)
    ) i_frames_to_channels (
      .data_in (frame_data_s),
      .data_out (adc_data_msb)
    );

    /* Reorder samples LSB first and remove tail bits */
    for (i = 0; i < SAMPLES_PER_BEAT; i = i + 1) begin: g_dac_data_msb
      localparam src_w = BITS_PER_SAMPLE;
      localparam dst_w = CONVERTER_RESOLUTION;
      localparam src_msb = LINK_DATA_WIDTH - 1 - i * src_w ;
      localparam dst_lsb = i * dst_w;

      assign adc_data[dst_lsb+:dst_w] = adc_data_msb[src_msb-:dst_w];
    end
  endgenerate

  // frame-alignment

  generate
  genvar n;
  for (n = 0; n < NUM_LANES; n = n + 1) begin: g_xcvr_if
    localparam DW = OCTETS_PER_BEAT * 8;
    ad_xcvr_rx_if #(
      .OCTETS_PER_BEAT (OCTETS_PER_BEAT)
    ) i_xcvr_if (
      .rx_clk (clk),
      .rx_ip_sof (link_sof),
      .rx_ip_data (link_data[n*DW+:DW]),
      .rx_sof (),
      .rx_data (link_data_s[n*DW+:DW])
    );
  end
  endgenerate

endmodule
