import processing.pdf.*;

float countUpX = 0;
float countUpY = 0;
float sizeOfArc = 10;
int rad = 20;
//int rad = 300;


void setup() {
  size(300,500);
  //size(5000, 7000, PDF, "testPDF6.pdf");
  background(#11AFC8);
  frameRate(9000);
}

void draw() {
  //background(0);
  fill(#5FCBDC, 120);
  noStroke();
  ellipse( sin(countUpX + radians(45)) * sizeOfArc + width/2, sin(countUpY + radians(90)) * sizeOfArc +height/2, rad, rad);
  ellipse( sin(countUpX + radians(135)) * sizeOfArc + width/2, sin(countUpY + radians(180)) * sizeOfArc +height/2, rad, rad);
  ellipse( sin(countUpX + radians(225)) * sizeOfArc + width/2, sin(countUpY + radians(270)) * sizeOfArc +height/2, rad, rad);
  
  fill(255, 50);
  ellipse( cos(countUpX + radians(45)) * sizeOfArc + width/2, sin(countUpY + radians(90)) * sizeOfArc +height/2, rad, rad);
  ellipse( cos(countUpX + radians(135)) * sizeOfArc + width/2, sin(countUpY + radians(180)) * sizeOfArc +height/2, rad, rad);
  ellipse( cos(countUpX + radians(225)) * sizeOfArc + width/2, sin(countUpY + radians(270)) * sizeOfArc +height/2, rad, rad);

  countUpX += 0.7;
  countUpY += 0.7;
  sizeOfArc += 0.1;

//  countUpX += 10;
//  countUpY += 10;
//  sizeOfArc += 1;
  
  //if (frameCount == 12000) {
  //  exit();
  //}
  
}
