000000000040060d <main>:
  40060d:       push   %rbp
  40060e:       mov    %rsp,%rbp
  400611:       push   %rbx
  400612:       sub    $0x38,%rsp
  
  400616:       mov    $0x1,%esi
  40061b:       mov    $0x11,%edi
  400620:       callq  4004d0 <signal@plt>
  400625:       mov    $0x0,%ebx
  40062a:       jmp    400650 <main+0x43>
  40062c:       callq  400510 <fork@plt>
  400631:       movslq %ebx,%rdx
  400634:       mov    %eax,-0x40(%rbp,%rdx,4)
  400638:       movslq %ebx,%rax
  40063b:       mov    -0x40(%rbp,%rax,4),%eax
  40063f:       test   %eax,%eax
  400641:       jne    40064d <main+0x40>
  400643:       mov    $0x0,%edi
  400648:       callq  4004f0 <exit@plt>
  40064d:       add    $0x1,%ebx
  400650:       cmp    $0x9,%ebx
  400653:       jle    40062c <main+0x1f>
  400655:       mov    $0xa,%edi
  40065a:       mov    $0x0,%eax
  40065f:       callq  400500 <sleep@plt>
  400664:       jmp    400625 <main+0x18>
  400666:       nopw   %cs:0x0(%rax,%rax,1)
