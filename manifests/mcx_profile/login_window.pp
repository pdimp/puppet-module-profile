# This class applies a profile to manage the login window text
# on Mac OS X Workstations
class profile::mcx_profile::login_window (
  $ensure = 'present',
  $loginwindowtext='NONE'
) {
  mac_profiles_handler::manage { 'edu.whitby.profile.loginwindowtext':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.loginwindowtext.erb'),
  type        => 'template',
  }
}
