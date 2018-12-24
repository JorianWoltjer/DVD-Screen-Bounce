float    x;
float    y;
float    xspeed;
float    yspeed;
PImage   logo;

float    xspeedChange = 2;
float    yspeedChange = 2;

void setup() {
  size(640, 360);
  surface.setResizable(true);
  background(0);

  logo = loadImage("DVD Video Logo.png");
  logo.resize(logo.width/3, logo.height/3);
  tint(random(255), random(255), random(255));
  imageMode(CENTER);

  xspeed = xspeedChange;
  yspeed = yspeedChange;
  x = logo.width/2;
  y = logo.height/2;
}

void draw() {
  background(0);
  colorMode(RGB);
  stroke(255);
  strokeWeight(5);

  colorMode(RGB);
  strokeWeight(50);

  image(logo, x, y);
  // Turn around for X
  if (x > width - logo.width/2) {
    xspeed = xspeed * -1;
    tint(random(255), random(255), random(255));
  }
  if (x < logo.width/2) {
    xspeed = xspeed * -1;
    tint(random(255), random(255), random(255));
  }
  // Turn around for Y
  if (y > height-logo.height/2) {
    yspeed = yspeed * -1;
    tint(random(255), random(255), random(255));
  }
  if (y < logo.height/2) {
    yspeed = yspeed * -1;
    tint(random(255), random(255), random(255));
  }

  // Movement
  x = x + xspeed;
  y = y + yspeed;
}
