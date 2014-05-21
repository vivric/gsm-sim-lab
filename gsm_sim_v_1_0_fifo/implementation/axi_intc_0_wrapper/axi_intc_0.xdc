set_false_path -to [get_cells -filter {IS_SEQUENTIAL} INTC_CORE_I/*intr_sync*]
set_false_path -from [get_cells -filter {IS_SEQUENTIAL} INTC_CORE_I/*intr_sync*] -to [get_cells -filter {IS_SEQUENTIAL} INTC_CORE_I/*intr_p1*]
#cross clocking constraints between S_AXI_ACLK <-> Processor_clk
set clk_domain_a [get_clocks -of_objects [get_ports S_AXI_ACLK]]
set clk_domain_b [get_clocks -of_objects [get_ports Processor_clk]]
set_false_path -from [all_registers -clock $clk_domain_a] -to [all_registers -clock $clk_domain_b]
set_false_path -from [all_registers -clock $clk_domain_b] -to [all_registers -clock $clk_domain_a]
