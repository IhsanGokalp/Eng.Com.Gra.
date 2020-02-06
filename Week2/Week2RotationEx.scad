w = 100;
h = 100;
l = 5;

hw = 5;
hg = 5;
vg = 1;

count = w/(hw+hg);
dw = w/count;
dh = sqrt(w*w + h*h)/count;

difference() {
cube([w,h,l]);

for (i = [1 : count-1]) {
    color("red")
    translate([i*(hw+hg),vg,-1])
    rotate(45,0,0)
    cube([hw,dh*i,l+2]);
    
    mirror(10,10,0){
    color("red")
    translate([i*(hw+hg),vg,-1])
    rotate(45,0,0)
    cube([hw,dh*i,l+2]);
    }
}
 
}