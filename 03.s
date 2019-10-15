    B main

hello DEFB "Hello World\n",0
bye   DEFB "Goodbye Universe\n",0

    ALIGN
main ADR R0, hello
     SWI 3
     ADR R0, bye
     SWI 3

     B main
