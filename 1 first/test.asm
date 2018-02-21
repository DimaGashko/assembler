include 'win32ax.inc'
.code
start:
invoke MessageBox,HWND_DESKTOP,"hello, world!","First program on assembler",MB_ICONASTERISK
invoke ExitProcess,0
.end start