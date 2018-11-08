defmodule Farmbot.Firmware.Param do
  @moduledoc "decodes/encodes integer id to name and vice versa"

  @type t() :: atom()

  @doc "Decodes an integer paramater id to a atom paramater name"
  def decode(paramater_id)
  def decode(2), do: :param_config_ok
  def decode(3), do: :param_use_eeprom
  def decode(4), do: :param_e_stop_on_mov_err
  def decode(5), do: :param_mov_nr_retry
  def decode(11), do: :movement_timeout_x
  def decode(12), do: :movement_timeout_y
  def decode(13), do: :movement_timeout_z
  def decode(15), do: :movement_keep_active_x
  def decode(16), do: :movement_keep_active_y
  def decode(17), do: :movement_keep_active_z
  def decode(18), do: :movement_home_at_boot_x
  def decode(19), do: :movement_home_at_boot_y
  def decode(20), do: :movement_home_at_boot_z
  def decode(21), do: :movement_invert_endpoints_x
  def decode(22), do: :movement_invert_endpoints_y
  def decode(23), do: :movement_invert_endpoints_z
  def decode(25), do: :movement_enable_endpoints_x
  def decode(26), do: :movement_enable_endpoints_y
  def decode(27), do: :movement_enable_endpoints_z
  def decode(31), do: :movement_invert_motor_x
  def decode(32), do: :movement_invert_motor_y
  def decode(33), do: :movement_invert_motor_z
  def decode(36), do: :movement_secondary_motor_x
  def decode(37), do: :movement_secondary_motor_invert_x
  def decode(41), do: :movement_steps_acc_dec_x
  def decode(42), do: :movement_steps_acc_dec_y
  def decode(43), do: :movement_steps_acc_dec_z
  def decode(45), do: :movement_stop_at_home_x
  def decode(46), do: :movement_stop_at_home_y
  def decode(47), do: :movement_stop_at_home_z
  def decode(51), do: :movement_home_up_x
  def decode(52), do: :movement_home_up_y
  def decode(53), do: :movement_home_up_z
  def decode(55), do: :movement_step_per_mm_x
  def decode(56), do: :movement_step_per_mm_y
  def decode(57), do: :movement_step_per_mm_z
  def decode(61), do: :movement_min_spd_x
  def decode(62), do: :movement_min_spd_y
  def decode(63), do: :movement_min_spd_z
  def decode(65), do: :movement_home_spd_x
  def decode(66), do: :movement_home_spd_y
  def decode(67), do: :movement_home_spd_z
  def decode(71), do: :movement_max_spd_x
  def decode(72), do: :movement_max_spd_y
  def decode(73), do: :movement_max_spd_z
  def decode(101), do: :encoder_enabled_x
  def decode(102), do: :encoder_enabled_y
  def decode(103), do: :encoder_enabled_z
  def decode(105), do: :encoder_type_x
  def decode(106), do: :encoder_type_y
  def decode(107), do: :encoder_type_z
  def decode(111), do: :encoder_missed_steps_max_x
  def decode(112), do: :encoder_missed_steps_max_y
  def decode(113), do: :encoder_missed_steps_max_z
  def decode(115), do: :encoder_scaling_x
  def decode(116), do: :encoder_scaling_y
  def decode(117), do: :encoder_scaling_z
  def decode(121), do: :encoder_missed_steps_decay_x
  def decode(122), do: :encoder_missed_steps_decay_y
  def decode(123), do: :encoder_missed_steps_decay_z
  def decode(125), do: :encoder_use_for_pos_x
  def decode(126), do: :encoder_use_for_pos_y
  def decode(127), do: :encoder_use_for_pos_z
  def decode(131), do: :encoder_invert_x
  def decode(132), do: :encoder_invert_y
  def decode(133), do: :encoder_invert_z
  def decode(141), do: :movement_axis_nr_steps_x
  def decode(142), do: :movement_axis_nr_steps_y
  def decode(143), do: :movement_axis_nr_steps_z
  def decode(145), do: :movement_stop_at_max_x
  def decode(146), do: :movement_stop_at_max_y
  def decode(147), do: :movement_stop_at_max_z
  def decode(201), do: :pin_guard_1_pin_nr
  def decode(202), do: :pin_guard_1_time_out
  def decode(203), do: :pin_guard_1_active_state
  def decode(205), do: :pin_guard_2_pin_nr
  def decode(206), do: :pin_guard_2_time_out
  def decode(207), do: :pin_guard_2_active_state
  def decode(211), do: :pin_guard_3_pin_nr
  def decode(212), do: :pin_guard_3_time_out
  def decode(213), do: :pin_guard_3_active_state
  def decode(215), do: :pin_guard_4_pin_nr
  def decode(216), do: :pin_guard_4_time_out
  def decode(217), do: :pin_guard_4_active_state
  def decode(221), do: :pin_guard_5_pin_nr
  def decode(222), do: :pin_guard_5_time_out
  def decode(223), do: :pin_guard_5_active_state
  def decode(_), do: :unknown_paramater

  @doc "Encodes an atom paramater name to an integer paramater id."
  def encode(paramater)
  def encode(:param_config_ok), do: 2
  def encode(:param_use_eeprom), do: 3
  def encode(:param_e_stop_on_mov_err), do: 4
  def encode(:param_mov_nr_retry), do: 5
  def encode(:movement_timeout_x), do: 11
  def encode(:movement_timeout_y), do: 12
  def encode(:movement_timeout_z), do: 13
  def encode(:movement_keep_active_x), do: 15
  def encode(:movement_keep_active_y), do: 16
  def encode(:movement_keep_active_z), do: 17
  def encode(:movement_home_at_boot_x), do: 18
  def encode(:movement_home_at_boot_y), do: 19
  def encode(:movement_home_at_boot_z), do: 20
  def encode(:movement_invert_endpoints_x), do: 21
  def encode(:movement_invert_endpoints_y), do: 22
  def encode(:movement_invert_endpoints_z), do: 23
  def encode(:movement_enable_endpoints_x), do: 25
  def encode(:movement_enable_endpoints_y), do: 26
  def encode(:movement_enable_endpoints_z), do: 27
  def encode(:movement_invert_motor_x), do: 31
  def encode(:movement_invert_motor_y), do: 32
  def encode(:movement_invert_motor_z), do: 33
  def encode(:movement_secondary_motor_x), do: 36
  def encode(:movement_secondary_motor_invert_x), do: 37
  def encode(:movement_steps_acc_dec_x), do: 41
  def encode(:movement_steps_acc_dec_y), do: 42
  def encode(:movement_steps_acc_dec_z), do: 43
  def encode(:movement_stop_at_home_x), do: 45
  def encode(:movement_stop_at_home_y), do: 46
  def encode(:movement_stop_at_home_z), do: 47
  def encode(:movement_home_up_x), do: 51
  def encode(:movement_home_up_y), do: 52
  def encode(:movement_home_up_z), do: 53
  def encode(:movement_step_per_mm_x), do: 55
  def encode(:movement_step_per_mm_y), do: 56
  def encode(:movement_step_per_mm_z), do: 57
  def encode(:movement_min_spd_x), do: 61
  def encode(:movement_min_spd_y), do: 62
  def encode(:movement_min_spd_z), do: 63
  def encode(:movement_home_spd_x), do: 65
  def encode(:movement_home_spd_y), do: 66
  def encode(:movement_home_spd_z), do: 67
  def encode(:movement_max_spd_x), do: 71
  def encode(:movement_max_spd_y), do: 72
  def encode(:movement_max_spd_z), do: 73
  def encode(:encoder_enabled_x), do: 101
  def encode(:encoder_enabled_y), do: 102
  def encode(:encoder_enabled_z), do: 103
  def encode(:encoder_type_x), do: 105
  def encode(:encoder_type_y), do: 106
  def encode(:encoder_type_z), do: 107
  def encode(:encoder_missed_steps_max_x), do: 111
  def encode(:encoder_missed_steps_max_y), do: 112
  def encode(:encoder_missed_steps_max_z), do: 113
  def encode(:encoder_scaling_x), do: 115
  def encode(:encoder_scaling_y), do: 116
  def encode(:encoder_scaling_z), do: 117
  def encode(:encoder_missed_steps_decay_x), do: 121
  def encode(:encoder_missed_steps_decay_y), do: 122
  def encode(:encoder_missed_steps_decay_z), do: 123
  def encode(:encoder_use_for_pos_x), do: 125
  def encode(:encoder_use_for_pos_y), do: 126
  def encode(:encoder_use_for_pos_z), do: 127
  def encode(:encoder_invert_x), do: 131
  def encode(:encoder_invert_y), do: 132
  def encode(:encoder_invert_z), do: 133
  def encode(:movement_axis_nr_steps_x), do: 141
  def encode(:movement_axis_nr_steps_y), do: 142
  def encode(:movement_axis_nr_steps_z), do: 143
  def encode(:movement_stop_at_max_x), do: 145
  def encode(:movement_stop_at_max_y), do: 146
  def encode(:movement_stop_at_max_z), do: 147
  def encode(:pin_guard_1_pin_nr), do: 201
  def encode(:pin_guard_1_time_out), do: 202
  def encode(:pin_guard_1_active_state), do: 203
  def encode(:pin_guard_2_pin_nr), do: 205
  def encode(:pin_guard_2_time_out), do: 206
  def encode(:pin_guard_2_active_state), do: 207
  def encode(:pin_guard_3_pin_nr), do: 211
  def encode(:pin_guard_3_time_out), do: 212
  def encode(:pin_guard_3_active_state), do: 213
  def encode(:pin_guard_4_pin_nr), do: 215
  def encode(:pin_guard_4_time_out), do: 216
  def encode(:pin_guard_4_active_state), do: 217
  def encode(:pin_guard_5_pin_nr), do: 221
  def encode(:pin_guard_5_time_out), do: 222
  def encode(:pin_guard_5_active_state), do: 223
end
