/*This is the Magma Code for the article Monodromy and Period Map of the Winger Pencil II: $E$-part./*
/*You could copy it to the following site http://magma.maths.usyd.edu.au/calc/ and get the result./*
/* Presentation for SL(2,O) */
G<z, s, m, t, e> := Group<z, s, m, t, e | z^2, (z,s), (z,m), (z,t), (z,e), s^2*z, (s*t)^3, (s*m)^2*z, (t, e), m*t*m^-1=t*e, m*e*m^-1=t*e^2, s*e*s=t*e^-1*s*e^-1*m*z>; 

/* Define the monodromy subgroup */
strc:=e^2*t^-3;
sedg:=e^-2*t^2*s*e^-2*s;
ppp:=z*s*e^2*t^-1*s;
H := Rewrite(G, sub<G | strc, sedg, ppp>);
/* Compute the index */
printf "The index of H in G is:\n%o\n\n", Index(G, H);
