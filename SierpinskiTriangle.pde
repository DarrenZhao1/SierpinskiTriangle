public void setup() {
  size(900, 850);
}

int triangle = 850;
public void draw() {
  background(0, 0, 0);
  fill(0,0,0);
  stroke(mouseX, mouseY - 30, mouseX + 100);
  sierpinski(20, 830, triangle);
}

public void sierpinski(int x, int y, int len){
  if (len <= mouseY) {
    triangle (x, y, x +len/2, y - len, x+len, y);
  } 
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
