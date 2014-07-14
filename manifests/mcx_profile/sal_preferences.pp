# This class applies a profile to manage the preferences for Sal
# on Mac OS X Workstations
class profile::mcx_profile::sal_preferences (
  $ensure = 'present',
  $homepage="",
  $server_url="http://sal",
  $key=""
) {
  mac_profiles_handler::manage { 'edu.whitby.profile.sal_preferences':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.sal_preferences.erb'),
  type        => 'template',
  }
}

