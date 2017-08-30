NOMBRE = sopita


all: $(NOMBRE)


$(NOMBRE): $(NOMBRE).o
	gcc $(NOMBRE).o 


$(NOMBRE).o: $(NOMBRE).asm
	nasm -f elf64 $(NOMBRE).asm


clean:
	rm $(NOMBRE)
	rm $(NOMBRE).o
