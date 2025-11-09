# Auto-mounting Additional Drives

Typically, when I add storage to my machine, I want it to be mounted and
unencrypted once the boot drive is unlocked with the LUKS passcode.

Start by generating a secure keyfile. This will overwrite an existing keyfile,
so backup old keyfiles or guard against overwriting.

```sh
# generate a 32 byte string and store in /root/lukskey
sudo dd if=/dev/urandom bs=32 count=1 of=/root/lukskey status=none

# only allow access by owner
sudo chmod 0400 /root/lukskey

# ensure root user is the owner
sudo chown root:root /root/lukskey
```

Now, find the name of the secondary drive to auto-mount.

```sh
sudo lsblk -f
```

If the secondary drive hasn't already been formatted appropriately, or was used
in a different machine, wipe the filesystem and format the disk. Be extremely
careful that you have the correct drive name.

```sh
# Replace "nvme1n1" with the device name from the prior step
# if you don't check this, you will most certainly have a bad time
device_name=/dev/nvme1n1
sudo wipefs -a "$device_name"

# Encrypt and format the drive using the keyfile from earlier
# only do this if you want to dedicate the entire device to LUKS
# otherwise, use fdisk to create a partition
sudo cryptsetup luksFormat "$device_name" /root/lukskey
```

To check if this worked, run `sudo lsblk -f` again. The device's filesystem
should be listed as `crypto_LUKS`.

Now that the device is formatted, we can open the LUKS container using the
keyfile and setup a filesystem that can be auto-mounted once the device is
unlocked.

```sh
# when we open the LUKS container, a new virtual device will be created at `/dev/mapper/<virtual_device_name>`
# this virtual device will be removed once the LUKS container is closed

# this will be the name of the virtual device as well as its new filesystem
new_drive_name=alt_a

# unlock the LUKS device
sudo cryptsetup open --key-file /root/lukskey "$device_name" "$new_drive_name"

# create an ext4 filesystem on the data volume
# -m 0 sets aside 0% capacity for other file systems
sudo mkfs.ext4 -m 0 /dev/mapper/"$new_drive_name"

# Set owner to current user
current_user="$(whoami)"
sudo chown -R "$current_user":"$current_user" /mnt/"$new_drive_name"

# use this to wipe the filesystem and change config if needed
# sudo dd if=/dev/zero of=/dev/mapper/"$new_drive_name" bs=1M count=100

# setup a mount point from the primary drive
sudo mkdir -p /mnt/"$new_drive_name"

# mount the new filesystem from the mount point
sudo mount /dev/mapper/"$new_drive_name" /mnt/"$new_drive_name"

# check that the mounted filesystem looks good
# copy the UUID of the luks device AND the new filesystem
sudo lsblk -f

# unmount the drive
sudo umount /mnt/"$new_drive_name"

# close the LUKS container
sudo cryptsetup close "$new_drive_name"
```

Now that our drive is configured and its filesystem mountable, we need to edit
`/etc/crypttab` and `/etc/fstab` to unlock the device and mount the filesystem,
respectively.

```sh
# /etc/crypttab
<new_drive_name> UUID=<LUKS_device_uuid> /root/lukskey luks
```

```sh
# /etc/fstab
UUID=<filesystem_uuid> /mnt/<new_drive_name> ext4 defaults 0 0
```

That's it! Reboot and see what happens!
