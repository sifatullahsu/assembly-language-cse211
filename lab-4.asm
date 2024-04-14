; LAB 04: Method for newline using PRINTN

; Starting memory address
org 100H

; Include the EMU8086.INC file for macros and functions
INCLUDE 'EMU8086.INC'

; Main procedure definition
MAIN PROC
    ; Get the one character from the user and store it in BL
    MOV AH, 1
    INT 21H
    MOV BL, AL

    ; Call PRINTN to print a newline character
    PRINTN

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