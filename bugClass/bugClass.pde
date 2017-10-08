class Bug {
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float xRad = 50;
  float yRad = 20;

  Bug() {
    xPos = random(width);
    yPos = random(height);
    xSpeed = random(3, 6);
    ySpeed = random(3, 6);
  }

  void display() {

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
  }
  void move() {
    xPos += xSpeed;
    yPos += ySpeed;

    //stay in sketch
    if ((xPos > width) || (xPos < 0) || (yPos > height) || (yPos < 0)) {
      xSpeed *= -1;
      ySpeed *= -1;
    }
  }
}
