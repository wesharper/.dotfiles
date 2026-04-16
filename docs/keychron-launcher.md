# Fix WebHID connection for Keychron

1. run `lsusb` to check product + vendor ID
1. Enable Web Platform features in Chromium
   - Go to: `chrome://flags/#enable-experimental-web-platform-features`
   - Set to: Enabled
   - Relaunch Chromium
1. Add `udev` rules file at `/etc/udev/rules.d/50-keychron.rules`
1. Reload
   - `sudo udevadm control --reload-rules && sudo udevadm trigger`

## Example Rules File

```txt
SUBSYSTEM=="hidraw*", MODE="0666", TAG+="uaccess", TAG+="udev-acl"
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTR{idVendor}=="13364", ATTR{idProduct}=="2064", MODE:="0660", TAG+="uaccess"
```
