# Omarchy Bluetooth Troubleshooting

Helpful log filters:

- `sudo journalctl | grep -i blue`
- `sudo journalctl | grep -i btusb` - useful if it is known to be Bluetooth over
  USB
- `sudo journalctl | grep -i hci0`

## Known Issues

- `Bluetooth service was skipped because of an unmet condition check (ConditionPathIsDirectory=/sys/class/bluetooth).`
  - Shut down the system and unplug the computer for 15 seconds

## Additional Tips

- Check that the "XHCI Handoff" feature is enabled in the UEFI config
