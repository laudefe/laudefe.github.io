%lex
%%

"//".*     	{/* ignore comment */}
\s+         {/* skip whitespace */}
\n+         {/* skip saltolinea */}
\r+         {/* skip saltolinea */}
\t+         {/* skip tab */}
"while"		{return 'WHILE';}
"for"       {return 'FOR';}
[A-Z]+		{return 'VAR';}
[0-9]+    	{return 'NUM';}
[a-z]+     	{return 'INDICE';}
"+"         {return '+';}
"-"         {return '-';}
"*"         {return '*';}
"/"         {return '/';}
"("         {return '(';}
")"         {return ')';}
"{"         {return '{';}
"}"         {return '}';}
"["         {return '[';}
"]"         {return ']';}
";"			{return ';';}
"="			{return '=';}
"<"			{return '<';}
<<EOF>>		{return 'EOF';}
.			{return 'SIMBOLO NO VALIDO';}



/lex

%%
Programa 	: Sentencia_iteracion EOF 
			;
			
Sentencia_iteracion	: IteracionFOR
					| IteracionWHILE
					;

IteracionFOR	:	EncabezadoFOR  '{' BloqueDeSentencias '}'
				;

IteracionWHILE	: 	EncabezadoWHILE '{' BloqueDeSentencias Incremento ';' '}'
				;
				
EncabezadoWHILE	: WHILE '(' Condicion ')'	{Niteraciones=calcularN(1,$3);}
				;
				
EncabezadoFOR 	: 	FOR '(' INDICE '=' NUM ';' Condicion ';' Incremento ')' {Niteraciones=calcularN($5,$7);}
				;
				
BloqueDeSentencias	:	BloqueDeSentencias Sentencia_asignacion 
					|	Sentencia_asignacion
					;

Condicion 	:	INDICE Comparador NUM	{$$=$3;}
			;

Comparador	:	'<' {comparador="menor";}
			|	'<' '='	{comparador="menori";}
			;
			
MasMenos	:	'+' 
			|	'-'
			;
			
Operador 	: 	MasMenos
			|	'*'
			| 	'/'
			;

Incremento 	: 	INDICE  '+' '+'
			;
		
Sentencia_asignacion 	:	Variable_asignacion '=' Expresion ';' {addSentencia();ladoDer=false;}
						;
						
Expresion	:	Expresion Operador Variable {addOperador($2);}
			|	Variable
			;

Variable_asignacion	:	VAR	{addVariable($1);ladoDer=true;}
					|	VAR '[' INDICE ']'	{addVariable($1+"["+$3+"]");ladoDer=true;}
					;
						
Variable	:	Variable_asignacion
			|	VAR '[' INDICE MasMenos NUM ']' {if ($4 != "+") addVariable($1+$2+$3+$4+$5+$6);}
			|	NUM	
			;
%%

var listaSentencias;
var listaDependencias;
var listaOperadores;
var variableAsignacion;
var nSentencia;
var ladoDer;
var comparador;
var Niteraciones;

function addVariable(v) {
	if (ladoDer)
		listaDependencias.push(v);
	else	variableAsignacion=v;
}

function addSentencia(){
	var id = 'S'+ nSentencia;
	var dep = listaDependencias.slice();
	var op= listaOperadores.slice();
	var s =	[id,variableAsignacion,dep,op];
	listaSentencias.push(s);
	reset();
	nSentencia++;
}

function addOperador(o){listaOperadores.push(o);}

function calcularN(inicio,fin){
	n=0;	
	if (parseInt(inicio) <= parseInt(fin)){
		n=fin-inicio;
		if (comparador == "menori")
			n=n+1;
	}
	return n;
}

this.reset = function(){
	while (listaDependencias.length) 
		listaDependencias.pop();
	while (listaOperadores.length) 
		listaOperadores.pop();
}

this.inicializarEstructuras = function(){
	Niteraciones=0;
	listaSentencias=[];
	nSentencia=1;
	listaDependencias = [];
	listaOperadores = [];
	variableAsignacion='';
	ladoDer = false;
}

this.getNIteraciones = function(){return Niteraciones;}
this.getSentencias = function(){return listaSentencias;}
