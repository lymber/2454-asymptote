import solids;

size(10cm);
currentprojection=orthographic(3,2,3);
limits((-2,-2,-2.5),(2,2,2.5));

currentlight=light(white,(0,0,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

path3 parxy=graph(new triple(real z) {
    return (z,z*z,-2);},-1.75,1.75,20,operator ..);

surface cilpar=scale(0.5,1,1)*surface(extrude(parxy,4Z));

path3 reta=graph(new triple(real z) {
    return (0,0,z);},-2,2,20,operator ..);

draw(cilpar,lightblue+opacity(0.8));
draw(scale(0.5,1,0.5)*parxy,lightgreen);
draw(scale(0.5,1,-0.5)*parxy,lightgreen);
draw(scale(0.5,1,0)*parxy,lightgreen);
draw(reta,lightgreen+1pt);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
