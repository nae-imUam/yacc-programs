%option noyywrap
%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "ques10.tab.h"
%}

%%
[a-z] { return L; }
[0-9] { return D; }
\n { return 0; }
. { return yytext[0]; }
%%