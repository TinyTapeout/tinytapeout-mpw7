always @(*) begin
    if(driver_sel == 2'b00) begin // external driver
        assert(outputs[0]    == scan_data_in);
        assert(scan_clk      == ext_scan_clk);
        assert(scan_data_out == inputs[1]);
        assert(scan_select   == inputs[2]);
        assert(scan_latch_en == inputs[3]);
    end else
    if(driver_sel == 2'b10) begin // external driver
        assert(la_scan_data_out == scan_data_in);
        assert(scan_clk      == la_scan_clk);
        assert(scan_data_out == la_scan_data_in);
        assert(scan_select   == la_scan_select);
        assert(scan_latch_en == la_scan_latch_en);
    end else
    if(driver_sel == 2'b01) begin // internal driver
        assert(int_scan_data_out == scan_data_out);
        assert(scan_clk      == int_scan_clk);
        assert(scan_data_in  == int_scan_data_in);
        assert(scan_select   == int_scan_select);
        assert(scan_latch_en == int_scan_latch_en);
    end
end
