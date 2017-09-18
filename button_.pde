int rectX = 200;
int rectY = 200;
int time = millis();

void setup () {
  size(400,400);
  background(0);
  smooth();

}

void draw () {
  //circles following mouse
  float weight = dist(mouseX, mouseY, pmouseX, pmouseY);
  strokeWeight(weight);
  ellipse(mouseX, mouseY, 10,10);
  
  //button
  int frequency = 30;
  rectMode(CENTER); 
  
  fill(#269B16);
  stroke(#1B760E);
  strokeWeight(6);
  rect(rectX, rectY, 100,100);
  
 /*   
  fill(#24DEEE);
  stroke(#209DA8);
  rect(rectX, rectY, 100,100);
*/

  
  // 'B' key change color of circles to blue
  if (keyPressed) { 
   if (key == 'b') {
    fill(#24DEEE);
    stroke(#209DA8);
    }
   }
      else {
        fill(#269B16);
        stroke(#1B760E);}
}

//reset background w button
void mouseClicked () {
  if ((mouseX >150)&&(mouseX<250)&&(mouseY>150)&&(mouseY<250)) {
  background(0); }
}