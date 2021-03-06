//
// Copyright (c) 2016, The Swedish Post and Telecom Authority (PTS) 
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without 
// modification, are permitted provided that the following conditions are met:
// 
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
// 
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//
// Author: Rolf Andersson (rolf@mechanicalmen.se)
//
// Design Name: FPGA NTP Server
// Module Name: pp_top
// Description: Top level for the complete packet processing
// 

`timescale 1ns / 1ps
`default_nettype none
  
module pp_mac_top (
  input wire         areset, // async reset
  input wire         clk,
  //
  input wire [47:0]  my_mac_addr0,
  input wire [47:0]  my_mac_addr1,
  input wire [47:0]  my_mac_addr2,
  input wire [47:0]  my_mac_addr3,
  input wire [31:0]  my_ipv4_addr0,
  input wire [31:0]  my_ipv4_addr1,
  input wire [31:0]  my_ipv4_addr2,
  input wire [31:0]  my_ipv4_addr3,
  input wire [127:0] my_ipv6_addr0,
  input wire [127:0] my_ipv6_addr1,
  input wire [127:0] my_ipv6_addr2,
  input wire [127:0] my_ipv6_addr3,
  // Gen config
  input wire [23:0]  gen_config,
  // NTP Config
  input wire [31:0]  ntp_config,     // LI | VN | Mode | Stratum | Poll | Precision 
  input wire [31:0]  ntp_root_delay, // Root Delay
  input wire [31:0]  ntp_root_disp,  // Root Dispersion 
  input wire [31:0]  ntp_ref_id,     // Reference ID
  input wire [63:0]  ntp_ref_ts,     // Reference Timestamp
  input wire [31:0]  ntp_rx_ofs,     // RX time stamp offset
  input wire [31:0]  ntp_tx_ofs,     // TX time stamp offset
  // From clock
  input wire [63:0]  ntp_time, 
  // Key Memory
  output wire        key_req,
  output wire [31:0] key_id,
  input wire         key_ack,
  input wire [255:0] key,
  // MAC 
  input wire [63:0]  xgmii_rxd,
  input wire [7:0]   xgmii_rxc,
  output wire [63:0] xgmii_txd,
  output wire [7:0]  xgmii_txc,
  // Status bits
  output wire [31:0] status
);
  
  // Swap and mask bytes within long word
  function [63:0] swap_bytes;
    input [63:0] data;
    input [7:0]  mask; // Avoid Xs
    begin
      swap_bytes[ 0+:8] = data[56+:8] & {8{mask[7]}};
      swap_bytes[ 8+:8] = data[48+:8] & {8{mask[6]}};
      swap_bytes[16+:8] = data[40+:8] & {8{mask[5]}};
      swap_bytes[24+:8] = data[32+:8] & {8{mask[4]}};
      swap_bytes[32+:8] = data[24+:8] & {8{mask[3]}};
      swap_bytes[40+:8] = data[16+:8] & {8{mask[2]}};
      swap_bytes[48+:8] = data[ 8+:8] & {8{mask[1]}};
      swap_bytes[56+:8] = data[ 0+:8] & {8{mask[0]}};
    end
  endfunction //
  
  wire             aresetn;
  assign           aresetn = ~areset;

  wire [7:0]       rx_mac_data_valid;
  wire [63:0]      rx_mac_data;
  wire             tx_mac_start;  
  wire             tx_mac_ack;  
  wire [7:0]       tx_mac_data_valid;
  wire [63:0]      tx_mac_data;
  wire             rx_mac_bad_frame;
  wire             rx_mac_good_frame;

  // 10GbMAC
  oc_mac mac(
    .res_n         (aresetn),
    .tx_clk        (clk),
    .tx_start      (tx_mac_start),
    .tx_data       (swap_bytes(tx_mac_data, 8'hff)), // mask doesn't work here since it is already swapped (is not needed anyway)
    .tx_data_valid (tx_mac_data_valid),
    .xgmii_rxd     (xgmii_rxd),
    .xgmii_rxc     (xgmii_rxc),
    .tx_ack        (tx_mac_ack),
    .rx_clk        (clk),
    .rx_bad_frame  (rx_mac_bad_frame),
    .rx_good_frame (rx_mac_good_frame),
    .rx_data       (rx_mac_data),
    .rx_data_valid (rx_mac_data_valid),
    .xgmii_txc     (xgmii_txc),
    .xgmii_txd     (xgmii_txd)
  );
  
  // Packet processing
  pp_top pp(
    .areset         (areset),
    .clk            (clk),
    .my_mac_addr0   (my_mac_addr0), 
    .my_mac_addr1   (my_mac_addr1), 
    .my_mac_addr2   (my_mac_addr2), 
    .my_mac_addr3   (my_mac_addr3), 
    .my_ipv4_addr0  (my_ipv4_addr0),
    .my_ipv4_addr1  (my_ipv4_addr1),
    .my_ipv4_addr2  (my_ipv4_addr2),
    .my_ipv4_addr3  (my_ipv4_addr3),
    .my_ipv6_addr0  (my_ipv6_addr0),
    .my_ipv6_addr1  (my_ipv6_addr1),
    .my_ipv6_addr2  (my_ipv6_addr2),
    .my_ipv6_addr3  (my_ipv6_addr3),
    .gen_config     (gen_config[23:0]),
    .ntp_config     (ntp_config),
    .ntp_root_delay (ntp_root_delay),
    .ntp_root_disp  (ntp_root_disp),
    .ntp_ref_id     (ntp_ref_id),
    .ntp_ref_ts     (ntp_ref_ts),
    .ntp_rx_ofs     (ntp_rx_ofs),
    .ntp_tx_ofs     (ntp_tx_ofs),
    .ntp_time       (ntp_time),
    .key_req        (key_req),
    .key_id         (key_id),
    .key_ack        (key_ack),
    .key            (key),
    .rx_data_valid  (rx_mac_data_valid),
    .rx_data        (swap_bytes(rx_mac_data, rx_mac_data_valid)),
    .rx_bad_frame   (rx_mac_bad_frame),
    .rx_good_frame  (rx_mac_good_frame),
    .tx_start       (tx_mac_start),
    .tx_ack         (tx_mac_ack),
    .tx_data_valid  (tx_mac_data_valid),
    .tx_data        (tx_mac_data),
    .status         (status)
  );

endmodule // pp_mac_top

`default_nettype wire
