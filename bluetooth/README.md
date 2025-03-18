## Dual Boot Bluetooth

https://gist.github.com/madkoding/f3cfd3742546d5c99131fd19ca267fd4

1. Pair in Linux First
2. Pair in Windows
3. Return to Linux

```bash
# Terminal 1

su
cd /var/lib/bluetooth/
ls
# this is the paired record in Linux
# find out here is 48:89:E7:C6:3C:56/F4:73:35:72:C2:49
cd 48:89:E7:C6:3C:56/F4:73:35:72:C2:49
```

```bash
# Terminal 2

sudo apt-get install chntpw
cd /[MountedDrive]/Windows/System32/config
chntpw -e SYSTEM
cd \ControlSet001\Services\BTHPORT\Parameters\Keys

# this is the paired record in Windows
# find out the same device
ls
cd 4889e7c63c56
ls
hex f4733572c249
# 75 59 6B 54 47 87 16 FE 94 78 5F 86 10 5E 99 B0
```

```bash
# Terminal 1

# Change the record in Linux, to be the same as Windows record
nano info
# Replace the Key value in the [LinkKey] section with the pairing key from Windows.
# [LinkKey]
# Key=75596B54478716FE94785F86105E99B0

sudo service bluetooth restart
```

## 蓝牙莫名其妙就不能连了

`sudo rfkill unblock all`

## 蓝牙耳机可以pair，却无法connect

https://askubuntu.com/questions/1020257/bluez5-cannot-connect-to-a-paired-bluetooth-device-on-ubuntu-17-10

```
[CHG] Device FC:58:FA:A1:C2:70 ServicesResolved: yes
[CHG] Device FC:58:FA:A1:C2:70 Paired: yes
Pairing successful
[CHG] Device FC:58:FA:A1:C2:70 ServicesResolved: no
[CHG] Device FC:58:FA:A1:C2:70 Connected: no
[CHG] Controller 6C:0B:84:27:43:66 Discoverable: no
[bluetooth]# connect FC:58:FA:A1:C2:70 
Attempting to connect to FC:58:FA:A1:C2:70
Failed to connect: org.bluez.Error.Failed
```

`sudo apt install pulseaudio-module-bluetooth`
