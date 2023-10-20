import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

path3 hipxz=graph(new triple(real z) {
    return (sqrt(1+z*z),0,z);},-2,2,20,operator ..);

revolution hip1frame=revolution(hipxz,axis=Z);
surface hiperboloide1f=scale(0.5,1,0.75)*surface(hip1frame);

draw(hiperboloide1f, lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*circle((0,0,0), 1,Z),lightgreen);
draw(scale(0.5,1,0.75)*hipxz,lightgreen);
draw(reflect(O,Y,Z)*scale(0.5,1,0.75)*hipxz,lightgreen);
draw(scale(0.5,1,0.75)*rotate(90,Z)*hipxz,lightgreen);
draw(reflect(O,X,Z)*scale(0.5,1,0.75)*rotate(90,Z)*hipxz,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
