
set_property ASYNC_REG TRUE \
  [get_cells -hier {*cdc_sync_stage1_reg*}] \
  [get_cells -hier {*cdc_sync_stage2_reg*}]

set_property ASYNC_REG TRUE \
  [get_cells -hier {*tdd_sync_m1_reg*}] \
  [get_cells -hier {*tdd_sync_m2_reg*}] \
  [get_cells -hier {*tdd_sync_m3_reg*}]
set_false_path -to [get_cells -hierarchical * -filter {NAME=~*i_sync_gen/tdd_sync_m1_reg}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_burst_count_reg[*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_counter/tdd_burst_count_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_startup_delay_reg[*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_counter/tdd_startup_delay_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_frame_length_reg[*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_counter/tdd_frame_length_reg[*]}]



set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_channel_pol_reg[*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_channel/ch_pol_reg}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/*up_tdd_channel_on_reg[*][*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_channel/t_high_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/*up_tdd_channel_off_reg[*][*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_channel/t_low_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_enable_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_control_sync/cdc_sync_stage1_reg[0]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_sync_rst_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_control_sync/cdc_sync_stage1_reg[1]}]


set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_sync_ext_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_control_sync/cdc_sync_stage1_reg[3]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/up_tdd_channel_en_reg[*]}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_ch_en_sync/cdc_sync_stage1_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_cstate_sync/cdc_hold_reg*}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_cstate_sync/out_data_reg*}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_cstate_sync/in_toggle_d1_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_cstate_sync/i_sync_out/cdc_sync_stage1_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_cstate_sync/out_toggle_d1_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_cstate_sync/i_sync_in/cdc_sync_stage1_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_soft_sync/in_toggle_d1_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_soft_sync/i_sync_out/cdc_sync_stage1_reg[*]}]

set_false_path \
  -from [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_soft_sync/out_toggle_d1_reg}] \
  -to [get_cells -hierarchical * -filter {NAME=~*i_regmap/i_tdd_soft_sync/i_sync_in/cdc_sync_stage1_reg[*]}]

