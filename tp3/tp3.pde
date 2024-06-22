//https://youtu.be/Ws8_G7qVXIM
int loop, colors;
int posX = -30;
int posY = 0;
boolean check;
PImage foto;

void setup() {
  foto = loadImage("F_16.jpg");
  size(800, 400);
  colors = 255;
  textAlign(CENTER);
  textSize(20);
}
void draw() {
  if (clickBoton() == false) {
    background(255);
    fill(0);
    text("Presione el botón para ver \n la ilusión óptica", 400, 100);
    strokeWeight(2);
    stroke(0);
    fill(255,0,0);
    ellipse(400,200,50,50);
    loop = 0;
    posX = -30;
    posY = 0;
  } else if (clickBoton() == true) {
    translate(400, 0);
    dibujoCuadrados(colors);
    translate(-400, 0);
    image(foto, 0, 0, 400, 400);
  }
}


boolean clickBoton() {
  if (mousePressed && dist(mouseX,mouseY,400,200) < 25) {
    return  true;
  } else {
    return  false;
  }
}
