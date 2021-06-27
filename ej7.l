%%
IE*(E*NE*NE*NE*NE*)*F			printf("--%s--",yytext);    // Multiplos de 4
IE*NE*NE*(E*NE*NE*NE*NE*)+F		printf("-%s-",yytext);      // Pares que no son multiplos de 4
IE*NE*(E*NE*NE*)*F				printf("*%s*",yytext);      // Impares
%%