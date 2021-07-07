program tres;

consts:
	MaxTab = 3;
types:

	TipoFilas = array [0..MaxTab-1] of char;
	TipoTablero = array[0..MaxTab-1] of TipoFilas;

procedure inicializartablero(ref t: TipoTablero)
	i: int;
	j: int;
{
	for (i = 0, i < MaxTab){
		for (j = 0, j < MaxTab){
		  t[i][j] = '#';
		}
	}
}

/*
procedure leertablero(ref t: TipoTablero, ref f: file)
	
{
	
}
*/
procedure imprimirtablero(f: TipoTablero)
	fichfichas: file;
	c: char;
	cord1: char;
	cord2: char;
	p: int;
	i: int;
	j: int;
	k: int;
	l: int;
	t: TipoTablero;
{
	open(fichfichas, "fichas.txt", "r");
	p = 0;
	do{
		fpeek(fichfichas,c);
		switch(c){
		case Eol:
			freadeol(fichfichas);
		case Eof:
			;
		default:
			fread(fichfichas,c);
			
		if(p == 0){
			cord1 = c;
		}else if (p == 1){ 
			cord2 = c;
		}
		if (p == 2){
			switch(cord1){
			case 'A':
				k = 0;
			case 'B':
				k = 1;
			case 'C':
				k = 2;
			}
			switch(cord2){
			case 'A':
				l = 0;
			case 'B':
				l = 1;
			case 'C':
				l = 2;
			t[k][l] = c;
		if(p == 3){
			cord1 = c;
			cord2 = c;
		}
			}
		}
	}	
	p = p + 1;
	}while(not feof(fichfichas));
	close(fichfichas);
	
	for (i = 0, i < MaxTab){
		for (j = 0, j < MaxTab){
			write(t[i][j]);
		}
		writeeol();
	}

}


procedure main()
	fichfichas: file;
	t: TipoTablero;
	
{
	inicializartablero(t);
	imprimirtablero(t);
}

















