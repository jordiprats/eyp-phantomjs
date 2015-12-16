#
class phantomjs($basepath="/usr/local/bin") inherits phantomjs::params  {

  package { 'libicu52':
    ensure => 'installed',
  }

  file { "${basepath}/phantomjs":
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    source  => "puppet:///modules/${module_name}/phantomjs",
    require => Package['libicu52'],
  }
}
