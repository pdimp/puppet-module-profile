# This class applies a profile to manage the login window text
# on Mac OS X Workstations
class profile::mcx_profile::login_window (
  $ensure = 'present',
) {
  mac_profiles_handler::manage { 'edu.whitby.profile.software_update':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.software_update.erb'),
  type        => 'template',
  }
}
