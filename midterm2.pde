import processing.pdf.*;

float countUpX = 0;
float countUpY = 0;
float w = 400;
float h = 200;
//float w = 40;
//float h = 20;
float sizeOfArc = 10;
int A = 35;

void setup() {
  size(5000, 7000, PDF, "NEWprototype3_3_test3.pdf");
  //size(300,500);

  background(0);
  rectMode(CENTER);
}

void draw() {
  fill(#5FCBDC, 40);
  noStroke();

  rect( sin(countUpX) * sizeOfArc + width/2, cos(countUpY) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(90)) * sizeOfArc + width/2, cos(countUpY + radians(90)) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(180)) * sizeOfArc + width/2, cos(countUpY + radians(180)) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(270)) * sizeOfArc + width/2, cos(countUpY + radians(270)) * sizeOfArc + height/2, w, h);

  rect( cos(countUpX) * sizeOfArc + width/2, sin(countUpY) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(90)) * sizeOfArc + width/2, sin(countUpY + radians(90)) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(180)) * sizeOfArc + width/2, sin(countUpY + radians(180)) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(270)) * sizeOfArc + width/2, sin(countUpY + radians(270)) * sizeOfArc + height/2, w, h);

  rect( sin(countUpX + radians(A)) * sizeOfArc + width/2, cos(countUpY) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(90+A)) * sizeOfArc + width/2, cos(countUpY + radians(90)) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(180+A)) * sizeOfArc + width/2, cos(countUpY + radians(180)) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(270+A)) * sizeOfArc + width/2, cos(countUpY + radians(270)) * sizeOfArc + height/2, w, h);

  rect( cos(countUpX + radians(A)) * sizeOfArc + width/2, sin(countUpY) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(90+A)) * sizeOfArc + width/2, sin(countUpY + radians(90)) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(180+A)) * sizeOfArc + width/2, sin(countUpY + radians(180)) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(270+A)) * sizeOfArc + width/2, sin(countUpY + radians(270)) * sizeOfArc + height/2, w, h);

  countUpX += .01;
  countUpY += .01;

  sizeOfArc += sizeOfArc * 0.1;

  //sizeOfArc += 1.5;

  if (frameCount == 4000) {
    exit();
  }
}
