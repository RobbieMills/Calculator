//Robbie Mills 
//Calculator

Button one = new Button(275, 450, 50, 50, "1");
Button two = new Button(330, 450, 50, 50, "2");
Button three = new Button(385, 450, 50, 50, "3");

Button four = new Button(275, 395, 50, 50, "4");
Button five = new Button(330, 395, 50, 50, "5");
Button six = new Button(385, 395, 50, 50, "6");

Button seven = new Button(275, 340, 50, 50, "7");
Button eight = new Button(330, 340, 50, 50, "8");
Button nine = new Button(385, 340, 50, 50, "9");

Button multiply = new Button(450, 340, 50, 50, "*");

int[] test = new int[10];

//Clear string
Button clear = new Button(440, 450, 50, 50, "C");
//Currently shows size of string.  Plan is to delete one last string index.
Button delete = new Button(440, 395, 50, 50, "DEL");

Display display = new Display(100, 150, 600, 100);

String some = "";

boolean click = false;
//boolean operatorselected = false;


//int[] test = new int[10];


//integer created to move one array place on each mouse click
//previously the first array slot would be overwritten
int moveon = 0;

void setup() {

  size(800, 600);

  textAlign(CENTER);
}

void draw() {  

  fill(255,0,0);
  println(test);
  //Testing integet array calculation - Success
  //test[0] = 2;
  //test[1] = 5;
  //test[2] = 10;
  //println(test[0]*test[2]);

  //background(255);
  //fill(0);
  //text(some, 100, 20);

  one.drawButton(#FFFFFF, #000000);
  two.drawButton(#FFFFFF, #000000);
  three.drawButton(#FFFFFF, #000000);
  four.drawButton(#FFFFFF, #000000);
  five.drawButton(#FFFFFF, #000000);
  six.drawButton(#FFFFFF, #000000);
  seven.drawButton(#FFFFFF, #000000);
  eight.drawButton(#FFFFFF, #000000);
  nine.drawButton(#FFFFFF, #000000);

  multiply.drawButton(#FFFFFF, #000000);

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

    test[0+moveon] = 1;
  }
  if (click && two.buttonPressed()) {

    click = false;

    //println("2");

    //fill(255, 0, 0);
    //text("2", 380, 200);
    some = some + "2 " + " ";

    test[0+moveon] = 2;
  }
  if (click && three.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "3 " + " ";

    test[0+moveon] = 3;
  }

  if (click && four.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "4 " + " ";

    test[0+moveon] = 4;
  }
  if (click && five.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "5 " + " ";

    test[0+moveon] = 5;
  }
  if (click && six.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "6 " + " ";

    test[0+moveon] = 6;
  }
  if (click && seven.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "7 " + " ";

    test[0+moveon] = 7;
  }
  if (click && eight.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "8 " + " ";

    test[0+moveon] = 8;
  }
  if (click && nine.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);
    some = some + "9 " + " ";

    test[0+moveon] = 9;
  }

  if (click && clear.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);

    //Resets the string
    some = "";


    //clears test array of values
    for (int i = 0; i < 10; i++) {

      test[i] = 0;
    }
  }

  if (click && delete.buttonPressed()) {

    click = false;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);

    //divided by 3 because because 2 spaces are added after each character to space them out
    println(some.length()/3);
  }

  if (click && multiply.buttonPressed()) {

    click = false;
    
    

    //operatorselected = true;

    //println("3");

    //fill(255, 0, 0);
    //text("3", 430, 200);

    //divided by 3 because because 2 spaces are added after each character to space them out
    //println(some.length()/3);
  }

  //if (click == true) {

  // exit();
  //}

  //if (operatorselected = true) {

  //background(255,0,0);
  //}
}


//boolean click() {

//boolean click = false;
//return click;
//}

void mouseClicked() {

  click = true;
}

//boolean operatorselected(){

//  boolean operatorselected = false;

//  return operatorselected;

//}