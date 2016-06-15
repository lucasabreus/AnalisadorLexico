%{
#include <stdio.h>
#include <stdlib.h>
int ligado = 0,caso = 0;
%}
operador "if"|"else"|"int"|"void"|"return"|"while"
simboloduplo "<="|">="|"=="|"!="
simbolounico [\+|\-|\*|\/|\<|\>|\,|\;|\(|\)|\[|\]|\{|\}|\=]
abrecomentario "/*"
fechacomentario "*/"
simbolo {simboloduplo}|{simbolounico}
letra [a-z]|[A-Z]
digito [0-9]
id {letra}{letra}*
num {digito}{digito}*
branco [ \t\n]

%%
{abrecomentario} { ligado = 1; }
{fechacomentario} { ligado = 0; }
{operador} { if ( ligado == 0 ) printf("%s\n",yytext); }
{simbolo} {  if ( ligado == 0 ) printf("%s\n",yytext); }
{id} { if ( ligado == 0 ) printf("ID\n"); }
{num} { if ( ligado == 0 ) printf("NUM\n"); }
{branco} {}
%%
