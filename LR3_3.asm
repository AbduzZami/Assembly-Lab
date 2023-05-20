.model small
.stack 100h    

.data
    mem16   SWORD   -30000
    
.code
    main proc
        MOV AX,@data
        MOV DS,AX
        
        mov     ax, 50
        
        imul    mem16 
        
        mov BX, AX
        
          
        MOV AH,2
        MOV DX,BX
        INT 21h
        
        
        main endp
    end main

