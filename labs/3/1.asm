title calc
;z = 48/x/y + 12*(x-y)

datS segment
   x db 4 
   y db 2
   z dw ?
datS ends
   
codS segment
assume cs:codS, ds:datS

start: 
   mov ax, datS
   mov ds, ax
   xor ax, ax

   mov ax, 48
   
   div x
   div y 
   
   mov z, ax ;48/x/y
   
   mov al, 12
   
   mov bl, x
   sub bl, y
   mul bl
   
   add z, ax ;+ 12*(x-y)
   
codS ends

end start