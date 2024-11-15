.model small
.stack 100h
.data
msg1 db 'The uppercase letter is: $'
msg2 db 'The lower in Lowercase is: $'
.code
main proc
    MOV AX,@DATA
    MOV ds,ax
    
    mov ah,09h
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h 
    mov bl,al
    
    Add bl,32
    
    mov ah,09H
    lea dx,msg2
    int 21h
    
    mov dl,bl
    mov ah,2h
    int 21h
    
    
    
    
    
         
    mov ah,4ch
    int 21h
     
    main endp
end main