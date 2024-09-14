.file "test.s"
.data
  str: .ascii "Hello, World!\n"

.text

  .global _start
_start:
  movq $1, %rax
  movq $1, %rdi
  movq $str, %rsi
  movq $14, %rdx
  syscall

  // END
  movq $60, %rax ;// prefix q - quadro word
  movq $120, %rdi
  syscall  ;// for correct exit from program
