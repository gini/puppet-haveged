# == Class: haveged::install
#
# Install the haveged package.
#
class haveged::install {
  package { $pkg_name:
    ensure => $haveged::version,
  }
}
