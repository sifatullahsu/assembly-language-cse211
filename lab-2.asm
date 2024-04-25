; LAB 02: Method for newline

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

    ; Print a newline character
    MOV AH, 2
    MOV DL, 0DH  ; Carriage Return (CR)
    INT 21H
    MOV DL, 0AH  ; Line Feed (LF)
    INT 21H

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