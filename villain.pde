void drawVillain() {
  pushMatrix();
  scale(1.5,1.5,1.5);
  drawHeadV();
  drawNeckV();
  drawShouldersV();
  drawArmsWholeV();
  drawBodyUpperV();
  drawBodyLowerV();
  drawHipV();
  drawLegsLowerV();
  drawLegsUpperV();
  drawExtsV();
  popMatrix();
}

void drawHeadV() {
  fill(0,0,0);
  pushMatrix();
  translate(0, -30, 0);
  sphere(6.5);
  popMatrix();
}

void drawNeckV() {
  fill(0,0,0);
  pushMatrix();
  translate(0, -25, 0);
  cylinder(1.5, 2, 10);
  popMatrix();
}

void drawBodyUpperV() {
  fill(47,79,79);
  
  pushMatrix();
  translate(0, -23, 0);
  rotateY(PI /4 );
  cylinder(10, 8, 8);
  popMatrix();
}

void drawBodyLowerV() {
  fill(0,0,0);
  pushMatrix();
  translate(0, -15, 0);
  cylinder(7, 12, 6);
  popMatrix();
}

void drawShouldersV() {
  fill(47,79,79);
  pushMatrix();
  translate(12, -20, 0);
  sphere(3.9);
  popMatrix();
  
  pushMatrix();
  translate(-12, -20, 0);
  sphere(3.9);
  popMatrix();
}

void drawArmsV() {
  fill(105,105,105);
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

void drawElbowsV() {
  fill(0,0,0);
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

void drawForearmsV() {
  fill(105,105,105);
  pushMatrix();
  translate(-12, -7, 0);
  cylinder(2.7, 8.3, 7);
  popMatrix();
  
  pushMatrix();
  translate(12, -7, 0);
  cylinder(2.7, 8.3, 7);
  popMatrix();
}

void drawHipV() {
  fill(105,105,105);
  pushMatrix();
  scale(1.1);
  translate(0, -3, 0);
  cylinder(7, 4, 6);
  popMatrix();
}

void drawLegsUpperV() {
  fill(112,128,144);
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



void drawLegsLowerV() {
  fill(112,128,144);
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


void drawHandsV() {
  fill(0,0,0);
  pushMatrix();
  translate(-12, 3, 0);
  box(3.8);
  popMatrix();
 
  pushMatrix();
  translate(12, 3, 0);
  box(3.8);
  popMatrix();
}

void drawExtsV() {
  fill(0,0,0);
  pushMatrix();
  translate(5, 26, 2);
  box(4, 4, 7);
  popMatrix();
  
  pushMatrix();
  translate(-5, 26, 2);
  box(4, 4, 7);
  popMatrix();
}


void drawArmsWholeV() {
  pushMatrix();
  drawArmsV();
  drawForearmsV();
  drawElbowsV();
  drawHandsV();
  popMatrix();
}
