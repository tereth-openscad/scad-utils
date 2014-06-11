function square(size) = [[-size,-size], [-size,size], [size,size], [size,-size]] / 2;

function circle(r) = [for (i=[0:$fn-1]) let (a=i*360/$fn) r * [cos(a), sin(a)]];

function regular(r, n) = circle(r, $fn=n);


// FIXME: Move rectangle and rounded rectangle from extrusion