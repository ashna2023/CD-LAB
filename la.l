%{
#include<stdio.h>
%}
keyword int|void|while|do|for
iden ([a-zA-Z])([a-zA-Z0-9])*
ropr <|<=|>|>=|==
pun [;,{},()]
con ([0-9])([0-9])*
aopr [-+*/]

ass =
%%
{keyword} {printf("%s is a keyword\n",yytext);}
{iden} {printf("%s is a identifier\n",yytext);}
{ropr} {printf("%s is a relational operator\n",yytext);}
{pun} {printf("%s is a punctuation\n",yytext);}
{con} {printf("%s is a constant\n",yytext);}
{aopr} {printf("%s is a arithmetic operator\n",yytext);}
{ass} {printf("%s is a assignment operator\n",yytext);}
%%
void main(){
printf("enter a string");
yylex();
}
int yywrap(){
return 1;
}
