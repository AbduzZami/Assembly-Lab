.model small
.stack 100h    

.data
    msg1 db 0ah,0dh, "Enter two numbers:$"
    msg2 db 0ah,0dh, "Sum:$"
    msg3 db 0ah,0dh, "Sub:$"  
    msg4 db 0ah,0dh, "Product:$"
    msg5 db 0ah,0dh, "Quotient:$"
    msg6 db 0ah,0dh, "Remainder:$"
    
    A db 0
    B db 0
    
.code
    main proc
        MOV AX,@data
        MOV DS,AX  
        
        ;sum
        
        MOV AH,9
        LEA DX,msg1
        INT 21h
        
        MOV AH,1
        INT 21h
        MOV A,AL
        
        MOV AH,1
        INT 21h
        MOV B,AL 
        
        MOV AL,A
        MOV BL,B
        
        SUB AL,48
        SUB BL,48
        
        ADD AL,BL
        MOV AH,0
        AAA
        
        ADD AH,48
        ADD AL,48
        
        MOV BX,AX
        
        MOV AH,9
        LEA DX,msg2
        INT 21h
        
        MOV AH,2
        MOV DL,BH
        INT 21h
        
        MOV AH,2
        MOV DL,BL
        INT 21h
        
        ;sub
        
        MOV AH,9
        LEA DX,msg1
        INT 21h
        
        MOV AH,1
        INT 21h
        MOV A,AL
        
        MOV AH,1
        INT 21h
        MOV B,AL 
        
        MOV AL,A
        MOV BL,B
        
        SUB AL,48
        SUB BL,48
        
        SUB AL,BL
        MOV AH,0
        AAS
        
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
        
        ;mul
        
        MOV AH,9
        LEA DX,msg1
        INT 21h
        
        MOV AH,1
        INT 21h
        MOV A,AL
        
        MOV AH,1
        INT 21h
        MOV B,AL
        
        MOV AL,A
        MOV BL,B
        
        SUB AL,48
        SUB BL,48
        
        MUL BL
        AAM
        
        
        ADD AH,48
        ADD AL,48
        
        MOV BX,AX
        
        MOV AH,9
        LEA DX,msg4
        INT 21h
        
        MOV AH,2
        MOV DL,BH
        INT 21h
        
        MOV AH,2
        MOV DL,BL
        INT 21h
        
        
        ;div
        
        MOV AH,9
        LEA DX,msg1
        INT 21h
        
        MOV AH,1
        INT 21h
        MOV A,AL
        
        MOV AH,1
        INT 21h
        MOV B,AL
        
        MOV AL,A
        MOV AH,0
        MOV BL,B
        
        SUB AL,48
        SUB BL,48
        
        DIV BL
        
        
        ADD AH,48
        ADD AL,48
        
        MOV BX,AX
        
        MOV AH,9
        LEA DX,msg5
        INT 21h
        
        MOV AH,2
        MOV DL,BL
        INT 21h 
        
        MOV AH,9
        LEA DX,msg6
        INT 21h
        
        MOV AH,2
        MOV DL,BH
        INT 21h  
         
        
        
        
        main endp
    end main

