class Display {

  int displayX;
  int displayY;
  int displayWidthX;
  int displayHeightY;

  color displayColour;
  color strokeCol = 0;


  Display(int _displayX, int _displayY, int _displayWidthX, int _displayHeightY) {

    displayX = _displayX;
    displayY = _displayY;
    displayWidthX = _displayWidthX;
    displayHeightY = _displayHeightY;
  }

  void drawDisplay(color displayColour) {

    stroke(strokeCol);

    fill(displayColour);
    strokeWeight(4);

    rect(displayX, displayY, displayWidthX, displayHeightY);
    fill(0);
    text(some, displayX+displayWidthX/2, displayY+displayHeightY/2);
  }
}