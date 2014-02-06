# == Class: haveged::params
#
# This class handles the environment parameters.
#
class haveged::params {
  $env_path = '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

  case $::lsbdistcodename {
    'squeeze': {
      $pkg_name = 'haveged'

      exec {'install-squeeze-backports':
        command => 'echo "deb http://ftp.de.debian.org/debian-backports squeeze-backports main" > /etc/apt/sources.list.d/debian_squeeze_backports.list && apt-get update',
        onlyif  => '[[ `grep -r "squeeze-backports" /etc/apt | wc -l` -eq 0 ]]',
        path    => $env_path,
        timeout => 0,
      }
    }
    'wheezy', 'jessie': {
      $pkg_name = 'haveged'
    }
    default: {
      fail("\"${module_name}\" provides no package default value
for \"${::lsbdistcodename}\"")
    }
  }
}