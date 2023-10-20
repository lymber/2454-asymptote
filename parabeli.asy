import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-0.5),(2,2,3.5));

currentlight=light(white,(0,0,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

path3 parayz=graph(new triple(real z) {
    return (0,z,z*z);},-2,2,20,operator ..);

revolution paraframe=revolution(parayz,axis=Z);
surface paraboloideeli=scale(0.5,1,0.75)*surface(paraframe);

draw(paraboloideeli, lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*circle((0,0,5/2),sqrt(5/2),Z),lightgreen);
draw(scale(0.5,1,0.75)*parayz,lightgreen);
draw(scale(0.5,1,0.75)*rotate(90,Z)*parayz,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
