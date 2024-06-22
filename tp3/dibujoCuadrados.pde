void dibujoCuadrados(int fill) {
  for (loop = 0; loop <= 11; loop++) {
    int cuadX = posX;
    for ( int i = 0; i <= 13; i ++) {
      strokeWeight(3);
      stroke(140);
      fill(fill);
      rect(cuadX, posY, 40, 40);
      cuadX += 40;
      if (fill == 0) {
        fill = 255;
      } else if (fill == 255) {
        fill = 0;
      }
    }
    if (posX == -30) {
      posX += 10;
      posY+=40;
    } else if (posX == -20 && posY < 120) {
      posX+=10;
      posY+=40;
    } else if (posX == -20 && posY == 120) {
      posX-=10;
      posY+=40;
    } else if (posX == -10) {
      posX-=10;
      posY+=40;
    } else if (posX == -20 && posY < 240) {
      posX+=10;
      posY+=40;
    } else if (posX == -20 && posY == 240) {
      posX-=10;
      posY+=40;
    } else if (posX == -20 && posY < 280) {
      posX+=10;
      posY+=40;
    } else if (posX == -20 && posY == 280) {
      posX-=10;
      posY+=40;
    }
  }
}
