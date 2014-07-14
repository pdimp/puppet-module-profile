# This class applies a profile to turn App store updates on/off
# on Mac OS X Workstations
class profile::mcx_profile::software_update (
  $ensure = 'present',
) {
  mac_profiles_handler::manage { 'edu.whitby.profile.software_update':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.software_update.erb'),
  type        => 'template',
  }
}
