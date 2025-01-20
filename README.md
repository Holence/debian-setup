# Install Debian

after a pure install (without Desktop Environment)

install `sudo`

```sh
su

# install sudo
# if you see "meaid change: please insert the disc labled", remove the "cdrom" line in /etc/apt/sources.list
apt install sudo

# add yourself into sudo group
sudo usermod -a -G sudo USERNAME

# optional: skip grub
nano /etc/default/grub
# set GRUB_TIMEOUT=0
sudo update-grub

# reboot
systemctl reboot
```

then `. install.sh` to install all the softwares.

## Drivers

- Nvidia Driver: https://wiki.debian.org/NvidiaGraphicsDrivers

## TODO

- screenshot
- fsearch

# Other

## QT ERROR

`qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.`

```sh
export QT_DEBUG_PLUGINS=1
xnview
# Cannot load library /opt/XnView/lib/platforms/libqxcb.so: (libxcb-icccm.so.4: cannot open shared object file:   > No such file or directory)
ldd /opt/XnView/lib/platforms/libqxcb.so | grep "not found"
libxcb-icccm.so.4 => not found
libxcb-keysyms.so.1 => not found
libxcb-icccm.so.4 => not found
libxcb-keysyms.so.1 => not found
sudo apt install "these lib"
```
