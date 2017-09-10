void setup() {
size(400,400);
}

int ellipseX = 200;
int ellipseY = 200;
int rectY = 275;
int rectY2 = 175;
int eyeY = 125;
int eyeW = 10;
int eyeH = 5;

//background
void draw() {
fill(#E950D0);
stroke(#15D823);
ellipse(ellipseX,ellipseY, 600,600);

fill(#15D823);
stroke(#1D56C0);
ellipse(ellipseX,ellipseY, 500,500);

fill(#1D56C0);
stroke(#E950D0);
ellipse(ellipseX,ellipseY, 400, 400);

fill(#E950D0);
stroke(#15D823);
ellipse(ellipseX,ellipseY, 300,300);

fill(#15D823);
stroke(#1D56C0);
ellipse(ellipseX,ellipseY, 200,200);

fill(#1D56C0);
stroke(#E950D0);
ellipse(ellipseX,ellipseY, 100, 100);

//character

fill(0);
//head
ellipse(ellipseX,125,80,80);

//legs
stroke(0);
rect(175, rectY, 20, 50);
rect(205, rectY, 50, 20);

//hoolahoops
noFill();
stroke(#ffffff);
strokeWeight(2);
ellipse(mouseX, mouseY+5, 145,50);
ellipse(mouseX, mouseY, 140,50);
ellipse(mouseX, mouseY-5, 135,50);

//body
fill(0);
stroke(0);
rect(180,175,40,100);

//arms
rect(130, rectY2, 50,15);
rect(220,rectY2, 50,15);

//eyes
fill(#FFFFFF);
noStroke();
ellipse(185, eyeY, 10, 10);
ellipse(215, eyeY, 10,10);
fill(#15D823);
ellipse(185, eyeY, eyeW, eyeH);
ellipse(215, eyeY, eyeW, eyeH);

//smile
noFill();
stroke(#FFFFFF);
arc(200, 125, 60, 60, 0, PI, OPEN);
}