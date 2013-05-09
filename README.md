# ShellCode
ShellCode is an assortment of my shellcode snips and testing tools.
Right now, all of these are for 32 bit using int 0x80 service requests.

## ShellTest
ShellTest is a simple program that loads whatever is passed to the program through STDIN and executes it. The most 
strait-forward approach would be to redirect STDIN from a file or pipe the output from echo.

Example:
	ShellTest < myShellCode.file
	# OR
	cat -e \\xeb\\xfe | ShellTest


