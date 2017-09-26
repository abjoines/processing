float elX = 30;
float elY = 30;
float elDiameter = 20;
float elXSpeed = 4;
float elYSpeed = 3;

//button bounds
float buttonTop = 150;
float buttonLeft = 200;
float buttonBottom = 250;
float buttonRight = 300;
 
boolean usePink = false;

void setup() {
  size(500, 400);
}

void draw() {
  background(0);
  noStroke();
  rect(200, 150, 100, 100);
  
  if (usePink) {
    fill(#FF00EC);
  } else {
    fill(#6CCC5B);
  }
  
  elX += elXSpeed;
  elY += elYSpeed;
  ellipse(elX, elY, elDiameter, elDiameter);

//window hit detection
  if ((elX > width) || (elX < 0)) {
    elXSpeed *= -1;
  }

  if ((elY > height) || (elY < 0)) {
    elYSpeed *= -1;
  }

  
//button hit detection
    if ((elY > buttonTop) && (elX > buttonLeft) && (elX < buttonRight)) {
    elYSpeed *= -1;
    }

    if((elY < buttonBottom) && (elX > buttonLeft) && (elX < buttonRight)) {
    elYSpeed *= -1;
    }

//left and right hit detection
     if((elX > buttonLeft) && (elY > buttonTop) && (elY < buttonTop + 100)) {
   elXSpeed *= -1;
     }

     if ((elX < buttonRight) && ( elY > buttonTop) && (elY < buttonTop + 100)) {
   elXSpeed *= -1;
     }
   
//hit activation
  if ((elY == buttonTop) || (elY == buttonBottom) && (elX>buttonLeft) && (elX>buttonRight)) {
    elDiameter *= 1.5;
  }
  
  if ((elX == buttonLeft) || (elX == buttonRight) && (elY>buttonBottom) && (elY>buttonTop)) {
    elDiameter *= 1.5;
  }

}
void mouseClicked() {
  if ((mouseX >200)&&(mouseX<300)&&(mouseY>150)&&(mouseY<250)) {
    usePink = !usePink;
  }
}

/*This isn't really working quite right -- I'm trying to have the diameter 
increase when the ball comes in contact w the button but it's not 
bouncing off the button properly or increasing every time but idk why*/