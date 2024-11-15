.model small
.stack 100h
.data
array db 1,5,7,4,9,8
inarray db ?
.code
main proc
    MOV ax,@data
    MOV ds,ax
    
    MOV si,offset array
    MOV cx,6
    
loopx:
    MOV dx,[si]
    ADD dx,48
    
    ;MOV ah,2
    ;INT 21h
    
    MOV ah,1
    INT 21H
       
    
    
    
    MOV dx,32
    MOV ah,2
    INT 21h
              
    ;INC si
    ;LOOP loopx
    
    INC si
    DEC cx
    CMP cx, 0
    JG loopx
    
    MOV ah,4ch
    INT 21h
    
    main endp

end main