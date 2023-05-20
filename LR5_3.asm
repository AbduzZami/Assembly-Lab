.model small
.stack 100h  

.data
    msg db 10,13,'$'
    msg1 db  ' is even $'
    msg2 db  ' is odd $'
    a dw ?   
    
.code
    main proc      
        
    mov ax,@data
    mov ds,ax   
    
    mov cx,10
    mov dx,48   
    
    L1: 
    mov ah,2
    int 21h 
      
    mov a,dx
    mov ax,dx 
    mov bl,2h
    
    div bl  
    
    mov bx,ax
    
    cmp ah,0
    
    JZ even
    JNZ odd 
    
    even:
    lea dx,msg1
    mov ah,9
    int 21h 
    JMP L2
    
    odd:
    lea dx,msg2
    mov ah,9
    int 21h
    JMP L2
    
    L2: 
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov dx,a
    inc dx
    dec cx 
    
    JNZ L1  
     
    main endp
end main