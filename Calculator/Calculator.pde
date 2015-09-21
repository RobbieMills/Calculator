//Robbie Mills 
//Calculator

Button one = new Button(300, 300, 50, 50, "1");
Button two = new Button(355, 300, 50, 50, "2");
Button three = new Button(410, 300, 50, 50, "3");
//Clear string
Button clear = new Button(465, 300, 50, 50, "C");
//Currently shows size of string.  Plan is to delete one last string index.
Button delete = new Button(520, 300, 50, 50, "DEL");

Display display = new Display(100, 150, 600, 100);

String some = "";

boolean click = false;

void setup() {

  size(800, 600);

  textAlign(CENTER);
}

void draw() {

  background(255);
  //fill(0);
  //text(some, 100, 20);

  one.drawButton(#FFFFFF, #000000);
  two.drawButton(#FFFFFF, #000000);
  three.drawButton(#FFFFFF, #000000);
  clear.drawButton(#FFFFFF, #000000);
  delete.drawButton(#FFFFFF, #000000);

  display.drawDisplay(#FFFFFF);


  //click is a boolean which determines mouse clicks
  if (click && one.buttonPressed()) {

    click = false;

    //println("1");

    //fill(255, 0, 0);
    //text("1", 325, 200);
    some = some + "1 " + " ";
  }
  if (click && two.buttonPressed()) {

    click = false;

    //println("2");

    //fill(255, 0, 0);
    //text("2", 380, 200);
    some = some + "2 " + " ";
  }
  if (click && three.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "3 " + " ";
  }

  if (click && clear.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = "";
  }

  if (click && delete.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);

    //divided by 3 because because 2 spaces are added after each character to space them out
    println(some.length()/3);
  }

  //if (click == true) {

  // exit();
  //}
}

//boolean click() {

//boolean click = false;
//return click;
//}

void mouseClicked() {

click = true;
}