Dat Segment
   len equ 13
   source db 'Hello, World!','$'
   dest db len DUP (' ')   
Dat EndS

Codl Segment
   assume ds:data, es:data
   
   start: 
      mov ax, dat 
      mov ds, ax 
      mov es, ax

      cli
      
      lea si, source
      lea di, dest 
      
      mov cx, len + 1 
      
      rep movsb
      
      mov si, offset dest
      mov bx, 0
      mov cx, len / 2
      
      L1:
         mov bp, len - 1
         sub bp, bx
         
         mov al, [si + bx]
         mov dl, [si + bp]
         
         mov [si + bx], dl
         mov [si + bp], al
         
         add bx, 1
         loop L1
      
      lea dx, dest
      mov ah, 09h 
      int 21h

Codl EndS

End start