// This program was cloned from: https://github.com/intel/aib-phy-hardware
// License: Apache License 2.0

// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2019 Intel Corporation. All rights reserved
module aibnd_rxdat_mimic (
	input wire vccl_aibnd,
	input wire vssl_aibnd,
	input wire odat_in,
	output wire odat_out
);

assign odat_out = odat_in;

endmodule
