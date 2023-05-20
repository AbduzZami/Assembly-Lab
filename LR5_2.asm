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
        
        MOV AX, 2h
        MOV BX, 5H
        
        CMP AX,BX
        JG L1    
        ADD BX,48
        MOV CX,BX
        MOV DX,CX
        MOV AH,2
        INT 21H 
        
        MOV AX,4C00H
        INT 21H
        
        L1:     
           MOV CX,AX
           ADD CX,48
           MOV DX,CX
           MOV AH,2
           INT 21H
        
        
        
        
        
        main endp
    end main