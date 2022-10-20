Walker [] joes;

void setup() {
  size (500, 500);
  background(0);
  joes = new Walker[10];
  int i = 0;
  while (i < joes.length) {
    joes[i] = new Walker();
    i++;
  }
}

void draw() {
  background(0);
  for (int i = 0; i < joes.length; i++) {
    joes[i].show();
    joes[i].walk();
  }
}

class Walker
{
  int myX, myY, myColor;
  Walker() {
    myX = myY = 250;
    myColor = color((int)(Math.random()*255+1), (int)(Math.random()*255+1), (int)(Math.random()*255+1));
  }
  void walk() {
for (int i = 0; i < joes.length; i++) {
      if (joes[i].myX < mouseX)
        myX = myX + (int)(Math.random()*2);
      if (joes[i].myX > mouseX)
        myX = myX + (int)(Math.random()*2-2);
      if (joes[i].myY < mouseY)
        myY = myY + (int)(Math.random()*2);
      if (joes[i].myY > mouseY)
        myY = myY + (int)(Math.random()*2-2);
    }
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 30, 30);
  }
}
