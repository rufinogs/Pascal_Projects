program rectipo;

types: 
	
	TipoCoordenada = record
	{
		x: int;
		y: int;
	};
	
	TipoRect = record
	{
		supizq: TipoCoordenada;
		infdrch: TipoCoordenada;
	};


function rect1valid (r1: TipoRect): bool
{
	return (r1.infdrch.x > r1.supizq.x) and (r1.infdrch.y > r1.supizq.y);
}
function rect2valid (r2: TipoRect): bool
{
	 return (r2.infdrch.x > r2.supizq.x) and (r2.infdrch.y > r2.supizq.y);
}
procedure sol (rect1: TipoRect, rect2: TipoRect)
	base: int;
	altura: int;
{
	base = ((rect1.infdrch.x)-(rect2.supizq.x));
	altura = ((rect1.infdrch.y)-(rect2.supizq.y));
	
	if ((base > 0) and (altura > 0) and (base == altura)){
		writeln("EL AREA DE DE A INTERSECCION ES:");
		writeln( base * altura );
	}
}

consts:
	Rect1 = TipoRect(TipoCoordenada(5,5), TipoCoordenada(10,10));
	Rect2 = TipoRect(TipoCoordenada(8,8), TipoCoordenada(12,12));

procedure main()
{
	if ((not (rect1valid(Rect1))) or (not (rect2valid(Rect2)))){
		writeln("RECTANGULOS INVALIDOS");
	}
	
	if ((rect1valid(Rect1)) and (rect2valid(Rect2))) {
		 sol((Rect1),(Rect2));
	}else{
		writeln(" ");
	writeeol();
	}
}
