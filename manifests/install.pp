# == Class: haveged::install
#
# Install the haveged package.
#
class haveged::install {
  package { 'haveged':
    ensure => $haveged::version,
  }
}
