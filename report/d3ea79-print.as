0000000000400aef <print>:
...
  400b40:       movabs $0x2f706d742f,%rax
...
  400b68:       rep stos %rax,%es:(%rdi)
  400b6b:       mov    $0x4012a8,%edi
  400b70:       callq  400750 <getenv@plt>
...
  400b95:       callq  4007b0 <strncat@plt>
...
  400ba9:       callq  400810 <fopen@plt>
...
  400bbd:       jne    400bd3 <print+0xe4>
  400bbf:       mov    $0x4012af,%edi
  400bc4:       callq  400770 <puts@plt>
...
  400bd8:       jmp    400c54 <print+0x165>
  400bda:       mov    $0x0,%r12d
  400be0:       jmp    400c31 <print+0x142>
  400be2:       movslq %ebx,%rax
  400be5:       imul   %r13,%rax
  400be9:       lea    0x0(,%rax,4),%rdx
  400bf1:       mov    -0xe8(%rbp),%rax
  400bf8:       add    %rax,%rdx
  400bfb:       movslq %r12d,%rax
  400bfe:       mov    (%rdx,%rax,4),%eax
  400c01:       test   %eax,%eax
  400c03:       je     400c0e <print+0x11f>
  400c05:       movb   $0x2a,-0xc9(%rbp)
  400c0c:       jmp    400c15 <print+0x126>
  400c0e:       movb   $0x20,-0xc9(%rbp)
  400c15:       movsbl -0xc9(%rbp),%eax
  400c1c:       mov    -0xb8(%rbp),%rdx
  400c23:       mov    %rdx,%rsi
  400c26:       mov    %eax,%edi
  400c28:       callq  4007c0 <fputc@plt>
  400c2d:       add    $0x1,%r12d
  400c31:       movslq %r12d,%rax
  400c34:       cmp    -0xe0(%rbp),%rax
  400c3b:       jb     400be2 <print+0xf3>
  400c3d:       mov    -0xb8(%rbp),%rax
  400c44:       mov    %rax,%rsi
  400c47:       mov    $0xa,%edi
  400c4c:       callq  4007c0 <fputc@plt>
  400c51:       add    $0x1,%ebx
  400c54:       movslq %ebx,%rax
  400c57:       cmp    -0xd8(%rbp),%rax
  400c5e:       jb     400bda <print+0xeb>
  400c64:       mov    -0xb8(%rbp),%rax
  400c6b:       mov    %rax,%rcx
  400c6e:       mov    $0x17,%edx
  400c73:       mov    $0x1,%esi
  400c78:       mov    $0x40131f,%edi
  400c7d:       callq  400830 <fwrite@plt>
  400c82:       mov    -0xb8(%rbp),%rax
  400c89:       mov    %rax,%rdi
  400c8c:       callq  400780 <fclose@plt>
  400c91:       mov    -0x28(%rbp),%rax
  400c95:       xor    %fs:0x28,%rax
  400c9e:       je     400ca5 <print+0x1b6>
  400ca0:       callq  400790 <__stack_chk_fail@plt>
  400ca5:       add    $0xd8,%rsp
  400cac:       pop    %rbx
  400cad:       pop    %r12
  400caf:       pop    %r13
  400cb1:       pop    %rbp
  400cb2:       retq   
