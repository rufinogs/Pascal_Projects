program complex;

types:
	TipoComplejo = record 
	{
		real: float;
		img: float;
	};
	
function nuevocomplejo( real: float, img: float): TipoComplejo
	c: TipoComplejo;
{
	c.real = real;
	c.img = img;
	return c;
}
function modulocomplejo ( c: TipoComplejo): float
{
	 return sqrt(c.real**2.0 + c.img**2.0);
}

procedure compararcomplejo ( ref complejo1: TipoComplejo, complejo2: TipoComplejo)
	moduloc1: float;
	moduloc2: float;
{
	moduloc2 = modulocomplejo(complejo2);
	moduloc1 = modulocomplejo(complejo1);
	
	if (moduloc2 > moduloc1){
		complejo1 = complejo2;
	}
}

procedure escribircomplejo ( c: TipoComplejo)
{
	write(c.real);
	write(" + ");
	write(c.img);
	write("i");
	writeeol();
}

procedure leercomplejo (ref c: TipoComplejo)
	real: float;
	img: float;
{
	writeln("ESCRIBE UN NUMERO COMPLEJO:");
		writeln("INTRODUCE PARTE REAL:");
		readln(real);
		writeln("INTRODUCE PARTE IMAGINARIA:");
		readln(img);
		c = nuevocomplejo(real,img);
	

}
procedure main()
	n: TipoComplejo;
	r: TipoComplejo;
	
{
	r = TipoComplejo(0.0,0.0);
do{	
		leercomplejo(n);
		escribircomplejo(n);
		compararcomplejo(r,n);
	}while (n.real != 0.0 or n.img != 0.0);
		escribircomplejo(r);

}
