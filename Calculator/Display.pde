class Display {

  int displayX;
  int displayY;
  int displayWidthX;
  int displayHeightY;

  color displayColour;


  Display(int _displayX, int _displayY, int _displayWidthX, int _displayHeightY) {

    displayX = _displayX;
    displayY = _displayY;
    displayWidthX = _displayWidthX;
    displayHeightY = _displayHeightY;
  }

  void drawDisplay(color displayColour) {

    fill(displayColour);

    rect(displayX, displayY, displayWidthX, displayHeightY);
  }
}