float [] xPos = new float [50];
float [] yPos = new float [50];
float [] xMove = new float [50];
float [] yMove = new float [50];
float [] transparency = new float [50];
int i = 0;


void setup(){
 size (500,500);
 smooth();
 
 for(int i=0; i<50; i++) {
   xPos [i] = random (0,500);
   yPos [i] = random (0,500);
   xMove [i] = random (-8,8);
   yMove [i] = random (-8,8);
 }
}

void draw(){
  background(0);
  //made a cool background but its commented out because it makes the circles super slow 
  //SO un-comment to see!!
  /*stroke(0,50,255);
  strokeWeight(0.001);
  for(int x = 10; x<=width; x += 30) {
    for(int y = 10; y <=height; y +=30) {
    line(x,y, width/4, height/4);
    line(x,y, width/4*3, height/4*3);
    }
  }
  stroke(0,255,0);
  for(int x = 10; x<=width; x += 30) {
    for(int y = 10; y <=height; y +=30) {
    line(width/4*3, height/4, x, y);
    line(width/4, height/4*3, x, y);
    }
  }*/
  
  fill(0,0);
  stroke(255);
  strokeWeight(0.7);
    
  for (int i = 0; i<50; i++){
    ellipse(xPos [i], yPos [i], 30,30);
    xPos [i]+= xMove [i];
    yPos [i]+= yMove [i]; 
 
  if ((xPos [i] > width) || (xPos [i] < 0) || (yPos [i] > height) || (yPos [i] < 0)) {
    xMove [i] *= -1;
    yMove [i] *= -1;
  }

  if ((xPos [i] > width/2-40) && (xPos [i] < width/2+40) && (yPos [i] > height/2-40) && (yPos [i] < height/2+40)) {
    xMove [i] *= -1;
    yMove [i] *= -1;
  }
}
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 60,60);
}
