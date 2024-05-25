float tam;
int pant;
PFont fuente;
PImage foto0, foto1, foto2, foto3, foto4;

void setup() {
  fuente = loadFont("Arial-ItalicMT-30.vlw");
  foto0 = loadImage("diapo0.jpg");
  foto1 = loadImage("diapo1.jpg");
  foto2 = loadImage("diapo2.jpg");
  foto3 = loadImage("diapo3.jpg");
  foto4 = loadImage("diapo4.jpg");
  size(640, 480);
  pant = 0;
  tam = 30;
  textAlign(CENTER, CENTER);
  textFont(fuente,30);
}

void draw() {
  background(255);
  textSize(tam);
  if (pant == 0) {
    image(foto0, 0, 0, 640, 480);
    fill(255);
    rect(100, 50, 440, 340);
    fill(0);
    text("Presione botón para comenzar \n la presentación", 320, 150);
    fill(255, 0, 0);
    ellipse(320, 240, 50, 50);
  }
  if (pant == 1) {
    image(foto1, 0, 0, 640, 480);
    fill(255);
    rect(100, 50, 440, 340);
    fill(0);
    text("Esta es la obra 'Machine \n Allucinations: Coral' \n Hecho por el artista \n turco-americano Refik Anadol, \n compuesta por una sucesión de \n 1.742.772 imágenes de corales", 320, 220);
    tam-=0.05;
  }
  if (pant == 2) {
    image(foto2, 0, 0, 640, 480);
    fill(255);
    rect(100, 50, 440, 340);
    fill(0);
    text("'Machine Allucinations: Coral' \n es una de las obras más \n importantes del arte digital. \n Es un cruce entre arte, ciencia y \n tecnología presentada por primera \n vez en la playa del Faena Hotel durante \n la Art Basel Week 2021 ", 320, 215);
    tam-=0.05;
  }
  if (pant == 3) {
    image(foto3, 0, 0, 640, 480);
    fill(255);
    rect(100, 50, 440, 340);
    fill(0);
    text("Como indíca el nombre de la obra \n esta fue compuesta por un \n programa de inteligencia artificial \n en la cual se le filtraron varias \n imágenes de corales encontradas \n por redes sociales y la máquina \n logró crear este video", 320, 215);
    tam-=0.05;
  }
  if (pant == 4) {
    tam = 25;
    image(foto4, 0, 0, 640, 480);
    fill(255);
    rect(100, 50, 440, 340);
    fill(0);
    text("Ha llegado al final de la presentación. \n Presione el botón para volver al inicio", 320, 150);
    fill(255, 0, 0);
    ellipse(320, 240, 50, 50);
  }
  if (tam < 15) {
    tam = 30;
    pant++;
  }
}
void mousePressed() {
  if (pant == 0 && dist(320, 240, mouseX, mouseY) < 25) {
    pant++;
  }
  if (pant == 4 && dist(320, 240, mouseX, mouseY) < 25) {
    pant = 0;
  }
}
