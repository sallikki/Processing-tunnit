float r = 200;
int total = 0;
int circle = 0;



void setup(){
  size(400,400);
  
  background(0);
translate(width/2, height/2);
stroke(255);
noFill();
ellipse(0,0,r*2,r*2);
rectMode(CENTER);
rect(0,0,r*2,r*2);

  
  
}


void draw(){

translate(width/2, height/2);

for(int i = 0; i < 10000; i++){
float  x = random(-r,r);
float  y = random(-r,r);
total++;

float d = sqrt(x*x + y*y);  //
if (d < r){
  circle++;
  stroke(100,255,0);
} else {
  stroke(0,100,255);
}

float pi = 4 * (float (circle) / total); 
println(pi);
textAlign(CENTER);
text(pi,10,100);
point(x,y);
}
}
