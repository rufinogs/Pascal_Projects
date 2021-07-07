program rect;

function cordvalid (px1: int, py1: int, px2: int, py2: int, px3: int, py3: int, px4: int, py4: int): bool
{ 
	return (px1 > 0) and (py1 > 0) and (px2 > 0) and (py2 > 0) and (px3 > 0) and (py3 > 0) and (px4 > 0) and (py4 > 0);
}

function rect1valid (x1: int, x2: int, y1: int, y2: int): bool
{
	return ((x2 > x1) and (y2 > y1));
}
	
function rect2valid (x3: int, x4: int, y3: int, y4: int): bool
{
	return ((x4 > x3) and (y4 > y3));
}

function base (drcha: int, izq: int): int
{ 
	return (drcha - izq);
}

function altura (arriba: int, abajo: int): int
{ 
	return (abajo - arriba);
}

function areacuad (l: int): int
{
	return (l ** 2);
}

function puntobase1izq (a: int, b:int): int
{
	if (a > b){ 
		
		return a;
	
	}else{
		
		return b;
	}
}


function puntobase2derecha (c: int, d: int): int
{
	if (c < d){

	return c; 

	}else{ 
		
		return d;
	}
}

function puntoarribaltura (p1: int, p2: int): int
{
	if (p2 > p1){
	
		return p2;
	
	}else{
		
		return p1;
	}
}

function puntoabajoaltura (p3: int, p4: int): int
{
	if (p3 < p4){
	
		return p3;
	
	}else{
		
		return p4;
	}
}
consts:

	R1EZX = 5;
	R1EZY = 5;
	R1EDX = 10;
	R1EDY = 10;																					

	R2EZX = 8;
	R2EZY = 8;
	R2EDX = 12;
	R2EDY = 12;
	
procedure main()
{	
	if ( (not (rect1valid(R1EZX,R1EDX,R1EZY,R1EDY))) or (not (rect2valid(R2EZX,R2EDX,R2EZY,R2EDY))) or (not (cordvalid(R1EZX,R1EZY,R1EDX,R1EDY,R2EZX,R2EZY,R2EDX,R2EDY)))){
		
		writeln("rectangulos invalidos");
	}
	
	if ((((base(puntobase2derecha(R1EDX,R2EDX), puntobase1izq(R1EZX,R2EZX))) > 0) and (altura(puntoarribaltura(R1EZY,R2EZY), puntoabajoaltura(R1EDY,R2EDY))) > 0) and 
		
		(((altura(puntoarribaltura(R1EZY,R2EZY), puntoabajoaltura(R1EDY,R2EDY))) == (base(puntobase2derecha(R1EDX,R2EDX), puntobase1izq(R1EZX,R2EZX)))))){
	
		write("Area del cuadrado:");
		writeln(areacuad((base(puntobase2derecha(R1EDX,R2EDX), puntobase1izq(R1EZX,R2EZX)))));
	
	}else{
		
		writeln(" ");
	}
}	
		
	
