                                           .model small
.stack 100h    

.data
    msg1 db "Enter first number:$"
    msg2 db 0ah,0dh, "Enter second number:$"
    msg3 db 0ah,0dh, "Result:$" 
    msg4 db 0ah,0dh, "Result: -$"
    
    A db 0
    B db 0
    
.code
    main proc
        MOV AX,@data
        MOV DS,AX
        
        
        
        MOV AH,1
        INT 21h
        MOV A,AL
        
        
        
        MOV AH,2
        MOV DL,A
        INT 21h
        
        
        
        
        
        main endp
    end main