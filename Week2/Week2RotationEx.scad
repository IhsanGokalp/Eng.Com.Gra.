w = 50;
h = 50;
l = 5;

hw = 5;
hg = 5;
vg = 5;

difference() {
cube([w,h,l]);
count = w/(hw+hg);
d = w/count;

for (i = [1 : count-1]) {
    color("red")
    translate([i*(hw+hg),vg,-1])
    rotate(45,0,0)
    cube([hw,d*i,l+2]);
}
 
}