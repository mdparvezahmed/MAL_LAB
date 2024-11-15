.MODEL small
.STACK 100H
.DATA
a db 'Input the first integer: $'
b db 'Input the second integer: $'
c db 'Result: $'
.code

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 09H
    LEA DX,a
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,09H
    LEA DX,b
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    ADD BL,BH
    SUB BL,48
    
    MOV AH,09H
    LEA DX,c
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H  
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP
END MAIN