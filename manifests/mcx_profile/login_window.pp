class profile::mcx_profile::login_window ($ensure = 'present',$loginwindowtext="") {
  mac_profiles_handler::manage { 'edu.whitby.profile.loginwindowtext':
  ensure      => $ensure,
  file_source => template('profile/mcx_profile/edu.whitby.profile.loginwindowtext.erb'),
  type        => 'template',
  }
}
