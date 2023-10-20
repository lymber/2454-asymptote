import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(0,0,2),(2,-2,-2));
// uncomment for transparency
//currentlight.background=black+opacity(0);

surface cilelip=scale(0.5,1,3.5)*shift(0,0,-0.5)*surface(unitcylinder);

path3 reta=graph(new triple(real z) {
    return (1,0,z);},-1,1,20,operator ..);

draw(cilelip,lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*circle((0,0,1),1,Z),lightgreen);
draw(scale(0.5,1,0.75)*reflect(O,X,Y)*circle((0,0,1),1,Z),lightgreen);
draw(scale(0.5,1,1.75)*reta,lightgreen);
draw(reflect(O,Y,Z)*scale(0.5,1,1.75)*reta,lightgreen);
draw(scale(0.5,1,1.75)*rotate(90,Z)*reta,lightgreen);
draw(scale(0.5,1,1.75)*reflect(O,X,Z)*rotate(90,Z)*reta,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
