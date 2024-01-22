void drawSurface() {
  fill(0,0,0);
  pushMatrix();
  translate(0, 1, -120);
  rectMode(CENTER);
  rect(0, 0, 100000, 100000);
  //box(1000, 0.001, 20000);
  popMatrix();
}

void drawBuilding(int color_variety, int height_variety) {
  int chosen = 600;
  if (color_variety == 1) {fill(27,35,41);}
  else if (color_variety == 2) {fill(87,0,0);}
  else if (color_variety == 3) {fill(67,84,32);}
  else if (color_variety == 4) {fill(24,11,66);}
  else if (color_variety == 5) {fill(138,85,2);}
  
  if (height_variety == 1) {chosen = 1000;}
  else if (height_variety == 2) {chosen = 2000;}
  else if (height_variety == 3) {chosen = 500;}
  else if (height_variety == 4) {chosen = 1500;}
  else if (height_variety == 5) {chosen = 750;}
  
  pushMatrix();
  rotateX(PI / 2);
  box(100, chosen, 100);
  popMatrix();
}

void populateCity() {
  for (int j = 1; j < 4; j++) {
    for (int i = 0; i < 200; i++) {
      if (i < 100) {
        pushMatrix();
        translate(150 * j, 150  * (i), 0);
        drawBuilding((i % 6) + 3, (i % 6) + 1);
        popMatrix();
      
        pushMatrix();
        translate(-150 * j, 150  * (i), 0);
        drawBuilding((i % 6) + 1, (i % 6) + 1);
        popMatrix();
      } else if (i >= 100) {
        pushMatrix();
        translate(-150 * j, -150 * (200 - i), 0);
        drawBuilding((i % 6) + 4, (i % 6) + 1);
        popMatrix();
      
        pushMatrix();
        translate(150 * j, -150 * (200 - i), 0);
        drawBuilding((i % 6) + 0, (i % 6) + 1);
        popMatrix();
      }
    }
  }
}
