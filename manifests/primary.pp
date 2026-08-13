class ov_role::primary(
  Boolean $install_ovdb     = true,
  Boolean $install_postgres = true,
) {
  contain 'ov_profile::server'
  if $install_ovdb {
    contain 'ov_profile::ovdb'
    Class['ov_profile::ovdb'] -> Class['ov_profile::server']
  }
  if $install_postgres {
    contain 'ov_profile::postgres'
    if $install_ovdb {
      Class['ov_profile::postgres'] -> Class['ov_profile::ovdb']
    }
  }
}
