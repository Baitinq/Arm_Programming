        B start


verse	DEFW	4
menmow  DEFB 	"went to mow\n",0
mowdow  DEFB    "Went to mow a meadow\n",0
men     DEFB    "men",0
man     DEFB    "man",0
comma   DEFB    ",",0
nl      DEFB    "\n",0
space   DEFB    " ",0
and_dog DEFB    "and his dog, Spot",0

        
        ALIGN
start   MOV R1, #0
        MOV R2, #4

;4 men went to mow
main    SUB R2, R2, #1
	ADR R0, R2
        SWI 3
        ADR R0, space
        SWI 3
        ADR R0, men
        SWI 3
        ADR R0, menmow

;Went to mow a meadow\n
        ADR R0, mowdow
        SWI 3

;4 men, X men,
        ; R2 is the number from 4 to 1
        ADR R0, R2
        SUB R0, R0, R1
        CMP R0, #1 ;i need 2 counters
        ADD R1, R1, #1 ;increase the substract value
        SWI 4
       	 
        BEQ singlr

	ADR R0, men
	SWI 3
        
        B main

        ADR R0, mowdow
        SWI 3
        
        CMP R2, #4
        BST main

        SWI 2  

singlr  ADR R0, man
	SWI 3
	
	B main
