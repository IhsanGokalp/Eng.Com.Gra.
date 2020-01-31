w = 100;
l = 200;
h = 5;

hw = 5;
hg = 5;
count = w / (hw+hg);
difference(){
cube([w,l,h]);


for(i = [1:count]){
    translate([i * (hw+hg),5,-1])
    color("pink")
    cube([hw,l-10,15]);
}
}
