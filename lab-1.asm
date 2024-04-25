; LAB 01: Method for input and output

; Directives
.MODEL SMALL
.STACK 100H
.DATA
.CODE

; Main procedure definition
MAIN PROC
    ; Get the one character from the user and store it in BL
    MOV AH, 1
    INT 21H
    MOV BL, AL

    ; Print the first character
    MOV AH, 2
    MOV DL, BL
    INT 21H

    ; Exit the program
    MOV AH, 4CH
    INT 21H
MAIN ENDP    

; End the program, entry point is MAIN
END MAIN