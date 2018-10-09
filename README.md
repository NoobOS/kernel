# kernel
First success : own kernel - Noob Kernel

## Installation

- check if makefile really pushed compiled kernel to `/boot/` directory by `ls -l /boot/`

- open grub configuration file by `sudo vim /boot/grub/grub.cfg` to enter noob kernel to bootloader menu.

- Edit `grub.cfg` and add  noobkernel to menu entry :

```
### BEGIN NOOBKERNEL ###

menuentry 'Noob OS'{
	multiboot /boot/noobkernel.bin
	boot
}

### END NOOBKERNEL ###
```

## Developers

- [chankruze](https://github.com/chankruze)