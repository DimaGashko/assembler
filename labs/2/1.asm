Dat Segment
   a db 1,2,3,4,5,6,7,8,9,10
   b db 10 dup (?)
Dat EndS

Codl Segment
   assume ds:dat, cs:codl
   
   start: 
      mov ax, dat
      mov ds, ax
   
      mov bx, offset a
      mov bp, offset b
      
      mov ax, [bx]
      mov [bp], ax
      
      mov ax, [bx + 1]
      mov [bp + 1], ax

      mov ax, [bx + 2]
      mov [bp + 2], ax
      
      mov ax, [bx + 3]
      mov [bp + 3], ax
      
      mov ax, [bx + 4]
      mov [bp + 4], ax
      
      mov ax, [bx + 5]
      mov [bp + 5], ax
      
      mov ax, [bx + 6]
      mov [bp + 6], ax
      
      mov ax, [bx + 7]
      mov [bp + 7], ax
      
      mov ax, [bx + 8]
      mov [bp + 8], ax
      
      mov ax, [bx + 9]
      mov [bp + 9], ax
      
Codl EndS

End start
