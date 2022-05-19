PImage fondo0, fondo1, fondo1a, fondo2, gameover, creditos;
PFont fuente0, fuente1;
int pantalla;
float A, B, C, D, E, F, G;
//rebote
float posX, posY, tamX, tamY;
float velX, velY;
color relleno;
//pantalla2
int delfi=0;
int delfina=0;
//pantalla4
float pX, pY, tX, tY, pX2;

void setup () {
  size (400, 400);
  pantalla=0;
  fondo0=loadImage ("start.jpg");
  fondo1= loadImage ("fondorosa.jpg");
  fondo1a= loadImage ("espacio.jpg");
  fondo2= loadImage ("fondo.jpg");
  gameover= loadImage ("gameover.jpg");
  creditos= loadImage ("galaxia3.jpg");
  A=400;
  B=0;
  C=0;
  D=250;
  E=400;
  F=0.1;
  G=0;
  fuente0= createFont ( "arcade.TTF", 48);
  fuente1= loadFont ( "Humanist777BT-BoldCondensedB-48.vlw");
  //rebote
  posX =100;
  posY =200;
  tamX =50;
  tamY =50;
  velX =5;
  velY =5;
  relleno= color (255, 0, 0); //rojo
  //pantalla4
  pX=82;
  pY=278;
  pX2=215;
  tX=113;
  tY=30;
}
void draw () {
  background (255);
  //                             PANTALLA 0 start
  if (pantalla==0) {
    image (fondo0, 0, 0, 400, 400);
    //botón
    noStroke();
    fill (30, 103, 171);
    rectMode (CENTER);
    rect (200, 228, 108, 35);
    strokeWeight (5);
    stroke (30, 103, 171);
    ellipse (197, 242, 103, 16);
    //texto
    fill(random(250), 0, 0);
    textAlign (CENTER);
    textFont (fuente0);
    textSize (50);
    text ("start", 200, 241);
    fill (random (0, 255));
    textSize (17);
    text (" precione el START para comenzar", 197, 370);
  }
  //                            PANTALLA 1 rebote botón
  if (pantalla==1) {
    image (fondo1a, B, 0, 2400, 400);
    B=B-5;
    if (B <=-2000) {
      B=0;
    }
    //rebote
    if (posX>=width-tamX/2) {
      velX=-5;
      relleno=color (random(200), random(90), random(255));
    }
    if (posX<=0+tamX/2) {
      velX=5;
      relleno=color (random(200), random(90), random(255));
    }
    if (posY>=height-tamY/2) {
      velY=-5;
      relleno=color (random(200), random(90), random(255));
    }
    if (posY<=0+tamX/2) {
      velY=5;
      relleno=color (random(200), random(90), random(255));
    }
    posX = posX+velX;
    posY += velY;
    //dibujo
    stroke (233, 9, 178, 100);
    strokeWeight(15);
    fill (relleno);
    circle (posX, posY, tamX);
    //texto
        textFont (fuente0);
    textSize (50);
    textAlign (CENTER);
    noStroke ();
    rectMode (CENTER);
    fill (186, 0, 105, 136);
    rect (197, 364, 212, 35);
    fill (relleno);
    textSize (20);
    text ("atrapa el boton", 200, 371);
  }
  //                          PANTALLA 2 instrucciones carrera
  if (pantalla==2) {
    image (fondo1, 0, 0, 2400, A);
    A=A+5;
    fill (0);
    textFont (fuente0);
    textSize (48);
    text ("carrera", 200, 57);
    textSize (27);
    text ("r", 190, 227);
    text ("barra", 190, 198);
    text ("instrucciones", 129, 135);
    textSize (21);
    text("adelantar\nreanudar", 324, 195);
    text("precione", 65, 193);
    text("precione", 65, 224);
    fill (random (0, 255));
    textSize (25);
    text (" click para continuar", 197, 370);
  }
  //                          PANTALLA 3 carrera
  if (pantalla==3) {
    image (fondo2, -58, -5, 519, 432);
    //dibujo
    strokeWeight(15);
    rectMode (CENTER);
    fill (218, 21, 183, 100);
    rect (delfi, 100, 50, 50);
    fill (44, 187, 192);
    rect (delfi, 100, 25, 25);
    fill (44, 187, 192, 100);
    circle (delfina, 300, 50);
    fill (218, 21, 183);
    circle(delfina, 300, 25);
    delfi=(delfi+1);
    if (delfina>=width) {
      pantalla=4;
      delfina=0;
    }
  }
  //                          PANTALLA 4 game over
  if (pantalla==4) {
    image (gameover, -68, -73, 545, 505);
    rectMode (CORNER);
    fill (200, 0, 0);
    rect (pX, pY, tX, tY, 16);
    rect (pX2, pY, tX, tY, 16);
    fill (255);
    textFont (fuente0);
    textSize(27);
    text ("yes", 140, 300);
    text ("credits", 274, 300);
    fill (random (0, 255));
    textSize (15);
    text (" elija una opcion", 197, 370);
  }
  //                          PANTALLA 5 creditos
  if (pantalla==5) {
    background (26, 26, 49);
    //dibujo
    noStroke ();
    fill (random(100, 250), 0, 100, 80);
    triangle (216, 314, 269, 234, 198, 166);
    triangle (39, 200, 110, 280, 88, 181);
    triangle (345, -43, 277, 67, 214, 70);
    triangle (244, 336, 347, 261, 444, 511);
    triangle (158, 392, 137, 265, 200, 188);
    triangle (84, 35, 77, 102, -3, 196);
    triangle (158, 82, 137, 6, 207, 43);
    triangle (299, 181, 270, 123, 386, 146);
    circle (300, 118, 20);
    circle (105, 324, 20);
    circle (41, 367, 57);
    circle (300, 249, 20);
    circle (233, 15, 20);
    circle (115, 81, 20);
    circle (206, 392, 43);
    circle (301, 182, 43);
    circle (395, 14, 60);
    circle (181, 143, 20);
    circle (67, 17, 43);
    circle (142, 195, 35);
    textAlign (CENTER);
    fill(241, 26, 138);
    textSize (85);
    textFont (fuente0);
    text ("GRACIAS", 200, 200);
    image (creditos, C, 0, 2120, 400);
    C=C-1.5;
    textFont (fuente1);
    textSize (24);
    fill (255, D);
    D=D-0.3;
    E=E-0.5;
    text ("Producción FBA-UNLP\nProfesor David bedoian\ncomisión N°3", 200, E);
    text ("Alumna\nDelfina Trebino Llambías", 200, E+120);
    fill (200, 0, 100, G);
    textSize (F);
    F=F+0.1;
    if (G>=0 && G<=240 ) {
      G=G+0.2;
    } else {
      G=-1;
    }
    text ("TP1", 200, 300);
  }
}
void mousePressed () {
  println (mouseX, mouseY);
  //pantalla 0 a la 1
  if (pantalla==0 &&mouseX>143 && mouseX<143+108 && mouseY>210 && mouseY< 210+35 ) {
    pantalla=1;
  }
  //pantalla 1 a la 2
  float d1= dist (mouseX, mouseY, posX, posY);
  float r1 =tamX/2;
  if (pantalla==1 && d1<r1) {
    pantalla=2;
  }  else if (pantalla==2) {
    pantalla=3  ;
  }
  // de la 4 a la 5 o la 0
  if (pantalla==4 && mouseX>pX && mouseX<tX+pX && mouseY>pY && mouseY<tY+pY ) {
    pantalla=0;
  }
  if (pantalla==4 && mouseX>pX2 && mouseX<tX+pX2 && mouseY>pY && mouseY<tY+pY ) {
    pantalla=5;
  }
}
void keyPressed () {
  if (key == '5' ) {
    pantalla=5;
  }
  if (key == '4' ) {
    pantalla=4;
  }
  if (key == '3' ) {
    pantalla=3;
  }
  if (key == '2' ) {
    pantalla=2;
  }
  if (key == '1' ) {
    pantalla=1;
  }
  //carrera
  if (key == ' ' && pantalla==3 ) {
    delfina=(delfina+11);
  }
  if (key == 'r' && pantalla==3 ) {
    delfi=0;
    delfina=0;
  }
}
