.model small
.stack 100h
.data
ain db "enter a: $"
bin db "enter b: $"  
OUTPUT DB "RESULT: $"
a db ?
b db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,ain
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    mov a,bh
    
    mov ah,9
    lea dx,bin
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    mov b,bl
    
    
    mov al,a
    mov bl,b
    add al,bl
    
    MOV AH,9
    LEA DX,OUTPUT
    INT 21H
    
    sub al,48
    mov ah,2
    mov dl,al  
    int 21h
    
    
    exit:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN