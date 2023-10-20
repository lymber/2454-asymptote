import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

path3 hipxz=graph(new triple(real z) {
    return (0,z,sqrt(1+z*z));},-2,2,20,operator ..);

revolution hip2frame=revolution(hipxz,axis=Z);
surface hiperboloide2f=scale(0.5,1,0.75)*surface(hip2frame);

draw(hiperboloide2f, lightblue+opacity(0.8));
draw(reflect(O,X,Y)*hiperboloide2f, lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*circle((0,0,3/2),sqrt(5)/2,Z),lightgreen);
draw(reflect(O,X,Y)*scale(0.5,1,0.75)*circle((0,0,3/2),sqrt(5)/2,Z),lightgreen);
draw(scale(0.5,1,0.75)*hipxz,lightgreen);
draw(reflect(O,X,Y)*scale(0.5,1,0.75)*hipxz,lightgreen);
draw(scale(0.5,1,0.75)*rotate(90,Z)*hipxz,lightgreen);
draw(reflect(O,X,Y)*scale(0.5,1,0.75)*rotate(90,Z)*hipxz,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
