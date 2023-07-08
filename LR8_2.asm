.model small
.stack 100h  

.data
    msg db 10,13,'$'
    msg1 db  10,13,' enter number $'
    msg2 db  10,13,' in dec it is $'
    a dw ?   
    
.code
    main proc      
        
    mov ax,@data
    mov ds,ax   
              
    xor bx,bx
    
    mov cx,15
    
    l1:
        mov ah,1
        int 21h  
        
        cmp al,0dh
        je l2
        
        sub al,48
        
        shl bx,1
        or bl,al
        
        jmp l1 
    
    xor dx,dx
        
    l2:  
        
        shr bx,1  
        
        
        jc one
        jnc zero
        
        one:
            shl dx,1
            or dx,1b
            jmp finish
            
        zero:
            shl dx,1
            or dx,0b
            jmp finish
            
        finish:
        loop l2  
        
    
    mov cx,15
    mov bx,1  
    mov ax,0
    
    l3:   

        
      
     
    main endp
end main