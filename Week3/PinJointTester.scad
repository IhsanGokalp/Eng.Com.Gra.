$fn=30;
x=50;
y=10;
z=3;
difMaxMin = 2-1.75;
count = 8;
dif = difMaxMin/count;
hw=(x/count);
difference(){
cube([x,y,z]);
for(i = [1:count]){
    color("red")
    translate([hw*i-(hw/2),y/2,-1])
    cylinder(h = 5,d=1.75+i*dif);
    
    }
}
    