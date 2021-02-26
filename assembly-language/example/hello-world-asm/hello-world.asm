; _start is defined as entry point, which linker will pick up
global _start 
section .text
_start:
  mov rax, 1 ; write
  mov rdi, 1 ; stdout
  mov rsi, msg
  mov rdx, msg.len
  syscall
  mov rax, 60 ; exit
  mov rdi, 0
  syscall
section .data ; declare static data region
msg:    db      "Hello, world!", 10
.len:   equ     $ - msg