$fn = 30;
err=0.1;
h=6;
d=10;
e=6;

w=4;
l=4;
cw=20;
cl=20;

color("DeepSkyBlue")
union(){
cube([cw,cl,h*2], center=true);
translate([0,0,h/2])
cylinder(d=d, h=h);
    for(i=[1:e]) {
        rotate(i*360/e,0,0)
        translate([d/2-2,-2,h/2])
        cube([w,l,h]);
        }
}

color("Aqua")
translate([cw+5,0,0])
difference(){
cube([cw,cl,h*2], center=true);
translate([0,0,h/2])
cylinder(d=d+err, h=h);
    for(i=[1:e]) {
        rotate(i*360/e,0,0)
        translate([d/2-2,-2,h/2])
        cube([w+err,l+err,h]);
        }
}