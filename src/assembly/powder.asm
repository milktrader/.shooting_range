.code64
.global _main
.static_data
msg: .ascii "Let's keep the powder dry!\n"
.set msglen, (. - msg)
.text
_main:
    mov $0x2000004, %rax 
    mov $1, %rdi 
    lea msg(%rip), %rsi 
    mov $msglen, %rdx
    syscall 
    mov $0x2000001, %rax 
    xor %rdi, %rdi 
    syscall

