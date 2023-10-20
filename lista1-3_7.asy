import graph3;

size(20cm);

currentprojection=orthographic(3,2,1);
limits((-2,-2,-2),(2,2,2));

currentlight=light(white,(2,2,2),(2,-2,-2));
// uncomment for transparency
// currentlight.background=black+opacity(0);

real f(pair z) {return (2*z.x^2+4*z.y^2)/(1+z.x^2+z.y^2);}

path3 nivel1 = scale(1,1/sqrt(3),1)*circle(O,1,Z);
path3 nivel2 = (-3,1,0)..(3,1,0);
path3 nivel3 = graph(new triple(real x) {
    return (x,sqrt(3+x^2),0);},-3,3,20,operator ..);

draw(surface(f,(-3,-3),(3,3),10,Spline),lightblue,blue);

draw(nivel1, 1bp+red);
draw(nivel2, 1bp+orange);
draw(reflect(O,X,Z)*nivel2, 1bp+orange);
draw(nivel3, 1bp+green);
draw(reflect(O,X,Z)*nivel3, 1bp+green);

draw(surface(plane(6*X,6*Y,Z-3*X-3*Y)), red+opacity(0.4));
draw(surface(plane(6*X,6*Y,2*Z-3*X-3*Y)), orange+opacity(0.4));
draw(surface(plane(6*X,6*Y,3*Z-3*X-3*Y)), green+opacity(0.4));

dot((1,2,0));
draw((1,2,0)..(3,3,0),Arrow3);

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
