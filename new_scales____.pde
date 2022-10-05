void setup() {
  size(1000, 1000);
  scale(10, 10);
  for (int row = width; row > -1; row -= width/(width/25)) {
    for (int col = height; col > -1; col -= height/(height/25)) {
      scale(row,col);
    }
  }
}

void scale(int x, int y) {
  int diam = 0;
  int r = (int)(Math.random()*255);
  int g = (int)(Math.random()*255);
  int b = (int)(Math.random()*255);
  noFill();
  while (diam<30) {
    stroke(r, g, b);
    rect(x, y, diam, diam);
    ellipse(x+15, y+(30), diam, diam);
    diam++;
    //r-=255/30.0;
    g-=255/30.0;
    b-=255/30.0;
  }
}
