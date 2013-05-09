# ShellCode
This is an assortment of my shellcode snips and testing tools.
Right now, all of these are for 32 bit using int 0x80 service requests.
For my Archlinux buddies on amd64, you will need to install multilib-devel

## Contents
* ShellTest
* Scripts
  * Bin2Shell
* ShellCode
  * Exit
  * RootShell

### ShellTest
ShellTest is a simple program that loads whatever is passed to the program through STDIN and executes it. The most 
strait-forward approach would be to redirect STDIN from a file or pipe the output from echo.

Example:
```
ShellTest < myShellCode.file
# OR
cat -e \\xeb\\xfe | ShellTest
```
### Scripts
This is a set of quick tools that simplify extracting and testing shellscripts.

#### Bin2Shell
This script uses objdump and dd to extract the .text section from the ELF file.
For this to work you must build your assembly with only the .text section.

Assembly Template:
```
	.global _start
	.section .text
_start:	jmp .
```

### Shellcode
These items are all located in the root directory.

#### Exit
This is a test script to make sure that the buffer overflow is functional. It exits with a status code of 2.

#### RootShell
This script uses linux service routines to set user to root and run /bin/bash.