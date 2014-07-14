# This class creates an entry in /etc/hosts and configures
# www.google.com to point to nosslsearch.google.com
# This step is necessary in order to enforce Safe Search,
# which must not be encrypted.

class profile::network_settings::google_nosslsearch (
  $ensure = 'present'
) {
  host { 'www.google.com':
    ensure => $ensure,
    ip     => $::nosslsearch_ip_address,
    target => '/etc/hosts',
    notify => Exec["flushdnscache"],
  }
  exec { 'flushdnscache':
    command     => "/usr/bin/dscacheutil -flushcache",
    refreshonly => true,
  }
}
