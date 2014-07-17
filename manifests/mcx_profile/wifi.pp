class profile::mcx_profile::wifi (
  $ensure = 'present',
  $ssid = 'NONE',
  $password = 'NONE'
) {
  mac_profiles_handler::manage { 'com.apple.mdm.od1.wifi.net.0bd012e0-ea71-0130-fcc9-002436f4cf08.alacarte':
  ensure  => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.wifi.erb'),
  type        => 'template',
  }
}

