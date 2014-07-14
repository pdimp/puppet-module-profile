# This class applies a profile to manage ManagedInstalls(munki) preferences
# on Mac OS X Workstations
class profile::mcx_profile::managed_installs (
  $ensure = 'present',
  $SoftwareUpdateServerURL = "http://sus"
) {
  mac_profiles_handler::manage { 'edu.whitby.profile.ManagedInstalls':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.ManagedInstalls.erb'),
  type        => 'template',
  }
}

