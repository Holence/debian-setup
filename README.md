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
