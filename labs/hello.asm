.model small
.stack 100h
.data
msg DB 'we are from DIU CSE $'
.code
main PROC
    MOV AX,@data
    MOV DS,AX

    LEA DX,msg
    MOV AH,09H
    INT 21H

    MOV AH,4CH
    INT 21H

    MAIN ENDP
END main

