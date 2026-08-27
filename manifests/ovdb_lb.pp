# Base role for an openvoxdb load balancer.
#
# Requires that ov_profile::lb::members has been set in Hiera data.
class ov_role::ovdb_lb {
  contain 'ov_profile::agent'
  class { 'ov_profile::lb':
    type => 'ovdb',
  }
  contain 'ov_profile::lb'
}
