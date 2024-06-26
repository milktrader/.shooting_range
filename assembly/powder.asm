 ;Keep your powder dry assembly program
 ;                          
 ;   $ nasm -f elf32 -o powder.o powder.asm
 ;   $ ld -m elf_i386 -o powder powder.o 
 ;   $ ./powder

section        .text                   ; declare the .text section
global         _start                  ; has to be declared for the linker (ld)
_start:                                ; entry point for _start
    mov edx, len                       ; "invoke" the len of the message
    mov ecx, msg                       ; "invoke" the message itself

    mov ebx, 1                         ; set the file descriptor (fd) to stdout

    mov eax, 4                         ; system call for "write"   
    int 0x80                           ; call the kernel

    mov eax, 1                         ; system call for "exit"
    int 0x80                           ; call the kernel

section        .data                   ; here you declare the data
    msg        db "Let's keep the powder dry"       ; the actual message to use
    len        equ $ -msg              ; get the size of the message
