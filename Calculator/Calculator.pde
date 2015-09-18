//Robbie Mills 
//Calculator

Button one = new Button(300, 300, 50, 50, "1");
Button two = new Button(355, 300, 50, 50, "2");
Button three = new Button(410, 300, 50, 50, "3");

Display display = new Display(100, 150, 600, 100);

void setup() {

  size(800, 600);

  textAlign(CENTER);
}

void draw() {

  //background(255);

  one.drawButton(#FFFFFF, #000000);
  two.drawButton(#FFFFFF, #000000);
  three.drawButton(#FFFFFF, #000000);

  display.drawDisplay(#FFFFFF);

  if (one.buttonPressed()) {

    println("1");

    fill(255, 0, 0);
    text("1", 325, 200);
  }
  if (two.buttonPressed()) {

    println("2");

    fill(255, 0, 0);
    text("2", 380, 200);
  }
  if (three.buttonPressed()) {

    println("3");

    fill(255, 0, 0);
    text("3", 430, 200);
  }
}