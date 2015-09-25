class Button {

  int buttonXpos;
  int buttonYpos;
  int buttonwidth;
  int buttonheight;

  String buttonName;

  color buttonColour;
  color textColour;

  //boolean click = false;

  //The button class constructor accepts 5 variables
  //x pos, y pos, width, height, and button label(String)
  Button(int _buttonXpos, int _buttonYpos, int _buttonwidth, int _buttonheight, String _buttonName) {

    buttonXpos = _buttonXpos;
    buttonYpos = _buttonYpos;
    buttonwidth = _buttonwidth;
    buttonheight = _buttonheight;
    buttonName = _buttonName;
  }

  //This method draws a button
  //2 color variables are accepted, one for the button colour and 1 for the text colour
  void drawButton(color buttonColour, color textColour) {

    fill(buttonColour);
    rect(buttonXpos, buttonYpos, buttonwidth, buttonheight);
    fill(textColour);
    //When positioning the X and Y coords of the text
    //half of the button width is added to the button x pos and the same principle is applied for the height and ypos
    //this is to position the text at the center of the button 
    text(buttonName, buttonXpos+buttonwidth/2, buttonYpos+buttonheight/2);
  }

  //This method checks if a button has been pressed
  //The buttonPressed boolean returns true if the button has been pressed
  boolean buttonPressed() {

    boolean buttonPressed = false;

    if (mouseX > buttonXpos && mouseX < buttonXpos + buttonwidth && mouseY > buttonYpos && mouseY < buttonYpos + buttonheight) {

      click = false;
      //moveon integer is -1 so the first num is in array slot 0
      moveon = moveon +1;

      buttonPressed = true;
      return buttonPressed;
    } else {

      buttonPressed = false;
      return buttonPressed;
    }
  }

  //boolean click() {

  // boolean click = false;

  // return click;
  //}

  //void mouseClicked() {

  // click = true;
  //}
}