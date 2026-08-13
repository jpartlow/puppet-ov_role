class ov_role::postgres() {
  contain 'ov_profile::agent'
  contain 'ov_profile::postgres'
  Class['ov_profile::agent'] -> Class['ov_profile::postgres']
}
