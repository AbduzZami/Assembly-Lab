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
              
    mov cx,5
    
    
    L1:  
        mov bx,1 
        
        lea dx,msg
        mov ah,9
        int 21h
        
        L2:
        mov dx,'*'
        mov ah,2
        int 21h 
        
        INC bx
        cmp bx,cx 
        JNG L2
        
        
        
        
        
        
        
        
        
        LOOP L1
      
     
    main endp
end main