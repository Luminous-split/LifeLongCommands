- Ctrl+c to skip normal booting
- loadkeys (Optional) --> (Keyboard layout)
- setfont de_CH-latin1 (can use other fonts) --> font
- setfont Lat2-Terminus16 --> font

- ls /sys/firmware/efi/efivars --> Checking for UEFI system

- pacman -S coreutils --> install required tool
  
- fdisk -l (To find vda) (pacman -S util-linux : if command not found)
- fdisk /dev/vda --> It will enter disk partition mode
#### Start of Disk Partition
- g (gpt partition)
##### New Partition
- n --> (new gpt partion)
- no 1 (+512M)
- t (to change type the type of the created partition)
- uefi --> UEFI type
- no 2 (+512)
- t (to change type)
- swap
- no 2
- t (to change type)
- linux
- w (to save)
#### End of Disk Partition
- fdisk -l (check the partitions)(Should be "EFI System 512M, Linux Swap 512M, Linux Filesystem 40G")

#### Format filesystem format to ext4(Extended filesystem)(Usually used in linux)
- mkfs.ext4 /dev/vda3 (pacman -S e2fsprogs : if command not found)
- mkfs.fat -F 32 /dev/vda1 (pacman -S dosfstools : if command not found)(will see some errors it would be ok)
- mkswap /dev/vda2 (pacman -S util-linux : if command not found)
#### End of formatting

#### Mount and swap
- mount /dev/vda3 /mnt
- mount --mkdir /dev/vda1 /mnt/boot
- swapon /dev/vda2
  
- pacman -S arch-install-scripts (optional)
- pacstrap -K /mnt base base-devel linux linux-firmware e2fsprogs dhcpcd networkmanager vim neovim man-db man-pages texinfo
- genfstab -U /mnt >> /mnt/etc/fstab
- arch-chroot /mnt ( pacman -S arch-install-scripts : if command not found)
#### End of Mount and swap
  
- ln -sf /usr/share/zoneinfo/Asia/Singapore /etc/localtime
- hwclock --systohc
- vim /etc/locale.gen ( uncomment relevent language and keyboard )
- locale-gen
- vim /etc/locale.conf (write in: LANG=en_US.UTF-8 )
- vim /etc/vconsole.conf (write in: KEYMAP=de_CH-latin1 \n FONT=Lat2-Terminus16 )
- vim /etc/hosts ( 127.0.0.1 localhost\n::1 localhost \n127.0.0.1 hostname )
- passwd
- mkinitcpio -P
#### Bootloader
- pacman -S grub efibootmgr
- grub-install --efi-directory=/boot --bootloader-id=GRUB
- grub-mkconfig -o /boot/grub/grub.cfg
- exit
- umount -R /mnt
- poweroff
- 
# Finish Installation
