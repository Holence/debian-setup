```sh
sudo apt-get install build-essential gcc-multilib dkms

# disable Nouveau
sudo cp nvidia-installer-disable-nouveau.conf /etc/modprobe.d/nvidia-installer-disable-nouveau.conf
sudo update-initramfs -u
reboot

# Manual Driver Search https://www.nvidia.com/en-us/drivers/
# download .run file
# in tty (without X server)
sudo bash NVIDIA-Linux-x86_64-550.144.03.run

# checking
nvidia-smi
```
