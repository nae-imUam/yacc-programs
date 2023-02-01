%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "ques10.tab.h"
%}
%token D L
%%
S : X Y { printf("VALID IDENTIFIER\n"); return 0;}
X : L X|;
Y : D Y|;
%%
int main()
{
 printf("\n Enter identifier\n");
yyparse();
return 0;
}
int yywrap(){}
int yyerror(){
printf("\nInvalid Identifier\n");
exit(1);
}