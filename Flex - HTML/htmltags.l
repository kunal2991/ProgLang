%{

	#include<stdio.h>
	#include<stdlib.h>

%}
start <[a-z]*[0-9]*
brackend <\/[a-z]*[0-9]*
backbrackend <[a-z]*[A-Z]*[0-9]*[ ]\/
exclamation <![A-Z]*[ ][a-z]*
end >
%%
[\t]+
{start}{end} ECHO;
{brackend}{end} ECHO;
{exclamation}{end} ECHO;
{backbrackend}{end} ECHO;
\n ECHO;
.|\n ;
%%

main (int argc, char** argv)
{
	if(argc > 1){
		FILE *file;
		file = fopen(argv[1], "r");

		if(!file) {
			fprintf(stderr, "Could not open %s \n", argv[1]);
			exit(1);
			}
		
		yyin = file;
		yyout = fopen("output.txt","w");
	}
	yylex();
	fclose(yyin);
	fclose(yyout);
}
