import graph3;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(2,2,2),(2,-2,-2));
//Uncomment for thsnparecy
//currentlight.background=black+opacity(0);

real f(pair z){
  return z.y**2-z.x**2;
}

path3 parab=graph(new triple(real z) {
    return (0,z,z*z);},-1.75,1.75,20,operator ..);
path3 reta=graph(new triple(real z) {
    return (z,z,0);},-1.75,1.75,20,operator ..);
path3 hip=graph(new triple(real z) {
    return (z,sqrt(1+z*z),1);},-sqrt(33)/4,sqrt(33)/4,20,operator ..);

draw(scale(0.5,1,0.75)*surface(f,(-1.75,-1.75),(1.75,1.75),20,Spline),
     lightblue+opacity(0.8));
draw(scale(0.5,1,0.75)*parab,lightgreen);
draw(scale(0.5,1,0.75)*reflect(O,X,Y)*rotate(90,Z)*parab,lightgreen);
draw(scale(0.5,1,0.75)*reta,lightgreen);
draw(reflect(O,Y,Z)*scale(0.5,1,0.75)*reta,lightgreen);
draw(scale(0.5,1,0.75)*hip,lightgreen);
draw(reflect(O,X,Z)*scale(0.5,1,0.75)*hip,lightgreen);
draw(scale(0.5,1,0.75)*reflect(O,X,Y)*rotate(90,Z)*hip,lightgreen);
draw(scale(0.5,1,0.75)*rotate(180,Y)*rotate(90,Z)*hip,lightgreen);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
