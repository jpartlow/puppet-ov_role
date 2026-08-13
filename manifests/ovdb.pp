class ov_role::ovdb(
  Boolean $install_postgres = false,
) {
  contain 'ov_profile::agent'
  contain 'ov_profile::ovdb'
  Class['ov_profile::agent'] -> Class['ov_profile::ovdb']
  if $install_postgres {
    contain 'ov_profile::postgres'
    Class['ov_profile::postgres'] -> Class['ov_profile::ovdb']
    Class['ov_profile::agent'] -> Class['ov_profile::postgres']
  }
}
