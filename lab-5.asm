; LAB 05: Multiple input and output using newline

; Starting memory address
org 100H

; Main procedure definition
MAIN PROC
    ; Input start
    MOV AH, 1
    INT 21H

    ; Get the first character from the user and store it in BL
    MOV BL, AL
    INT 21H

    ; Get the second character from the user and store it in BH
    MOV BH, AL
    INT 21H

    ; Get the third character from the user and store it in CL
    MOV CL, AL
    INT 21H

    ; Print a newline character
    MOV AH, 2
    MOV DL, 0DH  ; Carriage Return (CR)
    INT 21H
    MOV DL, 0AH  ; Line Feed (LF)
    INT 21H

    ; Output start
    MOV AH, 2

    ; Print the first character
    MOV DL, BL
    INT 21H
    
    ; Print the second character
    MOV DL, BH
    INT 21H
    
    ; Print the third character
    MOV DL, CL
    INT 21H

    ; Exit the program
    MOV AH, 4CH
    INT 21H
MAIN ENDP

; End the program, entry point is MAIN
END MAIN