import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-1,-1,-1),(1,1,1));

currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

revolution conec=cone(-Z,1,1);

surface cone=scale(0.5,1,0.75)*surface(surface(conec),reflect(O,X,Y)*surface(conec));

path3 reta=graph(new triple(real z) {
    return (z,0,z);},-1,1,20,operator ..);

draw(cone,lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*circle((0,0,1/2),1/2,Z),lightgreen);
draw(scale(0.5,1,0.75)*reflect(O,X,Y)*circle((0,0,1/2),1/2,Z),lightgreen);
draw(scale(0.5,1,0.75)*reta,lightgreen);
draw(reflect(O,Y,Z)*scale(0.5,1,0.75)*reta,lightgreen);
draw(scale(0.5,1,0.75)*rotate(90,Z)*reta,lightgreen);
draw(scale(0.5,1,0.75)*reflect(O,X,Z)*rotate(90,Z)*reta,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
