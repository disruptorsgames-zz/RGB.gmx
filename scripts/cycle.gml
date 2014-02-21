/// cycle(value, min, max)
d = argument2 - argument1;
v = (argument0 - argument1) mod d;
if (v < 0)
    v += d;
    
return (argument1 + v);
