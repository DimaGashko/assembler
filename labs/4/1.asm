Dat Segment
   arr db 0,0,0,0,11,0,0,0,0,0,
       db 0,0,0,0,22,0,0,0,0,0,
       db 0,0,0,0,33,0,0,0,0,0,
       db 0,0,0,0,44,0,0,0,0,0,
       db 1,2,3,4,55,6,7,8,9,0,
       db 0,0,0,0,66,0,0,0,0,0,
       db 0,0,0,0,77,0,0,0,0,0,
       db 0,0,0,0,88,0,0,0,0,0,
       db 0,0,0,0,99,0,0,0,0,0,
       db 0,0,0,0,8,0,0,0,0,0
       
   tmp db 10 dup (?) ;массив, для хранения значений нужной строки

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
      mov di, offset tmp
      
      mov cx, len
      mov bx, 0
      mov dx, 0
      
      L1:
         push cx
      
         mov ax, [si + (n - 1) * len + bx]
         mov [di + bx], ax
         
         push bx
         mov bx, dx
         
         mov cx, [si + (n - 1) + bx]
         mov [si + (n - 1) + bx], ax
         
         pop bx
         
         ;mov [si + (n - 1) * len + bx], cx
         
         pop cx
         
         add bx, 1
         add dx, len
         
         loop L1
      
Codl EndS

End start


