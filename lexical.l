%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
"DEBUT"                       { printf("Mot clé DEBUT\n"); }
"FIN"                         { printf("Mot clé FIN\n"); }
"EXECUTION"                   { printf("Mot clé EXECUTION\n"); }
"TANTQUE"                     { printf("Mot clé TANTQUE\n"); }
"SI"                          { printf("Mot clé SI\n"); }
"ALORS"                       { printf("Mot clé ALORS\n"); }
"SINON"                       { printf("Mot clé SINON\n"); }
"FAIRE"                       { printf("Mot clé FAIRE\n"); }
"NUM"                         { printf("Type NUM\n"); }
"REAL"                        { printf("Type REAL\n"); }
"TEXT"                        { printf("Type TEXT\n"); }
"FIXE"                        { printf("Mot clé FIXE\n"); }
"<-"                          { printf("Opérateur d'affectation\n"); }
[0-9]+                        { printf("Nombre entier : %s\n", yytext); }
[0-9]+\.[0-9]+                { printf("Nombre réel : %s\n", yytext); }
\"[^\"]*\"                    { printf("Chaîne de caractères : %s\n", yytext); }
[A-Z_][A-Z0-9_]{0,9}          { printf("Identificateur : %s\n", yytext); }
"--"[^#]*"##"                { printf("Commentaire ligne : %s\n", yytext); }
"{-"[^-]*"-}"                { printf("Commentaire multi-lignes : %s\n", yytext); }
"affiche"                     { printf("Mot clé affiche\n"); }
"lire"                        { printf("Mot clé lire\n"); }
"+"                           { printf("Opérateur addition\n"); }
"-"                           { printf("Opérateur soustraction\n"); }
"*"                           { printf("Opérateur multiplication\n"); }
"/"                           { printf("Opérateur division\n"); }
"=="                          { printf("Opérateur égalité\n"); }
"!="                          { printf("Opérateur inégalité\n"); }
">"                           { printf("Opérateur supérieur\n"); }
">="                          { printf("Opérateur supérieur ou égal\n"); }
"<"                           { printf("Opérateur inférieur\n"); }
"<="                          { printf("Opérateur inférieur ou égal\n"); }
[ \t\n]+                      { /* Ignorer les espaces, tabulations et nouvelles lignes */ }
.                             { printf("Caractère non reconnu : %s\n", yytext); }
%%

int main() {
   
    yylex();
    return 0;
}

