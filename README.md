# Noob kernel
Noob Kernel for NoobOS(NOS).

## Build

- Install required softwares : `sudo apt-get install g++ binutils libc6-dev-i386`

- cd into root directory and execute `make` from terminal. THis will make noobkernel.bin which can be directly used or further can be used to create CD/DVD image.

- To create CD/DVD iso : `make noobkernel.iso`


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

- Required softwares : `apt install virtualbox virtualbox-qt xorriso grub-coreboot`

- cd into root directory and execute `make noobkernel.iso`

- After successful build of CD/DVD iso we can run it in virtualbox. A Screenshot is provided below for demo.

- ![Screenshot](https://image.ibb.co/k4o2eU/Screenshot_from_2018_10_10_17_38_24.png)


- For Quick test : `make run` this will run our iso as a background process.

(Note: I created a virtualbox profile manually named "Noob OS" therefor `make run` works for me.)

## Developers

- [chankruze](https://github.com/chankruze)