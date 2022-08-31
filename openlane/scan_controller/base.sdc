# Create main clock
create_clock [get_ports $::env(CLOCK_PORT)]  -name $::env(CLOCK_PORT)  -period $::env(CLOCK_PERIOD)

# Create our generated clock
create_generated_clock -edges {3 5 7} -source $::env(CLOCK_PORT) -name clk_scan_out [get_ports scan_clk_out]
set_multicycle_path -start -hold -from [get_clocks $::env(CLOCK_PORT)] -to [get_clocks clk_scan_out] 1

# Create feedback clock
create_clock [get_ports scan_clk_in] -name clk_scan_in -period [expr {$::env(CLOCK_PERIOD) * 2}]

# CDC
set_min_delay 0.25                              -from [get_clocks clk_scan_in] -to [get_clocks $::env(CLOCK_PORT)]
set_max_delay [expr {$::env(CLOCK_PERIOD) / 2}] -from [get_clocks clk_scan_in] -to [get_clocks $::env(CLOCK_PORT)]

# IO delays

	# Scan chain input  0.5 ns setup time, 0.5 ns hold time
set_input_delay  -min  0.5 -clock [get_clocks clk_scan_in]  [get_ports {scan_data_in}]
set_input_delay  -max  0.5 -clock [get_clocks clk_scan_in]  [get_ports {scan_data_in}]

	# Scan chain output 1.5 ns setup time, 1.5 ns hold time
set_output_delay -min -1.5 -clock [get_clocks clk_scan_out] [get_ports {scan_data_out}]
set_output_delay -max  1.5 -clock [get_clocks clk_scan_out] [get_ports {scan_data_out}]

	# Limit the max output delay on other outputs
set_output_delay -max  1.5 -clock [get_clocks $::env(CLOCK_PORT)] [get_ports {scan_select scan_latch_en}]

	# All the other IOs we consider asynchronous so ... no point in constraining
set_false_path -from [get_ports {active_select inputs set_clk_div la_* driver_sel}]


# Misc
set_max_fanout $::env(SYNTH_MAX_FANOUT) [current_design]

if { ![info exists ::env(SYNTH_CLK_DRIVING_CELL)] } {
    set ::env(SYNTH_CLK_DRIVING_CELL) $::env(SYNTH_DRIVING_CELL)
}

if { ![info exists ::env(SYNTH_CLK_DRIVING_CELL_PIN)] } {
    set ::env(SYNTH_CLK_DRIVING_CELL_PIN) $::env(SYNTH_DRIVING_CELL_PIN)
}

set_driving_cell -lib_cell $::env(SYNTH_DRIVING_CELL) -pin $::env(SYNTH_DRIVING_CELL_PIN) [get_ports {}]
set_driving_cell -lib_cell $::env(SYNTH_CLK_DRIVING_CELL) -pin $::env(SYNTH_CLK_DRIVING_CELL_PIN) [get_ports {}]

set cap_load [expr $::env(SYNTH_CAP_LOAD) / 1000.0]
puts "\[INFO\]: Setting load to: $cap_load"
set_load  $cap_load [all_outputs]

puts "\[INFO\]: Setting clock uncertainity to: $::env(SYNTH_CLOCK_UNCERTAINITY)"
set_clock_uncertainty $::env(SYNTH_CLOCK_UNCERTAINITY) [get_clocks "$::env(CLOCK_PORT) clk_scan_in clk_scan_out"]

puts "\[INFO\]: Setting clock transition to: $::env(SYNTH_CLOCK_TRANSITION)"
set_clock_transition $::env(SYNTH_CLOCK_TRANSITION) [get_clocks "$::env(CLOCK_PORT) clk_scan_in clk_scan_out"]

puts "\[INFO\]: Setting timing derate to: [expr {$::env(SYNTH_TIMING_DERATE) * 10}] %"
set_timing_derate -early [expr {1-$::env(SYNTH_TIMING_DERATE)}]
set_timing_derate -late [expr {1+$::env(SYNTH_TIMING_DERATE)}]
