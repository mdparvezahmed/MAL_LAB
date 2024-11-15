.model small
.stack 100h
.data
msg1 db "enter first nummber: $"
msg2 db "Enter second number: $"
msg3 db "The larger number is: $"

num1 db ?
num2 db ?


.code
main proc
    ;initialize data segment
    mov ax,@data
    mov ds,ax
    
    ;print first message
    mov ah,9
    lea dx,msg1
    int 21h
    
    ;read first number
    mov ah,1
    int 21h
    sub al, 48
    mov num1, al
    
    
    ;print mgs2
    mov ah,9
    lea dx,msg2
    int 21h
    
    ;intpu second num;
    mov ah,1
    int 21h
    sub al, 48
    mov num2, al
    
    mov al, num1
    mov bl, num2
    cmp al, bl
    jg num1_is_larger
                     
    
    mov al,bl
    jmp print_result
                 
 
num1_is_larger:
    mov al, num1 
    
    
print_result:
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    add al,48
    
    mov ah,2
    mov dl,al
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main