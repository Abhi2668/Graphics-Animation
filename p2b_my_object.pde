// Scene Example

float time = 0;  // keep track of the "time"

void setup() {
  size (1000, 1000, P3D);  // use 3D here!
  noStroke();
}

// Draw a scene with a box, cylinder and sphere

void drawHero() {
  drawHead();
  drawNeck();
  drawShoulders();
  drawArmsWhole();
  drawBodyUpper();
  drawBodyLower();
  drawHip();
  drawLegsLower();
  drawLegsUpper();
  drawCape();
  drawExts();
  drawHair();
}

void drawHead() {
  fill(141, 85, 36);
  pushMatrix();
  translate(0, -30, 0);
  sphere(5);
  popMatrix();
}

void drawNeck() {
  fill(141, 85, 36);
  pushMatrix();
  translate(0, -25, 0);
  cylinder(1.5, 2, 10);
  popMatrix();
}

void drawBodyUpper() {
  fill(0,150,247);
  
  pushMatrix();
  translate(0, -23, 0);
  rotateY(PI /4 );
  cylinder(10, 8, 8);
  popMatrix();
}

void drawBodyLower() {
  fill(52,249,254);
  pushMatrix();
  translate(0, -15, 0);
  cylinder(7, 12, 6);
  popMatrix();
}

void drawShoulders() {
  fill(0,153,247);
  pushMatrix();
  translate(12, -20, 0);
  sphere(3.9);
  popMatrix();
  
  pushMatrix();
  translate(-12, -20, 0);
  sphere(3.9);
  popMatrix();
}

void drawArms() {
  fill(0,153,247);
  pushMatrix();
  scale(1.1);
  translate(-12, -17, 0);
  cylinder(3.5, 6.2, 7);
  popMatrix();
  
  pushMatrix();
  scale(1.1);
  translate(12, -17, 0);
  cylinder(3.5, 6.2, 7);
  popMatrix();
}

void drawElbows() {
  fill(0,153,247);
  pushMatrix();
  translate(12, -10, 0);
  scale(1.1);
  sphere(3);
  popMatrix();
  
  pushMatrix();
  translate(-12, -10, 0);
  scale(1.2);
  sphere(3);
  popMatrix();
}

void drawForearms() {
  fill(0,153,247);
  pushMatrix();
  translate(-12, -7, 0);
  cylinder(2.7, 8.3, 7);
  popMatrix();
  
  pushMatrix();
  translate(12, -7, 0);
  cylinder(2.7, 8.3, 7);
  popMatrix();
}

void drawHip() {
  fill(241,23,18);
  pushMatrix();
  scale(1.1);
  translate(0, -3, 0);
  cylinder(7, 4, 6);
  popMatrix();
}

void drawLegsUpper() {
  fill(0,153,247);
  pushMatrix();
  translate(-5, 1, 0);
  rotateY(PI / 4);
  cylinder(3.6, 12, 12);
  popMatrix();

  pushMatrix();
  translate(5, 1, 0);
  rotateY(PI / 4);
  cylinder(3.6, 12, 12);
  popMatrix();
  
  pushMatrix();
  translate(5, 14, 0);
  sphere(2);
  popMatrix();
  
  pushMatrix();
  translate(-5, 14, 0);
  sphere(2);
  popMatrix();
}



void drawLegsLower() {
  fill(187,7,14);
  pushMatrix();
  translate(-5, 16, 0);
  rotateY(PI / 4);
  cylinder(3, 9, 12);
  popMatrix();

  pushMatrix();
  translate(5, 16, 0);
  rotateY(PI / 4);
  cylinder(3, 9, 12);
  popMatrix();
}

void drawCape() {
  fill(187,7,14);
  pushMatrix();
  translate(0, -2, -14.2);
  rotateX(PI / 2.5);
  rotateY(PI);
  box(20,1,45);
  popMatrix();
}

void drawHands() {
  fill(141, 85, 50);
  pushMatrix();
  translate(-12, 3, 0);
  box(3.8);
  popMatrix();
 
  pushMatrix();
  translate(12, 3, 0);
  box(3.8);
  popMatrix();
}

void drawExts() {
  fill(187,7,14);
  pushMatrix();
  translate(5, 26, 2);
  box(4, 4, 7);
  popMatrix();
  
  pushMatrix();
  translate(-5, 26, 2);
  box(4, 4, 7);
  popMatrix();
}

void drawHair() {
  fill(0, 0, 0);
  pushMatrix();
  translate(0, -36, -1);
  rotateX(PI / 7);
  cylinder(6.5, 5.5, 8);
  popMatrix();
}

void drawArmsWhole() {
  pushMatrix();
  rotateX(PI);
  translate(0, 40, 0);
  drawArms();
  drawForearms();
  drawElbows();
  drawHands();
  popMatrix();
}

// Process key press events
void keyPressed()
{
  if (key == 's' || key =='S') {
    save ("image_file.jpg");
    println ("Screen shot was saved in JPG file.");
  }
}

// Draw a cylinder of a given radius, height and number of sides.
// The base is on the y=0 plane, and it extends vertically in the y direction.
void cylinder (float radius, float height, int sides) {
  int i,ii;
  float []c = new float[sides];
  float []s = new float[sides];

  for (i = 0; i < sides; i++) {
    float theta = TWO_PI * i / (float) sides;
    c[i] = cos(theta);
    s[i] = sin(theta);
  }
  
  // bottom end cap
  
  normal (0.0, -1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (0.0, 0.0, 0.0);
    endShape();
  }
  
  // top end cap

  normal (0.0, 1.0, 0.0);
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape(TRIANGLES);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    vertex (0.0, height, 0.0);
    endShape();
  }
  
  // main body of cylinder
  for (i = 0; i < sides; i++) {
    ii = (i+1) % sides;
    beginShape();
    normal (c[i], 0.0, s[i]);
    vertex (c[i] * radius, 0.0, s[i] * radius);
    vertex (c[i] * radius, height, s[i] * radius);
    normal (c[ii], 0.0, s[ii]);
    vertex (c[ii] * radius, height, s[ii] * radius);
    vertex (c[ii] * radius, 0.0, s[ii] * radius);
    endShape(CLOSE);
  }
}
