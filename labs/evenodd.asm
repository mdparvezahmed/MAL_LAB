.model small
.stack 100h

.data
    num db 6
    even_msg db 0dh,0Ah, 'The number is Even$'
    odd_msg db 0dh,0Ah, 'The number is Odd$'
    
    
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,01h
    int 21h
    
    ;mov al,num
    and al,1
    jz even
    
    ;Number is odd
    lea dx,odd_msg
    mov ah,09h
    int 21h
    jmp done
 
 
even:
    lea dx,even_msg
    mov ah,09h
    int 21h
  
done:
    mov ah,4ch
    int 21h
    
    main endp
end main