float theta;
float branchNum = 80;
float xoff = 0.0;
float x = 2.1;
float n = noise(xoff);
float lerpAmount = 0; 
float lerpStep = 0.05;
color from = color(137, 229, 255);
color to = color(9, 57, 71);

int strokeColor = 255;

int X_AXIS = 2;
int Y_AXIS = 1;

void setup() {
  size(700, 600);
  smooth();
  strokeWeight(0.001);
}

void draw() {
  frameRate(100);
  //background(0);
  
  //angle of left branch
  float a = lerp(0,90, lerpAmount);
  lerpAmount += lerpStep;
  
  if (lerpAmount > 1){
    lerpAmount = 1;
    lerpStep = -lerpStep;
  }
  if (lerpAmount < 0){
    lerpAmount = 0;
    lerpStep = -lerpStep;
  }

  theta = radians(a); 
  theta += x;

  setGradient(0, 0, width, height, from, to, X_AXIS);
  //back trees

  translate(width/4, height);
  noStroke();
  line(0, 0, 0, -400);
  stroke(strokeColor);
  translate(0, -400);
  branch(branchNum);

  translate(width/2, 400);
  noStroke();
  line(0, 0, 0, -400);
  stroke(strokeColor);
  translate(0, -400);
  branch(branchNum);

//front trees
  
  translate(-width/4, 400);
  noStroke();
  line(0, 0, 0, -200);
  stroke(strokeColor);
  translate(0, -200);
  branch(branchNum);
  
  translate(width/2, 200);
  noStroke();
  line(0, 0, 0, -200);
  stroke(strokeColor);
  translate(0, -200);
  branch(branchNum);

  translate(-width, 200);
  noStroke();
  line(0, 0, 0, -200);
  stroke(strokeColor);
  translate(0, -200);
  branch(branchNum);
  
  translate(0, -200);
  noStroke();
  line(0, 0, 0, -200);
  stroke(strokeColor);
  translate(0, -200);
  branch(branchNum);
  
  translate(width/2, 250);
  noStroke();
  line(0, 0, 0, 250);
  stroke(strokeColor);
  translate(0, -250);
  branch(branchNum);
  
  translate(width/2, 250);
  noStroke();
  line(0, 0, 0, 250);
  stroke(strokeColor);
  translate(0, -250);
  branch(branchNum);
  
  translate(3*-width/4, 850);
  noStroke();
  line(0, 0, 0, 250);
  stroke(strokeColor);
  translate(0, -250);
  branch(branchNum);
  
  translate(width/2+20, 250);
  noStroke();
  line(0, 0, 0, 250);
  stroke(strokeColor);
  translate(0, -250);
  branch(branchNum);
}

void branch(float h) {
  //scaling
  h *= 0.8;

  //exit condition
  //h is length of branch in pixels
  if (h > 6) {
    //right branch
    pushMatrix();    
    rotate(n);   // Rotation
    line(0, 0, 0, -h);  // branch line
    translate(0, -h); // Move to the end of the branch
    branch(h);       // draw new branches
    popMatrix();     

    //left branch
    pushMatrix();
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
  

}
void mouseClicked() {
  if ((mouseX>0)&&(mouseX<width)&&(mouseY>0)&&(mouseY<height)) {
    n += (noise(xoff));
  }
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}