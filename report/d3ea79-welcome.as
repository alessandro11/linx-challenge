00000000004009e6 <welcome>:
...
  400a00:       movabs $0x2f706d742f,%rax
...
  400a2b:       mov    $0x4012a8,%edi
  400a30:       callq  400750 <getenv@plt>
...
  400a55:       callq  4007b0 <strncat@plt>
...
  400a69:       callq  400810 <fopen@plt>
...
  400aa7:       mov    $0x4012c3,%edi
  400aac:       callq  400830 <fwrite@plt>
...
  400ab8:       mov    $0x4012e8,%esi
  400ac5:       callq  4007f0 <fprintf@plt>
...
  400ad4:       callq  400780 <fclose@plt>
...
