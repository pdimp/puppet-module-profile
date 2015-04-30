# changes the permissions for iMessages app
class profile::mac_settings::block_imessages {
  file { "/Applications/Messages.app/Contents/MacOS/Messages":
    mode => 700,
  }
}
