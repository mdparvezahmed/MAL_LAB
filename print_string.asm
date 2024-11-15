.model small
.stack 100h
.data
a db 'bangladesh i my country $'
.code


main proc
    mov ax,@data
    mov ds,ax
    
    mov ah, 9
    lea dx, a
    int 21h
    
    exit:
    mov ah, 4CH
    int 21h
    main endp
end main
