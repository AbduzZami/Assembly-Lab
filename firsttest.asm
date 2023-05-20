.model small
.stack 100h    

.data
    msg1 db "Enter first number:$"
    msg2 db 0ah,0dh, "Enter second number:$"
    msg3 db 0ah,0dh, "Result:$"
    
    A db 0
    B db 0
    
.code
    main proc
        MOV AX,@data
        MOV DS,AX
        
        MOV AH,9
        LEA DX,msg1
        INT 21h
        
        MOV AH,1
        INT 21h
        MOV A,AL
        
        MOV AH,9
        LEA DX,msg2
        INT 21h
        
        MOV AH,1
        INT 21h
        MOV B,AL
        
        ADD AL,A
        MOV AH,0
        AAA
        
        ADD AH,48
        ADD AL,48
        
        MOV BX,AX
        
        MOV AH,9
        LEA DX,msg3
        INT 21h
        
        MOV AH,2
        MOV DL,BH
        INT 21h
        
        MOV AH,2
        MOV DL,BL
        INT 21h
        
        main endp
    end main

