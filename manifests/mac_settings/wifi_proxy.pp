# Configures the proxy settings to point to a pac file.
# Sets the url to blank by default.
class profile::mac_settings::wifi_proxy (
  $state = "off",
  $autoproxyurl = ' '
) {
  exec {'autoproxyurl':
    command => "/usr/sbin/networksetup -setautoproxyurl wi-fi $autoproxyurl",
  }
  exec {'autoproxy':
    command => "/usr/sbin/networksetup -setproxyautodiscovery wi-fi $state",
  }
  exec {'autoproxystate':
    command => "/usr/sbin/networksetup -setautoproxystate wi-fi $state",
  }
}

