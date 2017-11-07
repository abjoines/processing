import processing.pdf.*;

float countUpX = 0;
float countUpY = 0;
//float w = 400;
//float h = 200;
float w = 40;
float h = 20;

float sizeOfArc = 10;
int A = 35;

void setup(){
  //size(5000, 7000, PDF, "NEWprotoype3_5_PDF1.pdf");
  size(300,500);
  
  background(0);
  rectMode(CENTER);
}

void draw(){
  fill(#5FCBDC, 80);
  noStroke();

  rect( sin(countUpX) * sizeOfArc + width/2, cos(countUpY) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(90)) * sizeOfArc + width/2, cos(countUpY + radians(90)) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(180)) * sizeOfArc + width/2, cos(countUpY + radians(180)) * sizeOfArc + height/2, w, h);
  rect( sin(countUpX + radians(270)) * sizeOfArc + width/2, cos(countUpY + radians(270)) * sizeOfArc + height/2, w, h);
  
  rect( cos(countUpX) * sizeOfArc + width/2, sin(countUpY) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(90)) * sizeOfArc + width/2, sin(countUpY + radians(90)) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(180)) * sizeOfArc + width/2, sin(countUpY + radians(180)) * sizeOfArc + height/2, w, h);
  rect( cos(countUpX + radians(270)) * sizeOfArc + width/2, sin(countUpY + radians(270)) * sizeOfArc + height/2, w, h);
  
  //countUpX += 1;
  //countUpY += 1;
  //sizeOfArc += 10;
  
  countUpX += .4;
  countUpY += .4;
  sizeOfArc += 1;

  //if (frameCount == 1000){
  //  exit();
  //}
}
