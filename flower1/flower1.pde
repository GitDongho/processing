int angle = 0;
int b = 0;
int dx = 1;
int dy = 1;
int flwx=0;
int flwy=0;

void setup() {
  size(640, 360);
 flwx=width/2;
 flwy=height/2;
}

void draw() {
  // Draw only when mouse is pressed
  //if (mousePressed == true) {
    angle = 5;
    b += 5;
    
    background(102);
    noStroke();
    //fill(0, 102);
    
    flwx += 5*dx;
    flwy += 5*dy;
    
    if ((flwx < width-20)&&(flwx > 20)){
      //dx = 1;
    } else {
      dx = dx*-1;
    }
    if( (flwy < height-20)&&(flwy >20)){
      //dy = 1;
    } else {
      dy = dy*-1;
    }
    float val = cos(radians(angle)) * 12.0;
    for (int a = b; a < 360+b; a += 75) {
      float xoff = cos(radians(a)) * val;
      float yoff = sin(radians(a)) * val;
      fill(204,102,0);
      ellipse(flwx + xoff, flwy + yoff, val, val);
    }
    fill(255);
    ellipse(flwx, flwy, 4, 4);
  //}
}
