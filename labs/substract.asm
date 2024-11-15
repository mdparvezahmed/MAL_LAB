.MODEL small
.STACK 100H
.DATA
    msg1 DB 'input 1st number: $'
    msg2 DB 'input 2nd number: $'
    num1 DB ?
    num2 DB ?
    result DB ?
    msg DB 'result is: $' 
    newline DB 0DH, 0AH, '$'
    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX,msg1  ;MESSAGE 1
    MOV AH,09H
    INT 21H 
    
    MOV AH,01H   ;INPUT NUM1
    INT 21H                
    SUB AL,30H
    MOV num1,AL
    
    LEA DX,newline  ;NEWLINE
    MOV AH,09H
    INT 21H
    
    LEA DX,msg2     ;MESSSAGE 2
    MOV AH,09H
    INT 21H                    
    
    MOV AH,01H       ;INPUT NUM2       
    INT 21H
    SUB AL,30H
    MOV num2,AL
    
    LEA DX,newline      ;PIRNT NEW LINE
    MOV AH,09H
    INT 21H
    
    MOV AL,num1          ;SUBSTRACT
    SUB AL,num2
    MOV result,AL
    
   
    LEA DX,msg           ;RESULT MESSAGE
    MOV AH,09H
    INT 21H
    
    
    MOV AL,result         ;MESSAGE
    ADD AL,48   
    MOV DL,AL
    MOV AH,02H
    INT 21H
    
   
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN
