# Enable/disable Gatekeeper
# on OS X Workstations
#
class profile::mac_settings::gatekeeper (
  $status = 'disable',
) {
  exec {'gatekeeper-master':
    command => "/usr/sbin/spctl --master-$status",
    unless  => "/usr/sbin/spctl --status | grep \"assessments ${status}d\"",
  }
}
