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
