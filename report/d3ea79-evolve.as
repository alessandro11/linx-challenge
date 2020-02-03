0000000000400cb3 <evolve>:
  400cb3:       push   %rbp
  400cb4:       mov    %rsp,%rbp
  400cb7:       push   %r15
  400cb9:       push   %r14
  400cbb:       push   %r13
  400cbd:       push   %r12
  400cbf:       push   %rbx
  400cc0:       sub    $0x78,%rsp
  400cc4:       mov    %rdi,-0x78(%rbp)
  400cc8:       mov    %rsi,-0x80(%rbp)
  400ccc:       mov    %rdx,-0x88(%rbp)
  400cd3:       mov    -0x80(%rbp),%rdi
  400cd7:       mov    %rdi,%rax
  400cda:       sub    $0x1,%rax
  400cde:       mov    %rax,-0x50(%rbp)
  400ce2:       mov    %rdi,%rcx
  400ce5:       mov    $0x0,%ebx
  400cea:       mov    %rsp,%rax
  400ced:       mov    %rax,-0x90(%rbp)
  400cf4:       mov    -0x78(%rbp),%rsi
  400cf8:       mov    -0x80(%rbp),%rbx
  400cfc:       mov    %rsi,%rax
  400cff:       sub    $0x1,%rax
  400d03:       mov    %rax,-0x48(%rbp)
  400d07:       mov    %rsi,-0xa0(%rbp)
  400d0e:       movq   $0x0,-0x98(%rbp)
  400d19:       lea    0x0(,%rsi,4),%rcx
  400d21:       mov    %rbx,%rax
  400d24:       sub    $0x1,%rax
  400d28:       mov    %rax,-0x40(%rbp)
  400d2c:       mov    %rsi,%r14
  400d2f:       mov    $0x0,%r15d
  400d35:       mov    %rbx,%r12
  400d38:       mov    $0x0,%r13d
  400d3e:       mov    %r15,%rdx
  400d41:       imul   %r12,%rdx
  400d45:       mov    %r13,%rax
  400d48:       imul   %r14,%rax
  400d4c:       add    %rdx,%rax
  400d4f:       mov    %rax,-0xa0(%rbp)
  400d56:       mov    %r14,%rax
  400d59:       mul    %r12
  400d5c:       mov    -0xa0(%rbp),%r15
  400d63:       lea    (%r15,%rdx,1),%r12
  400d67:       mov    %r12,%rdx
  400d6a:       mov    %rsi,%r10
  400d6d:       mov    $0x0,%r11d
  400d73:       mov    %rbx,%r8
  400d76:       mov    $0x0,%r9d
  400d7c:       mov    %r11,%rdx
  400d7f:       imul   %r8,%rdx
  400d83:       mov    %r9,%rax
  400d86:       imul   %r10,%rax
  400d8a:       lea    (%rdx,%rax,1),%r12
  400d8e:       mov    %r10,%rax
  400d91:       mul    %r8
  400d94:       lea    (%r12,%rdx,1),%r8
  400d98:       mov    %r8,%rdx
  400d9b:       mov    %rsi,%rax
  400d9e:       imul   %rbx,%rax
  400da2:       shl    $0x2,%rax
  400da6:       lea    0x3(%rax),%rdx
  400daa:       mov    $0x10,%eax
  400daf:       sub    $0x1,%rax
  400db3:       add    %rdx,%rax
  400db6:       mov    $0x10,%ebx
  400dbb:       mov    $0x0,%edx
  400dc0:       div    %rbx
  400dc3:       imul   $0x10,%rax,%rax
  400dc7:       sub    %rax,%rsp
  400dca:       mov    %rsp,%rax
  400dcd:       add    $0x3,%rax
  400dd1:       shr    $0x2,%rax
  400dd5:       shl    $0x2,%rax
  400dd9:       mov    %rax,-0x38(%rbp)
  400ddd:       movl   $0x0,-0x6c(%rbp)
  400de4:       jmpq   400f28 <evolve+0x275>
  400de9:       movl   $0x0,-0x68(%rbp)
  400df0:       jmpq   400f15 <evolve+0x262>
  400df5:       movl   $0x0,-0x64(%rbp)
  400dfc:       mov    -0x6c(%rbp),%eax
  400dff:       sub    $0x1,%eax
  400e02:       mov    %eax,-0x60(%rbp)
  400e05:       jmp    400e79 <evolve+0x1c6>
  400e07:       mov    -0x68(%rbp),%eax
  400e0a:       sub    $0x1,%eax
  400e0d:       mov    %eax,-0x5c(%rbp)
  400e10:       jmp    400e6a <evolve+0x1b7>
  400e12:       mov    -0x60(%rbp),%eax
  400e15:       movslq %eax,%rdx
  400e18:       mov    -0x80(%rbp),%rax
  400e1c:       add    %rdx,%rax
  400e1f:       mov    $0x0,%edx
  400e24:       divq   -0x80(%rbp)
  400e28:       mov    %rdx,%rax
  400e2b:       imul   %rdi,%rax
  400e2f:       lea    0x0(,%rax,4),%rdx
  400e37:       mov    -0x88(%rbp),%rax
  400e3e:       lea    (%rdx,%rax,1),%rsi
  400e42:       mov    -0x5c(%rbp),%eax
  400e45:       movslq %eax,%rdx
  400e48:       mov    -0x78(%rbp),%rax
  400e4c:       add    %rdx,%rax
  400e4f:       mov    $0x0,%edx
  400e54:       divq   -0x78(%rbp)
  400e58:       mov    %rdx,%rax
  400e5b:       mov    (%rsi,%rax,4),%eax
  400e5e:       test   %eax,%eax
  400e60:       je     400e66 <evolve+0x1b3>
  400e62:       addl   $0x1,-0x64(%rbp)
  400e66:       addl   $0x1,-0x5c(%rbp)
  400e6a:       mov    -0x68(%rbp),%eax
  400e6d:       add    $0x1,%eax
  400e70:       cmp    -0x5c(%rbp),%eax
  400e73:       jge    400e12 <evolve+0x15f>
  400e75:       addl   $0x1,-0x60(%rbp)
  400e79:       mov    -0x6c(%rbp),%eax
  400e7c:       add    $0x1,%eax
  400e7f:       cmp    -0x60(%rbp),%eax
  400e82:       jge    400e07 <evolve+0x154>
  400e84:       mov    -0x6c(%rbp),%eax
  400e87:       cltq   
  400e89:       imul   %rdi,%rax
  400e8d:       lea    0x0(,%rax,4),%rdx
  400e95:       mov    -0x88(%rbp),%rax
  400e9c:       add    %rax,%rdx
  400e9f:       mov    -0x68(%rbp),%eax
  400ea2:       cltq   
  400ea4:       mov    (%rdx,%rax,4),%eax
  400ea7:       test   %eax,%eax
  400ea9:       je     400eaf <evolve+0x1fc>
  400eab:       subl   $0x1,-0x64(%rbp)
  400eaf:       mov    %rcx,%r9
  400eb2:       shr    $0x2,%r9
  400eb6:       cmpl   $0x3,-0x64(%rbp)
  400eba:       je     400ee9 <evolve+0x236>
  400ebc:       cmpl   $0x2,-0x64(%rbp)
  400ec0:       jne    400ef0 <evolve+0x23d>
  400ec2:       mov    -0x6c(%rbp),%eax
  400ec5:       cltq   
  400ec7:       imul   %rdi,%rax
  400ecb:       lea    0x0(,%rax,4),%rdx
  400ed3:       mov    -0x88(%rbp),%rax
  400eda:       add    %rax,%rdx
  400edd:       mov    -0x68(%rbp),%eax
  400ee0:       cltq   
  400ee2:       mov    (%rdx,%rax,4),%eax
  400ee5:       test   %eax,%eax
  400ee7:       je     400ef0 <evolve+0x23d>
  400ee9:       mov    $0x1,%eax
  400eee:       jmp    400ef5 <evolve+0x242>
  400ef0:       mov    $0x0,%eax
  400ef5:       mov    %eax,%edx
  400ef7:       mov    -0x38(%rbp),%rax
  400efb:       mov    -0x68(%rbp),%esi
  400efe:       movslq %esi,%r8
  400f01:       mov    -0x6c(%rbp),%esi
  400f04:       movslq %esi,%rsi
  400f07:       imul   %r9,%rsi
  400f0b:       add    %r8,%rsi
  400f0e:       mov    %edx,(%rax,%rsi,4)
  400f11:       addl   $0x1,-0x68(%rbp)
  400f15:       mov    -0x68(%rbp),%eax
  400f18:       cltq   
  400f1a:       cmp    -0x78(%rbp),%rax
  400f1e:       jb     400df5 <evolve+0x142>
  400f24:       addl   $0x1,-0x6c(%rbp)
  400f28:       mov    -0x6c(%rbp),%eax
  400f2b:       cltq   
  400f2d:       cmp    -0x80(%rbp),%rax
  400f31:       jb     400de9 <evolve+0x136>
  400f37:       movl   $0x0,-0x58(%rbp)
  400f3e:       jmp    400fa1 <evolve+0x2ee>
  400f40:       movl   $0x0,-0x54(%rbp)
  400f47:       jmp    400f92 <evolve+0x2df>
  400f49:       mov    -0x58(%rbp),%eax
  400f4c:       cltq   
  400f4e:       imul   %rdi,%rax
  400f52:       lea    0x0(,%rax,4),%rdx
  400f5a:       mov    -0x88(%rbp),%rax
  400f61:       lea    (%rdx,%rax,1),%rsi
  400f65:       mov    %rcx,%r9
  400f68:       shr    $0x2,%r9
  400f6c:       mov    -0x38(%rbp),%rax
  400f70:       mov    -0x54(%rbp),%edx
  400f73:       movslq %edx,%r8
  400f76:       mov    -0x58(%rbp),%edx
  400f79:       movslq %edx,%rdx
  400f7c:       imul   %r9,%rdx
  400f80:       add    %r8,%rdx
  400f83:       mov    (%rax,%rdx,4),%edx
  400f86:       mov    -0x54(%rbp),%eax
  400f89:       cltq   
  400f8b:       mov    %edx,(%rsi,%rax,4)
  400f8e:       addl   $0x1,-0x54(%rbp)
  400f92:       mov    -0x54(%rbp),%eax
  400f95:       cltq   
  400f97:       cmp    -0x78(%rbp),%rax
  400f9b:       jb     400f49 <evolve+0x296>
  400f9d:       addl   $0x1,-0x58(%rbp)
  400fa1:       mov    -0x58(%rbp),%eax
  400fa4:       cltq   
  400fa6:       cmp    -0x80(%rbp),%rax
  400faa:       jb     400f40 <evolve+0x28d>
  400fac:       mov    -0x90(%rbp),%rsp
  400fb3:       lea    -0x28(%rbp),%rsp
  400fb7:       pop    %rbx
  400fb8:       pop    %r12
  400fba:       pop    %r13
  400fbc:       pop    %r14
  400fbe:       pop    %r15
  400fc0:       pop    %rbp
  400fc1:       retq   
