program interseccion;

types:

	Tipocoor=record
	{
	x:int;
	y:int;
	};
	Tiporectangulo= record
	{
	esquinasup:Tipocoor;
	esquinainf : Tipocoor;
	};

consts:

rectangulo1=Tiporectangulo(Tipocoor(5,5),  Tipocoor(10,10));
rectangulo2=Tiporectangulo(Tipocoor(8,8),  Tipocoor(12,12));

function esRestangulo(rectangulo:Tiporectangulo):bool
{

return(rectangulo.esquinasup.x<rectangulo.esquinainf.x and rectangulo.esquinasup.y<rectangulo.esquinainf.y);

}

procedure solucion(rectangulo1:Tiporectangulo,rectangulo2:Tiporectangulo)
ancho:int;
largo:int;
{

ancho=rectangulo1.esquinainf.y-rectangulo2.esquinasup.y;
largo=rectangulo1.esquinainf.x-rectangulo2.esquinasup.x;

if(ancho==largo)
{
write("El area de la interseccion es: ");
writeln( ancho * largo);

}

}

procedure main()
escierto1:bool;
escierto2:bool;
{

escierto1=esRestangulo(rectangulo1);
escierto2=esRestangulo(rectangulo2);

if(escierto1 and escierto2)
{
	solucion(rectangulo1,rectangulo2);
}
else
{
writeln("Rectangulos invalidos");
}

}

