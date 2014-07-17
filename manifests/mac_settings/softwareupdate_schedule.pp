# Turns IPv6 WiFi settings on/off.
# Off by default.
class profile::mac_settings::softwareupdate_schedule (
  $sched = 'off'
) {
  exec {"softwareupdateoff":
    command => "/usr/sbin/softwareupdate --schedule $sched",
    unless  => "/usr/sbin/softwareupdate --schedule | grep \"Automatic check is $sched\""
  }
}

