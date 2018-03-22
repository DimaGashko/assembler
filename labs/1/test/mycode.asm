;48/x/y + 12*(x-y)

dat segment
   x db 4 
   y db 2
   z db ?
dat ends

cod segment

start:  
   mov z, 48
   
   mov ax, z   
   mov bl, 2
   
    
   
   div x
   ;div y
   
cod ends

end start