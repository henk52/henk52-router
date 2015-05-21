# == Class: router
#
# Full description of class router here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { router:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2011 Your name here, unless otherwise noted.
#
class router {

network::if::static { 'eth0':
  ensure    => 'up',
  ipaddress => '192.168.0.200',
  netmask   => '255.255.255.0',
  gateway   => '192.168.0.1',
  peerdns   => true,
  dns1      => '8.8.8.8',
  dns2      => '8.8.4.4',
}

network::if::static { 'eth1':
  ensure    => 'up',
  ipaddress => '192.168.1.1',
  netmask   => '255.255.255.0',
}

}
