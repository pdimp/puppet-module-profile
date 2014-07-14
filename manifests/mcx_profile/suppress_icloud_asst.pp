# This class applies a profile to suppress the iCloud Assistant
# on Mac OS X Workstations
class profile::mcx_profile::suppress_icloud_asst (
  $ensure = 'present',
) {
  mac_profiles_handler::manage { 'suppress_icloud_asst':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/suppress_icloud_asst.erb'),
  type        => 'template',
  }
}

