// This program was cloned from: https://github.com/lnis-uofu/SOFA
// License: MIT License


initial begin
    $dumpfile ("ccff_test.vcd");
    $dumpvars (1, prog_clk_pad,
    prog_clk,
    ccff_head_pad,
    ccff_head,
    fpga_core_uut.sb_2__2_.ccff_tail,
    fpga_core_uut.cbx_2__2_.ccff_tail,
    fpga_core_uut.grid_io_top_2__3_.ccff_tail,
    fpga_core_uut.sb_1__2_.ccff_tail,
    fpga_core_uut.cbx_1__2_.ccff_tail,
    fpga_core_uut.grid_io_top_1__3_.ccff_tail,
    fpga_core_uut.sb_0__2_.ccff_tail,
    fpga_core_uut.cby_0__2_.ccff_tail,
    fpga_core_uut.grid_io_left_0__2_.ccff_tail,
    fpga_core_uut.grid_clb_1__2_.ccff_tail,
    fpga_core_uut.cby_1__2_.ccff_tail,
    fpga_core_uut.grid_clb_2__2_.ccff_tail,
    fpga_core_uut.cby_2__2_.ccff_tail,
    fpga_core_uut.grid_io_right_3__2_.ccff_tail,
    fpga_core_uut.sb_2__1_.ccff_tail,
    fpga_core_uut.cbx_2__1_.ccff_tail,
    fpga_core_uut.sb_1__1_.ccff_tail,
    fpga_core_uut.cbx_1__1_.ccff_tail,
    fpga_core_uut.sb_0__1_.ccff_tail,
    fpga_core_uut.cby_0__1_.ccff_tail,
    fpga_core_uut.grid_io_left_0__1_.ccff_tail,
    fpga_core_uut.grid_clb_1__1_.ccff_tail,
    fpga_core_uut.cby_1__1_.ccff_tail,
    fpga_core_uut.grid_clb_2__1_.ccff_tail,
    fpga_core_uut.cby_2__1_.ccff_tail,
    fpga_core_uut.grid_io_right_3__1_.ccff_tail,
    fpga_core_uut.sb_2__0_.ccff_tail,
    fpga_core_uut.cbx_2__0_.ccff_tail,
    fpga_core_uut.grid_io_bottom_2__0_.ccff_tail,
    fpga_core_uut.sb_1__0_.ccff_tail,
    fpga_core_uut.cbx_1__0_.ccff_tail,
    fpga_core_uut.grid_io_bottom_1__0_.ccff_tail,
    fpga_core_uut.sb_0__0_.ccff_tail,
    ccff_tail_pad,
    ccff_tail);
end


