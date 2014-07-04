org 100h
jmp START
START:

;Implementing multiplication by multiple additions
mov ax, 8	;second run ax=8;
mov bx, 3   ;second run bx=3;
mov cx, 0	;loop ctr
mov dx, 0	;temp to switch two inputs
	;put the larger  number in ax and dx
	;put the smaller number in bx
  	 cmp ax,bx
  	 JL  label1	;if ax<bx
  	 JG exit1
	exit1:
	jmp FALSE_PART;
	label1:
	jmp TRUE_PART;
	TRUE_PART:
	    mov dx, bx
        mov bx, ax
        mov ax, dx
		jmp END_IF_ELSE;

	FALSE_PART:
		mov dx, ax
	
	END_IF_ELSE:;
	;Initialize 
	;cx to bx-1
	MOV cx, bx 
	dec cx
	;store the product in ax
    
FOR_INITIALIZATION:				
		jmp FOR_CONDITION;

	FOR_TOP:
	    label2:
	    ADD ax, dx
	    DEC cx
	FOR_CONDITION:  
		CMP cx,0
		JG label2
		JLE label3
		label3: 
		END_FOR:
	exit:
	hlt