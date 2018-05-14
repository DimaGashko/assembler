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
      mov dx, 0
      
      L1:
         push cx
      
         mov al, [si + (n - 1) * len + bx]
         
         push bx
         mov bx, dx
         
         mov cl, [si + (n - 1) + bx]
         mov [si + (n - 1) + bx], al
         
         pop bx
         
         mov [si + (n - 1) * len + bx], cl
         
         pop cx
         
         add bx, 1
         add dx, len
         
         loop L1
      
Codl EndS

End start


