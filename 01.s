    B main


green_bottles   DEFB " green bottles",0
hanging DEFB " hanging on the wall",0
comma   DEFB ",\n",0
line3   DEFB "And if one green bottle should accidentally fall,\n",0
line4   DEFB "There will be ",0
stop    DEFB ".\n",0

        ALIGN
main    MOV R0,#10
        SWI 4
        ADR R0,green_bottles
        SWI 3
        ADR R0,hanging
        SWI 3
        ADR R0,comma
        SWI 3
        
        MOV R0,#10
        SWI 4
        ADR R0,green_bottles
        SWI 3
        ADR R0,hanging
        SWI 3
        ADR R0,comma
        SWI 3

        ADR R0, line3
        SWI 3
        
        ADR R0, line4
        SWI 3
        MOV R0, #9
        SWI 4
        ADR R0,green_bottles
        SWI 3
        ADR R0,hanging
        SWI 3
        ADR R0,stop
        SWI 3

        SWI 2  
