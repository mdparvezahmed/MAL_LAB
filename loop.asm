.model
.stack 100h
.data
array db 1,5,3,2,6
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov si, offset array
    mov cx,5
    
    loopx:
    mov dx,[si]
    add dx,48
    
    mov ah,2
    int 21h
    
    mov dx,32
    mov ah,2
    int 21h
    
    inc si
    loop loopx
    
    mov ah,4ch
    int 21h
    
    main endp
end main