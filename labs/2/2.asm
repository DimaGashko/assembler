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
      
      mov ax, [si]
      mov [di], ax
      
      mov ax, [si + 1]
      mov [di + 1], ax

      mov ax, [si + 2]
      mov [di + 2], ax
      
      mov ax, [si + 3]
      mov [di + 3], ax
      
      mov ax, [si + 4]
      mov [di + 4], ax
      
      mov ax, [si + 5]
      mov [di + 5], ax
      
      mov ax, [si + 6]
      mov [di + 6], ax
      
      mov di, [si + 7]
      mov [di + 7], ax
      
      mov ax, [si + 8]
      mov [di + 8], ax
      
      mov ax, [si + 9]
      mov [di + 9], ax
      
Codl EndS

End start
