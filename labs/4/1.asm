Dat Segment
   arr db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
       db 2,2,2,2,3,2,2,2,2,2,
       db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
       db 0,0,0,0,1,0,0,0,0,0,
 
   len equ 10 ;размерность массива
   n equ 5 ;номер строки и столбца, которые нужно поменять
   
Dat EndS

Codl Segment
   assume ds:dat, cs:codl
   
   start: 
      mov ax, dat
      mov ds, ax
      xor ax, ax

      mov si, offset arr
      
      mov cx, len
      mov bx, 0
      mov bp, 0
      
      L1:
         mov al, [si + (n - 1) * len + bx]
         mov dl, [si + (n - 1) + bp]
         
         mov [si + (n - 1) * len + bx], dl
         mov [si + (n - 1) + bp], al
         
         add bx, 1
         add bp, len
      loop L1
      
Codl EndS

End start


