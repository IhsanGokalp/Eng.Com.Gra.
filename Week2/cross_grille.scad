w = 60;
h=70;
l=5;

hw=8;
hg =3;
countw = w/(hw+hg);

vw=8;
vg=4;
countv = h/(vw+vg);

difference(){
cube([w,h,l]);

for(i = [1:countw-1]){
    for(j = [1:countv-1]){
        translate([i*(hw+hg),j*(vw+vg),-1])
        color("green")
        cube([hw,vw,l+100]);
    }
}
}