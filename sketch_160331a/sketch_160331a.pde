import ddf.minim.*;        
AudioSample sound;
int x = 330;
int y =230;
int acceleration = 20;
PImage catPic;
void setup () {
  size(500, 667);
catPic = loadImage("uglycat.jpg");
background(catPic);
Minim minim = new Minim(this);        
sound = minim.loadSample("Cat.wav");
sound.trigger();
}
void draw () {
ellipse(x, y, 100, 100);
ellipse(x-190, 230, 100, 100);
if(x<0) {
  x = 330;
  y = 230;
  background(catPic);
  acceleration = 1;
}
fill (255, 50, 50);
noStroke();
println(x + ", " + y);
  }
void keyPressed() {
  x-=acceleration;
  acceleration+=10;
  //y--;
}
  void mousePressed() {
  x-=acceleration;
  acceleration+=10;
//y--;
}
