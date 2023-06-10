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
        
    l2:  
        
        shr bx,1
        
        jc one
        jnc zero
        
        one:
            mov dl,49
            mov ah,2
            int 21h
            jmp finish
            
        zero:
            mov dl,48
            mov ah,2
            int 21h
            jmp finish
            
        finish:
        loop l2 
      
     
    main endp
end main