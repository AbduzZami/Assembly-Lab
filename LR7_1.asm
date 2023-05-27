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
              
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    lea dx,msg2  
    mov ah,9
    int 21h
    
    cmp bl,'9'
    JG GR
    JNG LEEQ
    
    GR:
        mov ah,2
        mov dl,1
        add dl,48
        int 21h
        mov dl,bl
        
        sub dl,'A'  
        add dl,48
        mov ah,2
        int 21h
        JMP FINISH
        
    LEEQ:
        mov ah,2
        mov dl,bl
        int 21h
        JMP FINISH
        
    FINISH:
      
     
    main endp
end main