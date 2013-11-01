PImage img;

void setup() {
  size(360, 640); //set screen size
  background(255); //black background
  
  //noStroke(); //no line
  stroke(0); //line colour (black)
  fill(192); //fill colour
  rect(20, 20, 40, 40); //draw rectangle
  
  fill(255, 0, 0, 128);
  rect(20 + 60, 20 + 80, 40, 40);
  
  fill(0, 0, 255, 128);
  pushMatrix();
  translate(60, 80);
  scale(2.0);
  rect(20, 20, 40, 40);
  popMatrix();
}

/*
void draw() {
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  // Displays the image at point (0, height/2) at half of its size
  //image(img, 0, height/2, img.width/2, img.height/2);
}*/
