# Analisador Léxico

Analisador Flex para reconhecer a seguinte linguagem:

- Palavras Chave		
- Simbolos especiais		
- Identificadores ID e NUM		
- Espaços em branco		
- Comentários

### Regras: 
- Palavras Chave:
       ```if else int void return while ```
- Simbolos especiais: 	```ID``` ```{Letra}{letra}*``` ```{Dígito}{Dígito}* ``` 

### Execução		
Para executar será necessário ter instalado o Flex ou Lex [FLEX](http://flex.sourceforge.net/) e [GCC](https://gcc.gnu.org/)

       $ flex trabalho1.l 
       $ cc lex.yy.c -ll -o trabalho1 
       $ ./trabalho1


### Exemplo de entrada 
	void main(void){ 
		int x;
		int y; int z;
		x = 5; 
		y = 10; 
	}

### Saída 
	void, ID, (, void, ), {, int, ID, ;, int, ID, ;, int, ID, ;, ID, =, NUM, ;, ID, =, NUM, ;, },
