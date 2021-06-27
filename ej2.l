%{
	int contador = 0;
%}
%%
hotmail	{contador++;printf("hotmail.com");}
%%
int main() {
	int error = yylex();
	if (error == 0){
		printf("Total de hotmail: %d\n", contador);
	}
	return error;
}
