program volumenesfera;

consts:

	Pi = 3.1416;
	
function vol (a: float): float
{
	return ((4.0/3.0 * Pi)* a ** 3.0);

}


procedure main()

	r1: float;

{
	readln(r1);
	writeln("VOLUMEN DE LA ESFERA");
	writeln(vol(r1));
	
}
