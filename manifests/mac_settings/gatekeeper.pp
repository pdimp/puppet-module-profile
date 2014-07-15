# Uses the mosen/gatekeeper provider to enable/disable Gatekeeper
# on OS X Workstations
#
class profile::mac_settings::gatekeeper (
  $enable = false,
) {
  gatekeeer {"master":
    enabled => $enable,
  }
}
