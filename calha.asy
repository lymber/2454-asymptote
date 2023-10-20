import solids;

size(10cm);

currentprojection=orthographic(2,3,3/4);
limits((-1.5,-1.5,-1),(3,1.5,2));

currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparency
//currentlight.background=black+opacity(0);

path3 elipse=scale(1,1/sqrt(2),1)*arc(O,Y,-Y,normal=X,direction=CW);
surface rampinha=extrude(shift(-1,0,-1)*elipse,shift(2,0,2)*elipse);
path3 nivel=shift(1/2,0,0)*scale(1,1/sqrt(2),1)*arc(O,Y,-Y,normal=Z,direction=CW);

draw(surface(plane(3.5*X,3*Y,-X-3*Y/2+Z/2)), orange+opacity(0.4));
draw(rampinha, lightblue);
draw(nivel, red);
draw(shift(0,0,1/2)*nivel, orange);
draw(-1.5*X+1/sqrt(2)*Y -- 3*X+1/sqrt(2)*Y, dashed);
draw(-1.5*X-1/sqrt(2)*Y -- 3*X-1/sqrt(2)*Y, dashed);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
