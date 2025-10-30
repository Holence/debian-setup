# Install Debian 13

after a pure install (without Desktop Environment)

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

## Softwares

`bash install.sh` to install all the softwares.

- dwm + dmenu + slock

- shell: fish
- terminal: xfce4-terminal
- file explorer: thunar

- theme: Nordic-darker
- icon: MoreWaita
- cursor: StrongholdCursor

- input method: ibus-rime
- vpn: strongswan

- file search: fsearch
- browser: yandex-browser
- text editor: sublime

- image: xnview + gimp
- music: wait for AIMP
- video: smplayer
- screenshot: xfce4-screenshooter
- downloader: qbittorrent
- recorder: peek/obs
- pdf: evince
- office: **TODO**

# Other

## install without network

manually modify network interfaces

```
/etc/network/interfaces
        auto enp3s0
        iface enp3s0 inet dhcp
systemctl restart networking.service
```

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

## Steam Proton with NTFS

<https://www.reddit.com/r/linux_gaming/comments/wc6wzj/correctly_mount_ntfs_for_steam_proton_games/>

**Avoid using NTFS with Steam on Linux. It's really not recommended.**

0. Add your ntfs Storage
  - Settings -> Storage -> Add Driver -> Select a directory that has "steamapps"
1. Look for a directory called "compatdata" under ~/.steam.
  - It'll probably take some digging, as it's often buried in something like ~/.steam/steam/steamapps . . .
2. Make a symbolic link from that folder to the identical location on the NTFS Steam Library.
  - delete /path/to/ntfs/SteamLibrary/compatdata
  - `ln -s ~/.steam/foo/bar/compatdata /path/to/ntfs/SteamLibrary/compatdata`
3. Watch and be amazed at Proton's "It just works"-ness!

## X11 screen tearing

- smplayer preference, "General" -> "Video" -> "Output Driver = vdpau", "Performance" -> "Hardware Decoding = vdapu"
- or nvidia-setting, "X Server Display Configuration" -> "Advanced..." -> "Force Composition Pipeling"

## High DPI

```sh
# tty font
sudo dpkg-reconfigure console-setup

# add these in .xsession
export GDK_SCALE=2
export QT_SCALE_FACTOR=2
```

## Disabling touchpad/keyboard as wakeup source

follow this: [How to prevent TrackPoint or touchpad events from waking up ThinkPad T14 Gen 5 AMD from suspend | Nobuto Murata](https://nobuto-m.github.io/post/2025/how-to-prevent-trackpoint-events-from-waking-up-thinkpad-t14-gen-5-amd-from-suspend)

```sh
$ sudo nano /etc/udev/rules.d/99-local-disable-wakeup-events.rules
KERNEL=="i2c-ELAN06E8:00", SUBSYSTEM=="i2c", DRIVERS=="i2c_hid_acpi", ATTR{power/wakeup}="disabled"
KERNEL=="serio0", SUBSYSTEM=="serio", DRIVERS=="atkbd", ATTR{power/wakeup}="disabled"
$ sudo udevadm control --reload && sudo udevadm trigger
```

## Update Firmware

```
sudo apt install fwupd
sudo fwupdmgr refresh
sudo fwupdmgr get-updates
sudo fwupdmgr update
```
