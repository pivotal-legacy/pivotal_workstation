node.default['bash_it'] ={
  'enabled_plugins' => {
    'aliases'    => %w[general],
    'completion' => %w[defaults git],
    'plugins'    => %w[ssh]
  },
  'custom_plugins' => %w[
    bash_it/custom/disable_ctrl-s_output_control.bash
    bash_it/custom/enable_ctrl-o_history_execution.bash
    bash_it/custom/history_settings.bash
    bash_it/custom/ensure_usr_local_bin_first.bash
    bash_it/custom/add_user_initials_to_git_prompt_info.bash
  ],
  'theme' => 'bobby'
}
