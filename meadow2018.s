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
;4 men went to mow\n
start   MOV R1, #0
main    ADR R0, verse
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
        


        ADR R0, mowdow
        SWI 3

        ADR R0, verse
        SUBS R0, R0, R1 ; SUBS
        ADD R1, R1, #1 ;increase the substract value
        SWI 4
        
        BHI #0 print_plural
        BEQ #0 singular

        SWI 2  


singular  


        B main

plural

    B main
