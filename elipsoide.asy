import solids;
import palette;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(2,2,2),(2,-2,-2));
//uncomment for transparency
//currentlight.background=black+opacity(0);

surface elipsoide=scale(0.5,1,0.75)*surface(unitsphere);

draw(elipsoide, lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*circle((0,0,0), 1,Z),lightgreen);
draw(scale(0.5,1,0.75)*circle((0,0,0), 1,Y),lightgreen);
draw(scale(0.5,1,0.75)*circle((0,0,0), 1,X),lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
