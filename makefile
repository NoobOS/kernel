# sudo apt-get install g++ binutils libc6-dev-i386

GCCPARAMS = -m32 -fno-use-cxa-atexit -nostdlib -fno-builtin -fno-rtti -fno-exceptions -fno-leading-underscore -Wno-write-strings
ASPARAMS = --32
LDPARAMS = -melf_i386

objects = obj/loader.o \
          obj/kernel.o

obj/%.o: src/%.cpp
	gcc $(GCCPARAMS) -c -o $@ $<

obj/%.o: src/%.s
	as $(ASPARAMS) -o $@ $<
	
noobkernel.bin: linker.ld $(objects)
	ld $(LDPARAMS) -T $< -o $@ $(objects)
	
