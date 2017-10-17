float xPos=250;
float yPos=250;
float xRad = 50;
float yRad = 20;


void setup() {
  size(500, 500);
  smooth();
}

void draw() {
  background(250);

  fill(0);
  stroke(0);
  strokeWeight(1);
  //legs and antenae
  rect(xPos-20, yPos, 5, 20);
  rect(xPos+15, yPos, 5, 20);
  rect(xPos+1, yPos, 5, 20);
  rect(xPos-6, yPos, 5, 20);
  rect(xPos-10, yPos-20, 3, 10); 
  rect(xPos+7, yPos-20, 3, 10);
  //body
  fill(0);
  ellipse(xPos, yPos, xRad, yRad);
  //target eye
  fill(255, 0, 0);
  ellipse(xPos, yPos, 20, 20);
  fill(0);
  ellipse(xPos, yPos, 10, 10);
  fill(255, 0, 0);
  ellipse(xPos, yPos, 6, 6);
  
  if (keyPressed) {
    if (key == CODED) {
      if (keyCode == 39) {
        xPos++;
      }
      if (keyCode == 37) {
        xPos--;
      }
      if (keyCode == 38) {
        yPos--;
      }
      if (keyCode == 40) {
        yPos++;
      }
    }
  }
}
