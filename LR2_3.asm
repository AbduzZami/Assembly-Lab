.model small
.stack 100h    

.data
    msg1 db "Enter Digitr:$"
    msg2 db 0ah,0dh, "Enter second number:$"
    msg3 db 0ah,0dh, "Result:$"
    
    A db 0
    X db 88
    
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
        
                 
        CMP AL,X
        JL LESS
        SUB A,23
        JMP BOTH
        LESS: 
        
        ADD A,3
        BOTH:
        
        
        
        
        MOV AH,9
        LEA DX,msg3
        INT 21h
        
        MOV AH,2
        MOV DL,A
        INT 21h
        
        
        
        MOV AH,4CH
        INT 21h
        main endp
    end main