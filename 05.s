        B setvar


verse	DEFW	2
menmow  DEFB 	" went to mow\n",0
mowdow  DEFB    "Went to mow a meadow\n",0
men     DEFB    "men",0
man     DEFB    "man",0
comma   DEFB    ",",0
nl      DEFB    "\n",0
space   DEFB    " ",0
and_dog DEFB    "and his dog, Spot.",0

        
        ALIGN
setvar  MOV R1, #0
        ADR R2, 5

main    SUB R2, R2, #1

        CMP R2, #0

        BGT versemn

        SWI 2


versemn MOV R0, R2
        SWI 4
        ADR R0, space
        SWI 3
        
        CMP R2, #1
        BEQ sglrvr
        
        ADR R0, men ;
        SWI 3

contvr  ADR R0, menmow
        SWI 3
        
        ADR R0, mowdow
        SWI 3
        
        MOV R3, R2
        B verselp

contin  ADR R0, nl
        SWI 3
        ADR R0, mowdow 
        SWI 3
        ADR R0, nl
        SWI 3

        B main

verselp MOV R0, R3
        SWI 4
        ADR R0, space
        SWI 3
        
        CMP R3, #1
        BEQ singlr

        ADR R0, men
        SWI 3
        ADR R0, comma
        SWI 3

contver ADR R0, space
        SWI 3

        SUB R3, R3, #1
        
        CMP R3, #0
        BEQ contin
        B verselp

singlr  ADR R0, man
        SWI 3
        ADR R0, space
        SWI 3
        ADR R0, and_dog
        SWI 3
    
        B contver

sglrvr  ADR R0, man
        SWI 3
        B contvr
