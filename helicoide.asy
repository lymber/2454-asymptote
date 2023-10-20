import solids;

size(10cm);

currentprojection=orthographic(3,2,3);
limits((-3,-3,-4),(3,3,4));

currentlight=light(white,(2,2,2),(2,-2,-2));
//uncomment for transparency
//currentlight.background=black+opacity(0);

path3 helice=graph(new triple(real t) {
    return 2*(cos(t),sin(t),t);},-pi/2,pi/2,15,operator ..);
path3 reta=graph(new triple(real t) {
    return 2*(0,0,t);},-pi/2,pi/2,15,operator ..);

surface helicoide=extrude(helice,reta);

draw(helicoide,meshpen=black,lightblue+opacity(0.8));
draw(rotate(180,Z)*helicoide,meshpen=black,lightblue+opacity(0.8));

xaxis3("$x$",Arrow3); 
yaxis3("$y$",Arrow3);
zaxis3("$z$",Arrow3);
