//Robbie Mills 
//Calculator
//research parseInt to convert a string to an int -     http://stackoverflow.com/questions/5585779/converting-string-to-int-in-java
//slider class, slider

int[] test = new int[10];

//integer created to move one array place on each mouse click

String some = "";

boolean click;

Button[] buttons = new Button[12];
Display calculatordisplay = new Display(100, 150, 600, 100);

void setup() {

  size(800, 600);
  textAlign(CENTER, CENTER);
  smooth();

  buttons[0] = new Button(275, 450, 50, 50, 7, "1");
  buttons[1] = new Button(330, 450, 50, 50, 7, "2");
  buttons[2] = new Button(385, 450, 50, 50, 7, "3");
  buttons[3] = new Button(275, 395, 50, 50, 7, "4");
  buttons[4] = new Button(330, 395, 50, 50, 7, "5");
  buttons[5] = new Button(385, 395, 50, 50, 7, "6");
  buttons[6] = new Button(275, 340, 50, 50, 7, "7");
  buttons[7] = new Button(330, 340, 50, 50, 7, "8");
  buttons[8] = new Button(385, 340, 50, 50, 7, "9");
  buttons[9] = new Button(440, 340, 50, 50, 7, "*");
  buttons[10] = new Button(440, 450, 50, 50, 7, "C");
  buttons[11] = new Button(440, 395, 50, 50, 7, "DEL");
}

void draw() {  

  background(255);

  calculatordisplay.drawDisplay(#FFFFFF);
  for (int i = 0; i < 12; i++) {

    buttons[i].drawButton();
    buttons[i].changeColourOnMouseHover(mouseX, mouseY);
    if (buttons[i].buttonPressed()) {

      click = false;
      some = some + buttons[i].buttonName;
    }
  }
}

void mouseClicked() {

  click = true;
}