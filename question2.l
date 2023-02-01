%{
#include<stdio.h>
#include "question2.tab.h"
%}
%%
[a] {return A;}
[b] {return B;}
\n {return NL;}
. {return yytext[0];}
%%