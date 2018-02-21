;use64
format PE console ; PE GUI

mov ax, cs
mov ds, ax
mov dx

mov ah, 9h
int 21h

mov ax, 4c00h
int 21h

hello: db "Hello, World!$"
