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
        
        MOV CX, 10
        MOV DX, 48 ; 48=0
        
        L1:
            MOV AH,2
            INT 21H
            
            INC DX
            DEC CX
            
            JNZ L1
        
        
        main endp
    end main

