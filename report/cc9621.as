000000000040072d <main>:
  40072d:       push   %rbp
  40072e:       mov    %rsp,%rbp
  400731:       push   %rbx
  400732:       sub    $0x1f8,%rsp
  400739:       mov    %fs:0x28,%rax
  400742:       mov    %rax,-0x18(%rbp)
  400746:       xor    %eax,%eax
  /*
   * The instruction below assign the string "/tmp/".
   * Note the optimization of the compiler result in a
   * direct assignment, no memoey access.
   * (Little endian) 0x2f=/ 0x74=t 0x6d=m 0x70=p 0x2f=/
   * The value "/tmp/" is stored at a variable on the stack.
   */
  400748:       movabs $0x2f706d742f,%rax
  400752:       mov    %rax,-0x1f0(%rbp)
  400759:       lea    -0x1e8(%rbp),%rsi
  400760:       mov    $0x0,%eax
  400765:       mov    $0x18,%edx
  40076a:       mov    %rsi,%rdi
  40076d:       mov    %rdx,%rcx
  /*
   * The following instruction fill the buffer with zeros pointing to
   * register %rsi, by %rcx times (0x18 = 24 chars). In C usually the
   * call would be memset(buff, 24, '\0');
   */
  400770:       rep stos %rax,%es:(%rdi)
  /* The address 0x4008b4 point to string "USER". */
  400773:       mov    $0x4008b4,%edi
  /*
   * The call getenv("USER"); it will return a char* at %rax with the user
   * logged.
   */
  400778:       callq  4005b0 <getenv@plt>
  40077d:       mov    %rax,-0x200(%rbp)
  400784:       mov    -0x200(%rbp),%rdx
  40078b:       lea    -0x1f0(%rbp),%rax
  400792:       mov    %rdx,%rsi
  400795:       mov    %rax,%rdi
  /*
   * strcat(%rdi, %rsi) will concatenate the strings:
   * %rdi = "/tmp/" with, %rsi = "m3cool"; results the string
   * "/tmp/m3cool".
   * WARNING:
   *         m3cool is my user at my computer, so this program
   * when run from other computer/user may change.
   * the result string is stored at variable on the stack at offset
   * -0x1f0 from the base pointer register.
   */
  400798:       callq  400630 <strcat@plt>
  40079d:       lea    -0x120(%rbp),%rax
  4007a4:       mov    %rax,%rsi
  /* 0x4008b9 stores the string "%s" */
  4007a7:       mov    $0x4008b9,%edi
  4007ac:       mov    $0x0,%eax
  /* scanf waits for a string to be typed, as the parameter at
   * %edi = "%s" indicates
   */
  4007b1:       callq  400620 <__isoc99_scanf@plt>
  4007b6:       lea    -0x1f0(%rbp),%rax
  /* 0x4008bc stores string "w" for fopen */
  4007bd:       mov    $0x4008bc,%esi
  4007c2:       mov    %rax,%rdi
  /*
   * tries to open a file for write only.
   * -0x1f8(%rbp) = fopen("/tmp/m3cool", "w");
   */
  4007c5:       callq  400610 <fopen@plt>
  4007ca:       mov    %rax,-0x1f8(%rbp)
  4007d1:       cmpq   $0x0,-0x1f8(%rbp)
  4007d9:       je     40080a <main+0xdd>
  4007db:       mov    -0x1f8(%rbp),%rdx
  4007e2:       lea    -0x120(%rbp),%rax
  4007e9:       mov    %rdx,%rsi
  4007ec:       mov    %rax,%rdi
  /*
   * In case fopen succeeded, saves the content typed
   * in the file opened at "/tmp/m3cool".
   */
  4007ef:       callq  4005e0 <fputs@plt>
  4007f4:       mov    -0x1f8(%rbp),%rax
  4007fb:       mov    %rax,%rdi
  /* closes the stream file opened at "/tmp/m3cool"
  4007fe:       callq  4005c0 <fclose@plt>
  /*
   * The remaining instructions is to return and
   * shutdown the process gracefully.
   */
  400803:       mov    $0x0,%eax
  400808:       jmp    40080f <main+0xe2>
  40080a:       mov    $0x1,%eax
  40080f:       mov    -0x18(%rbp),%rbx
  400813:       xor    %fs:0x28,%rbx
  40081c:       je     400823 <main+0xf6>
  40081e:       callq  4005d0 <__stack_chk_fail@plt>
  400823:       add    $0x1f8,%rsp
  40082a:       pop    %rbx
  40082b:       pop    %rbp
  40082c:       retq   
  40082d:       nopl   (%rax)
