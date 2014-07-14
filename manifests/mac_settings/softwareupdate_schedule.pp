# Turns IPv6 WiFi settings on/off.
# Off by default.
class profile::mac_settings::softwareupdate_schedule (
  $schedule = 'off'
) {
  exec {"softwareupdateoff":
    command => "/usr/sbin/softwareupdate --schedule $schedule",
    unless  => "/usr/sbin/softwareupdate --schedule | grep \"is $schedule\""
  }
}

