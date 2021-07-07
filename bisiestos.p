program esbisiesto;

 

	
function añobisiesto (a: int): bool

{
	return ((a % 4) == 0 and ((a % 100) != 0 or (a % 400) == 0));
}
	
           
procedure main()

	a: int;
    b: int;
     
{
     
     
     readln(a);
     readln(b);
           
	writeln(añobisiesto(a));
	writeln(añobisiesto(b));
           
}
