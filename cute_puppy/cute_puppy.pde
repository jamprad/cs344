PImage pup;
float px;
float py;
int pupWidth;
int pupHeight;
boolean overPup = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0;

float scaler = 1.0;

void setup() 
{
  size(300, 500);
  //pup = loadImage("so_cute.jpg");
  pup = loadImage("mall-map.gif");
  pupWidth = pup.width;
  pupHeight = pup.height;
  px = 0;
  py = 0;
}

void draw() 
{
  translate(width/2, height/2);
  scale(scaler);
  translate(-width/2, -height/2);
  
  background(0);
  // Test if the cursor is over the image
  if (mouseX > px-pupWidth && mouseX < px+pupWidth && 
    mouseY > py-pupHeight && mouseY < py+pupHeight) {
    //overBox = true;
    overPup = true;  
    if (!locked) { 
      stroke(255); 
      //fill(153);
    }
  } 
  else {
    stroke(153);
    //fill(153);
    //overBox = false;
    overPup = false;
  }

  // Draw the box
  //rect(bx, by, boxSize, boxSize);
  image(pup, px, py);
}

void mousePressed() {
  if (overPup) { 
    locked = true; 
    //fill(255, 255, 255);
  } 
  else {
    locked = false;
  }
  xOffset = mouseX-px; 
  yOffset = mouseY-py;
}

void mouseDragged() {
  if (locked) {
    float maybePx = mouseX - xOffset;
    float maybePy = mouseY - yOffset;

    if (maybePx <= 0 && maybePx >= -(pupWidth - width)) {
      px = maybePx;
    }
    if (maybePy <= 0 && maybePy >= -(pupHeight - height)) {
      py = maybePy;
    }
  }
}

void mouseReleased() {
  locked = false;
}

void keyPressed() {
  
  if (keyCode == 38) { //up arrow
    scaler += 0.1;
    print("zoom in: " + scaler + "\n");
  }
  else if (keyCode == 40) { //down arrow
    float maybeScaler = scaler - 0.1;
    print("zoom out: " + maybeScaler + "\n");
    if (maybeScaler < 1.0){
    } else {
      scaler = maybeScaler;
    }
  }
}

