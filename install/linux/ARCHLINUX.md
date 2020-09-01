# Arch Linux Installation

_Work in progress._


## Pre-installation

### Setting up LVM on LUKS for Full System Encryption

Based on https://wiki.archlinux.org/index.php/Dm-crypt/Encrypting_an_entire_system#LVM_on_LUKS

#### Create and Mount Volumes

```
lsblk -f

# Create encrypted container
cryptsetup luksFormat <device>

cryptsetup open <device> cryptlvm

# Create physical volume on opened container
pvcreate /dev/mapper/cryptlvm

# Create volume group
vgcreate <group> /dev/mapper/cryptlvm

# Create logical volumes
lvcreate -L 6G <group> -n swaplv
lvcreate -L 15G <group> -n rootlv
lvcreate -l 100%FREE <group> -n homelv

# Mount volumes
mount /dev/<group>/rootlv /mnt
mkdir /mnt/home
mount /dev/<group>/homelv /mnt/home
swapon /dev/<group>/swaplv
```

#### Configure to Autoload on Boot

Modify `/etc/mkinitcpio.conf` after running `arch-chroot /mnt`:

```
# Add `keyboard`, `keymap`, `encrypt`, and `lvm2` in the correct order
HOOKS=(base udev autodetect keyboard keymap modconf block encrypt lvm2 filesystems fsck)
```

Modify `GRUB_CMDLINE_LINUX` in `/etc/default/grub`:

```
GRUB_CMDLINE_LINUX="cryptdevice=UUID=<UUID>:cryptlvm root=/dev/<group>/rootlv"
```


## General Installation

```
fdisk -l
lsblk -f

# Mount EFI
mount /dev/<device> /mnt/boot

timedatectl set-ntp true
pacstrap /mnt base linux linux-firmware nano
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
ln -sf /usr/share/zoneinfo/<region>/<city> /etc/localtime
pacman -S --needed grub efibootmgr
pacman -S --needed lvm2 os-prober screen
grub-install --target=x86_64-efi --efi-directory=/boot/ --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
mkinitcpio -P
```


## Post-installation

```
sudo pacman -S --needed \
    base-devel \
    bluez \
    connman \
    nano \
    noto-fonts \
    noto-fonts-cjk \
    noto-fonts-emoji \
    wpa_supplicant \
    xorg-server \
    xorg-xinit \
    xorg-xset \
    tlp \
    sudo
```

### Thinkpad T14

```
sudo pacman -S --needed sof-firmware amd-ucode mesa
```
