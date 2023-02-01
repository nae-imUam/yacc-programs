
%{
#include "ques9.tab.h"
#include<stdio.h>
#include<stdlib.h>
%}
%token NUM VAR NL
%%

%left '+' '-' '*' '/' ;
S : S1 NL{printf("\nValid Expression\n");return 0;}
S1 : S1'+'S1|S1'-'S1|S1'/'S1|S1'*'S1|'('S1')'|VAR|NUM|;
%%
int main(){
printf("\nEnter an Expression :: ");
yyparse();
return 0;
}
int yywrap(){return 1;}
int yyerror(){
printf("\nInvalid Expression\n");
exit(1);
}