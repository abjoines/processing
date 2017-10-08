Bug[] allthebugs = new Bug[5];
float [] xTop = new float[20];
float [] yTop = new float[20];
float [] xLeft = new float[20];
float [] yBottom = new float[20];
float [] xRight = new float[20];


void setup() {
  size(500, 500);
  smooth();
  for (int i = 0; i <allthebugs.length; i++) {
    allthebugs[i] = new Bug();
  }
}

void draw() {
  background(250);
  fill(240);

  for (int i=0; i <allthebugs.length; i++) {
    allthebugs[i].display();
    allthebugs[i].move();
  }
}