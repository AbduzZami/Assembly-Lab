.model small
.stack 100h  

.data
    msg db 10,13,'$'
    msg1 db  ' is prime $'
    msg2 db  ' is not prime $'
    a dw ?   
    
.code
    main proc      
        
    mov ax,@data
    mov ds,ax  
    
      
    mov cx,20   
    
    L: 
    
    
    
    mov dx,cx
    mov bl,1 
    
    
    
    L1:
        inc bl
        mov bh,0
        cmp bx,cx
        
        jz PRIME
        
        mov ax,dx
        div bl
        cmp ah,0
        
        jz NOTPRIME   
        jmp L1
        
    
    PRIME:     
        
        
         
        mov ax,cx  
        
        
        add ah,48
        
        mov dl,ah
        mov ah,2
        int 21h     
            
        mov ax,cx
        
        add al,48
        mov dl,al
        mov ah,2
        int 21h
        
        
        
        
        
        
        
        lea dx, msg1 
        mov ah,9
        int 21h 
        jmp FINISH   
        
    NOTPRIME: 
    
        mov ax,cx
      
        add ah,48
        
        mov dl,ah
        mov ah,2
        int 21h      
           
        mov ax,cx
        
        add al,48
        mov dl,al
        mov ah,2
        int 21h
        
         
       
        
        lea dx, msg2 
        mov ah,9
        int 21h 
        jmp FINISH  
        
    
        
         
    FINISH:
    
        lea dx, msg 
        mov ah,9
        int 21h 
            
        INC CX
        cmp cx,50
        jz LAST
        jnz L 
        
        
        
    LAST:
        mov ah,4ch
        int 21h
      
     
    main endp
end main