.MODEL small
.STACK 100H
.DATA
    num1 DB 5
    num2 DB 3
    result DB ?
    msg DB 'result is: $'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,num1
    SUB AL,num2
    MOV result,AL
    
    LEA DX,msg
    MOV AH,09H
    INT 21H
    
    MOV AL,result
    ADD AL,30H
    MOV DL,AL
    MOV AH,02H
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    main ENDP
END main
     