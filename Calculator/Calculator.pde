//Robbie Mills 
//Calculator

//research parseInt to convert a string to an int -     http://stackoverflow.com/questions/5585779/converting-string-to-int-in-java

//slider class, slider

Button one = new Button(275, 450, 50, 50, 7, "1");
Button two = new Button(330, 450, 50, 50, 7, "2");
Button three = new Button(385, 450, 50, 50, 7, "3");

Button four = new Button(275, 395, 50, 50, 7, "4");
Button five = new Button(330, 395, 50, 50, 7, "5");
Button six = new Button(385, 395, 50, 50, 7, "6");

Button seven = new Button(275, 340, 50, 50, 7, "7");
Button eight = new Button(330, 340, 50, 50, 7, "8");
Button nine = new Button(385, 340, 50, 50, 7, "9");

Button multiply = new Button(440, 340, 50, 50, 7, "*");

//Clear string
Button clear = new Button(440, 450, 50, 50, 7, "C");
//Currently shows size of string.  Plan is to delete one last string index.
Button delete = new Button(440, 395, 50, 50, 7, "DEL");
//Calculator screen
Display display = new Display(100, 150, 600, 100);

int[] test = new int[10];

//integer created to move one array place on each mouse click
//previously the first array slot would be overwritten
//moveon integer is -1 so the first num is in array slot 0

int moveon = -1;

String some = "";

boolean click = false;

//int y = Integer.parseInt(some);

void setup() {

  size(800, 600);
  textAlign(CENTER, CENTER);
  smooth();
}

void draw() {  

  //background(255);
//int foo = Integer.parseInt("1234");

//println(y);

  fill(255, 0, 0);
  //println(y);

  one.drawButton();
  one.changeColourOnMouseHover(mouseX, mouseY);

  two.drawButton();
  two.changeColourOnMouseHover(mouseX, mouseY);

  three.drawButton();
  three.changeColourOnMouseHover(mouseX, mouseY);

  four.drawButton();
  four.changeColourOnMouseHover(mouseX, mouseY);

  five.drawButton();
  five.changeColourOnMouseHover(mouseX, mouseY);

  six.drawButton();
  six.changeColourOnMouseHover(mouseX, mouseY);

  seven.drawButton();
  seven.changeColourOnMouseHover(mouseX, mouseY);

  eight.drawButton();
  eight.changeColourOnMouseHover(mouseX, mouseY);

  nine.drawButton();
  nine.changeColourOnMouseHover(mouseX, mouseY);

  multiply.drawButton();
  multiply.changeColourOnMouseHover(mouseX, mouseY);


  clear.drawButton();
  clear.changeColourOnMouseHover(mouseX, mouseY);

  delete.drawButton();
  delete.changeColourOnMouseHover(mouseX, mouseY);

  display.drawDisplay(#FFFFFF);

  //Put in to avoid crashes when the array goes out of bounds
  //During testing the array is/was only 10 spaces long
  if (moveon == 9) {
    exit();
  }

  //click is a boolean which determines mouse clicks
  if (click && one.buttonPressed()) {

    //Without this the boolean remains true and multiple numbers appear in the string
    click = false;

    some = some + "1 " + " ";

    test[0+moveon] = 1;
  }

  if (click && two.buttonPressed()) {

    click = false;

    some = some + "2 " + " ";

    test[0+moveon] = 2;
  }
  if (click && three.buttonPressed()) {

    click = false;

    some = some + "3 " + " ";

    test[0+moveon] = 3;
  }

  if (click && four.buttonPressed()) {

    click = false;

    some = some + "4 " + " ";

    test[0+moveon] = 4;
  }
  if (click && five.buttonPressed()) {

    click = false;

    some = some + "5 " + " ";

    test[0+moveon] = 5;
  }
  if (click && six.buttonPressed()) {

    click = false;

    some = some + "6 " + " ";

    test[0+moveon] = 6;
  }
  if (click && seven.buttonPressed()) {

    click = false;

    some = some + "7 " + " ";

    test[0+moveon] = 7;
  }
  if (click && eight.buttonPressed()) {

    click = false;

    some = some + "8 " + " ";

    test[0+moveon] = 8;
  }
  if (click && nine.buttonPressed()) {

    click = false;

    some = some + "9 " + " ";

    test[0+moveon] = 9;
  }

  if (click && clear.buttonPressed()) {

    click = false;

    //Resets the string
    some = "";

    //resets moveon to prevent exit() when clear has been used
     moveon = -1;

    //clears test array of values
    // i < length of the test array 
    for (int i = 0; i < test.length; i++) {

      test[i] = 0;
    }
  }

  if (click && delete.buttonPressed()) {

    click = false;

    //divided by 3 because because 2 spaces are added after each character to space them out
    println(some.length()/3);
  }

  if (click && multiply.buttonPressed()) {

    click = false;

    some = "";

    text(test[0]*test[0], 400, 50);
    //acol = (255);
  }
}

void mouseClicked() {

  click = true;
}