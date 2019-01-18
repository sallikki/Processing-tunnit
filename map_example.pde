void setup(){
  size(640,480);
  noStroke();
}

void draw(){
  float col = map(mouseX,0,640,0,255);
  background(col);
  fill(250,118,222);
  ellipse(mouseX,mouseY,64,64);
  
  
  
  
}
