# Noob kernel
Noob Kernel for NoobOS(NOS).

## Build

- Install required softwares : `sudo apt-get install g++ binutils libc6-dev-i386`

- cd into root directory and execute `make` from terminal.


## Installation

### Physical Device

- After successful make there will be `noobkernel.bin` in `out` directory.

- Again enter command `make install`. This will copy the noobkernel.bin to `/boot`

- check if makefile really pushed compiled kernel to `/boot` directory by `ls -l /boot`

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

### Virtual Device

- REquired softwares : 

- Will added soon

## Developers

- [chankruze](https://github.com/chankruze)