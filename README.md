# Assembly mini libc

## Objectives
- Learn assembly language
- Create basic libc functions in assembly

## Functions to create
- [x] strlen
- [x] strchr
- [x] memset
- [x] memcpy
- [x] strcmp
- [x] memmove
- [ ] strncmp
- [ ] strcasecmp
- [ ] rindex
- [x] strstr
- [ ] strpbrk
- [ ] strcspn

## Documentation

### Registers
| 64-bit | 32-bit | 16-bit | 8-bit | USAGE |
|--------|--------|--------|-------|-------|
| RAX    | EAX    | AX     | AH-AL | return value 
| RBX    | EBX    | BX     | BH-BL |
| RCX    | ECX    | CX     | CH-CL | arg4
| RDX    | EDX    | DX     | DH-DL | arg3
| RSI    | ESI    | SI     | SIL   | arg2
| RDI    | EDI    | DI     | DIL   | arg1
| RBP    | EBP    | BP     | BPL   |
| RSP    | ESP    | SP     | SPL   | stack pointer
| R8     | R8D    | R8W    | R8B   | arg5
| R9     | R9D    | R9W    | R9B   | arg6
| R10    | R10D   | R10W   | R10B  |
| R11    | R11D   | R11W   | R11B  |
| R12    | R12D   | R12W   | R12B  |
| R13    | R13D   | R13W   | R13B  |
| R14    | R14D   | R14W   | R14B  |
| R15    | R15D   | R15W   | R15B  |

### Instructions
#### Data movement
- mov DEST, SRC
  move SRC to DEST

#### Condition
- cmp ELEM1, ELEM2
  compare ELEM1 to ELEM2. Use a jmp condition to compare the result.

#### Arithmetic
- inc VAR
  increment variable by 1