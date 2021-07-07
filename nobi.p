program diasañonobisisieto;

function esbisiesto(a: int): bool

{
	return ( a % 4 ) == 0 and (( a % 10) != 0 or (a % 400) == 0 );
}


procedure main()

	año1: int;

{
	writeln( "INTRODUZCA LA FECHA");
	 
	readln(año1);
	
	if (esbisiesto(año1)){
		
		write( "DIAS NO BISIESTO" );
		writeln(364);
		
	}else{
	
		writeln( "DIAS BISIESTO" );
	
		writeln(365);
		
	}
	
}
