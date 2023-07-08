.model small
.stack 100h  

.data
    msg db 10,13,'not palindrome $'
    msgx db 10,13,'palindrome $'
    msg1 db  'abcba$'
    msg2 db  'abcba$'
    msg3 db 5 dup (?), '$'   
    
.code
    main proc      
        
    mov ax,@data
    mov ds,ax 
    mov es,ax
    
    lea si,msg2
    add si,4
    
    lea di,msg3
    std  
    
    mov cx,5
    l1:
        movsb
        add di,2
        loop l1 
        
    lea dx,msg3
    mov ah,9
    int 21h    
    
    lea si,msg2
    lea di,msg3
    
    cld
       
    mov cx,5
    repe cmpsb
    je pd
             
    npd:
        lea dx,msg
        mov ah,9
        int 21h
        jmp finish          
    
    pd:
        lea dx,msgx
        mov ah,9
        int 21h
        jmp finish 
        
    
      
       
    finish:
      
     
    main endp
end main