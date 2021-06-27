%{
int chars = 0;      // Contador de caracteres
int vals  = 0;      // Iterador de casillas de datos
int lines = 0;      // Iterador de lineas

int chars_mayor = 0;// Dato con mas numero de caracteres

int totchars = 0;   // Total de caracteres del Fichero - "\n"
int totvals  = 0;   // Total de casillas del csv
int totlines = 0;   // Total de lineas del csv
int totnums  = 0;   // Total de valores numericos

%}
%%
[a-zA-Z ]+ {vals++; chars += strlen(yytext); if(strlen(yytext) > chars_mayor) chars_mayor = strlen(yytext);}
[0-9]+     {vals++; totnums++; chars += strlen(yytext); if(strlen(yytext) > chars_mayor) chars_mayor = strlen(yytext);}
\n         {lines++;}
","        {chars += 1;}
.
%%
int main() {
    int error = yylex();
	if (error == 0){
        totchars += chars;
        totlines += lines;
        totvals  += vals;
        totnums;
        chars_mayor;
        printf("C:%4d\nL:%4d\nV:%4d\nM:%4d\nN:%4d", totchars, totlines, totvals, chars_mayor, totnums);
	}
	return error;
}