class profile::puppet::custom_facts (
  $factpath = "/var/lib/puppet/lib/facter",
  $environment = "master",
) {
  file {"$factpath":
    source  => "file:/etc/pupppet/environments/$environment/modules/mac_facts/lib/facter",
    recurse => true,
    purge   => true,
  }
}
