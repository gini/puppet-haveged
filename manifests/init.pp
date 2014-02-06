# == Class: haveged
#
# A basic module to manage haveged
#
# === Parameters
# [*version*]
#   The version of the haveged package to install
#
# [*enable*]
#   Should the service be enabled during boot time?
#
# [*start*]
#   Should the service be started by Puppet
class haveged(
  $version         = 'present',
  $enable          = true,
  $start           = true,
  ) inherits haveged::params {

  class{'haveged::install': } ->
  class{'haveged::config': } ~>
  class{'haveged::service': } ->
  Class['haveged']
}
