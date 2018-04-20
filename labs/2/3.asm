Dat Segment
   a db 1,2,3,4,5,6,7,8,9,10
   b db 10 dup (?)
Dat EndS

Codl Segment
   assume ds:dat, cs:codl
   
   start: 
      mov ax, dat
      mov ds, ax
   
      mov si, offset a
      mov di, offset b
      mov bx, 0
      
      mov ax, [si + bx]
      mov [di], ax
      add ax, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
      mov ax, [si + bx]
      mov [di + bx], ax
      add bx, 1;
      
Codl EndS

End start
