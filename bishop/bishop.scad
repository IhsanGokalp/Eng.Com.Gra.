$fn=30;

err= 0.1;
gh=4;
gd=8;

ghi=gh*0.65;
gdi=gd*0.65;

h=4;
d=20.7;

union(){
    translate([0,0,gh+err-ghi])
    cylinder(h=ghi,d=gdi);

    difference(){
        scale(0.1)
        import("bishop.stl");
        cylinder(h=gh + err,d=gd+err);
    }
}

union(){
    color("red")
    translate([30,0,0])
    cylinder(h = h, d =d, center = false);
        
    difference(){
    translate([30,0,h])
    cylinder(h=gh, d=gd);
    translate([30,0,h+gh-ghi])
    cylinder(h=ghi + err, d=gdi+err);
}
}


