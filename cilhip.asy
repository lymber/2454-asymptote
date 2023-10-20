import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(0,0,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

path3 hipxy=graph(new triple(real z) {
    return (z,sqrt(1+z*z),-2);},-2,2,20,operator ..);

surface cilhip=scale(0.5,1,1)*surface(extrude(hipxy,4Z));

path3 reta=graph(new triple(real z) {
    return (0,1,z);},-2,2,20,operator ..);

draw(cilhip,lightblue+opacity(0.8));
draw(reflect(O,X,Z)*cilhip,lightblue+opacity(0.8));
draw(scale(0.5,1,0.5)*hipxy,lightgreen);
draw(scale(0.5,1,0.5)*reflect(O,X,Z)*hipxy,lightgreen);
draw(scale(0.5,1,-0.5)*hipxy,lightgreen);
draw(scale(0.5,1,-0.5)*reflect(O,X,Z)*hipxy,lightgreen);
draw(scale(0.5,1,0)*hipxy,lightgreen);
draw(scale(0.5,1,0)*reflect(O,X,Z)*hipxy,lightgreen);
draw(reta,lightgreen);
draw(reflect(O,X,Z)*reta,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
