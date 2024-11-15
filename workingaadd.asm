;can use small letter or block letter or both at a time, no problem araise cause it's can insensitive.

.MODEL small
.STACK 100H
.DATA
    a DB 'Input the first integer: $'
    b DB 'Input the second integer: $'
    c DB 'Result : $'
.CODE
MAIN PROC
    MOV AX,@data
    MOV DS,AX

    MOV AH,09H 
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