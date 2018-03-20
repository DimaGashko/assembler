.586
.model flat, stdcall

extern FindWindowA@8:near
extern SendMessageA@16:near

includelib C:\masm32\lib\user32.lib

data segment
   n db "Калькулятор",0
           
data ends

text segment
start:
   push offset n
   push 0
   call FindWindowA@8
   
   push 0
   push 0
   push 16
   call SendMessageA@16
   
   ret
   
text ends
end start