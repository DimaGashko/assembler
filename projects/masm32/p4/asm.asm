.586
.model flat, stdcall

extern MessageBoxA@16:near

includelib C:\masm32\lib\user32.lib

data segment
   head db "Скороговорка",0
   mess db "Ехал грека через реку",13,
           "Видет грека в реке рак",13,
           "Сунул грека руку в реку",13,
           "Рак за руку грека цап",13,13,
           "Close?",0
           
data ends

text segment
start:
   push 68
   push offset head
   push offset mess
   push 0
   call MessageBoxA@16
   
   cmp eax,7
   jz start
   
   ret
text ends
end start