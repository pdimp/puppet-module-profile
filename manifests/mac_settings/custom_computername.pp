# This class lets you define the hostname/computername
# in Hiera.
class profile::mac_settings::custom_computername (
  $computer_name = 'name',
  $hostname = 'whitbyschool.net'
) {

  exec {"setcomputername":
    command => "/usr/sbin/systemsetup -setcomputername $computer_name",
    unless  => "/usr/sbin/systemsetup -getcomputername | grep $computer_name ",
  }
  exec {"sethostname":
    command => "/usr/sbin/scutil --set HostName $computer_name.$hostname",
    unless  => "/usr/sbin/scutil --get HostName | grep $computer_name.$hostname",
  }
  exec {"setlocalhostname":
    command => "/usr/sbin/systemsetup -setlocalsubnetname $computer_name",
    unless  => "/usr/sbin/systemsetup -getlocalsubnetname | grep $computer_name",
  }
}
