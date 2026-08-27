# Base role for a compiler load balancer.
#
# Requires that ov_profile::lb::members has been set in Hiera data.
class ov_role::compiler_lb {
  contain 'ov_profile::agent'
  class { 'ov_profile::lb':
    type => 'compiler',
  }
  contain 'ov_profile::lb'
}
