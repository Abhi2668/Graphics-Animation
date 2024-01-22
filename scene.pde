float cameraZ = 0;
float current = 0;

void draw() {
  resetMatrix();  // set the transformation matrix to the identity (important!)

  background(135, 206, 235); 

  // create an ambient light source
  ambientLight (102, 102, 102);

  // create two directional light sources
  lightSpecular (170, 170, 170);
  directionalLight (255, 255, 255, 0, 0, -1);
  directionalLight (152, 152, 152, -1, 0, -1);
  
  // set up for perspective projection
  perspective (PI * 0.333, 1.0, 0.01, 1000.0);
  if (time < 960) {
    // place the camera in the scene
    cameraZ = 750 - time / 2.3;
    camera (0, -time - 30, cameraZ, 0.0, -time , 0.0, 0.0, 1.0, 0.0);
    
    pushMatrix();
    translate(0, -time, 250);
    rotateY(PI);
    drawHero();
    popMatrix();
  } else if (time >= 960 && time < 2500) {
    cameraZ = cameraZ + 0;
    camera (0, -time - 40, 260, 0, -4000 , 0, 0.0, 1.0, 0.0);
    
    pushMatrix();
    translate(0, -time, 250);
    rotateY(PI);
    drawHero();
    popMatrix();
    
    for (int b = -1; b < 2; b++) {
      if (b != 0) {
        pushMatrix();
        translate(b * 60, -3000, 280);
        rotateX(-PI / 2);
        drawVillain();
        popMatrix();
      }
    }
    
    pushMatrix();
    translate(0, -3000, 250);
    rotateX(-PI / 2);
    drawVillain();
    popMatrix();
  } else if (time >= 2500 && time < 3100) {
    cameraZ = 750;
    camera (75, - 2500, 500, 0, -3000, 0, 0.0, 1.0, 0.0);
    
    pushMatrix();
    translate(0, -time, 250);
    rotateY(PI);
    drawHero();
    popMatrix();
    
    for (int b = -1; b < 2; b++) {
      if (b != 0) {
        pushMatrix();
        translate(b * 60, -3000, 280);
        rotateX(-PI / 2);
        drawVillain();
        popMatrix();
      }
    }
    
    pushMatrix();
    translate(0, -3000, 250);
    rotateX(-PI / 2);
    drawVillain();
    popMatrix();
  } else if (time >= 3100 && time <= 4200) {
    camera (75, - 2500, 500, 0, -3000, 0, 0.0, 1.0, 0.0);
    
    pushMatrix();
    translate(-1 * 60 - time/120, -3000, 250);
    rotateZ(time / 4);
    rotateY(-PI / 4);
    rotateX(-PI / 2);
    drawVillain();
    popMatrix();
        
    pushMatrix();
    translate(1 * 60 + time/120, -3000, 250);
    rotateZ(time / 6);
    rotateY(PI / 4);
    rotateX(-PI / 2);
    drawVillain();
    popMatrix();
    
    pushMatrix();
    translate(0, -time, 250);
    rotateX(time/3);
    drawVillain();
    drawHero();
    popMatrix();
  } else if (time > 4200 && time < 5500) {
    camera (0, -time + 300, 250, 0, -100000 , 0, 0.0, 1.0, 0.0);
    pushMatrix();
    translate(0, -time, 250);
    rotateZ(time /3);
    rotateY(time /4);
    rotateX(time / 8);
    drawVillain();
    popMatrix();
    
    pushMatrix();
    translate(0, -time, 280);
    rotateY(time /4);
    rotateX(time / 9);
    drawHero();
    popMatrix();
    
    pushMatrix();
    translate(0, -5400, 0);
    rotateX(PI / 2);
    box(100, 1000, 100);
    popMatrix();
  } else if (time >= 5500 && time < 6000) {
    camera (-75, - 5000, 600, 0, -5400, 0, 0.0, 1.0, 0.0);
    
    pushMatrix();
    translate(0, -time + 1000, 250);
    rotateZ(time /3);
    rotateY(time /4);
    rotateX(time / 8);
    drawVillain();
    popMatrix();
    
    pushMatrix();
    translate(0, -time + 1000, 280);
    rotateY(time /4);
    rotateX(time / 9);
    drawHero();
    popMatrix();
    
    pushMatrix();
    translate(0, -5400, 0);
    rotateX(PI / 2);
    box(150, 700, 150);
    popMatrix();
  } else if (time >= 6000 && time < 7700) {
    camera (-75, - 5000, 600, 0, -5400, 0, 0.0, 1.0, 0.0);
    
    pushMatrix();
    translate(0, -5400 - current * 100, -current * 100);
    rotateX(PI / 2);
    rotateX(current);
    box(150, 700, 150);
    popMatrix();
    current += 0.01;
  }
  
  drawSurface();
  populateCity();
  
  
  // step forward the time
  time += 10;
}
