void setup() {
  size (500,500); 
}
void draw (){
  
  if(mousePressed){
  fill(0,75,130);
  }
  else{
  fill(random(255),58,48);
  }
  ellipse (76,mouseX,78,100);
  ellipse (89,mouseY,89,89);
  ellipse (45,56,78,78);
  ellipse (mouseX,34,56,78);
}

