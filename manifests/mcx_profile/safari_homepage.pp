# This class applies a profile to manage the Safari homepage
# on Mac OS X Workstations
class profile::mcx_profile::safari_homepage (
  $ensure = 'present',
  $homepage=""
) {
  mac_profiles_handler::manage { 'edu.whitby.profile.safari_homepage':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.safari_homepage.erb'),
  type        => 'template',
  }
}
