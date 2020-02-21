$fn=64;
thk=1;
r=2;
w=60-r*2;
l=126-r*2;
h=6-r*2;

module phone(w,l,h,r){
minkowski(){
    cube([w,l,h], true);
    sphere(d=r*2);
}

translate([0,-l/2,0])
minkowski() {
    sphere(d=2);
    cube([8,14,2],true);
    }
}

difference(){
    minkowski() {
        cube([w+thk,l+thk,h+thk], true);
        sphere(d=r*2);
        }
    phone(w,l,h,r);
    translate([0,0,r])
    minkowski() {
        cube([w,l,h*2],true);
        sphere(d=3.5);
    }
 }