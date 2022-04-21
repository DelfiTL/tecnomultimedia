void setup() {
  size (400, 400);
}
void draw () {
  //fondo
  noStroke();
  strokeWeight(2);
  background (96, 23, 38);
  fill (44, 125, 176, 125);
  triangle (25, 106, 60, 120, 40, 182);
  triangle (25, 407, 43, 331, 442, 135);
  triangle (327, 300, 329, 270, 274, 315);
  triangle (277, 120, 410, 118, 329, -5);
  circle (0, 0, 126);
  circle (360, 242, 22);
  circle (204, 358, 30);
  fill (75, 167, 88, 100);
  triangle (246, 4, 422, 61, 353, 163);
  triangle (85, 106, 215, 118, -125, 187);
  triangle (399, 367, 371, 316, 291, 268);
  circle (55, 317, 73);

  //hombros
  fill (124, 28, 82);
  rect (50, 314, 310, 200, 120);
  fill (186, 128, 128);
  rect (165, 275, 70, 50, 10);
  ellipse (200, 325, 70, 75);
  stroke(80);
  line (120, 400, 120, 370);
  line (300, 400, 300, 370);
  
  //Cara
  noStroke();
  fill (206, 153, 153);
  rect (125, 75, 150, 150, 30);
  ellipse (200, 200, 150, 192);
  //Nariz
  stroke (137, 95, 107);
  arc (185, 205, 24, 23, -5, -2);
  arc (207, 205, 37, 26, -7, -5);
  ellipse (185, 214, 8, 2);
  ellipse (212, 214, 8, 2);
  
  //Ojos
  stroke (0);
  strokeWeight (2);
  fill (255);
  ellipse (169, 155, 40, 21);
  ellipse (235, 155, 40, 21);
  noStroke();
  fill (112, 68, 71);
  circle (170, 155, 20);
  circle (235, 155, 20);
  fill(255);
  circle (173, 150, 4);
  circle (239, 150, 4);
  fill (0);
  circle (170, 155, 8);
  circle (235, 155, 8);
  
  //cejas
  arc (165, 130, 51, 7, 3, 7);
  arc (235, 130, 51, 7, 3, 7);
  
  //Boca
  noStroke();
  fill (161, 50, 50);
  //  ellipse (200,245,65,15);
  triangle (190, 244, 242, 245, 210, 235);
  triangle (160, 245, 200, 245, 191, 236);
  ellipse (200, 245, 47, 18);
  ellipse (195, 240, 15, 15);
  ellipse (204, 240, 15, 15);
  
  //Pelo
  noFill();
  stroke(0);
  strokeWeight(3);
  ellipse (130, 106, 35, 75);
  ellipse (130, 100, 14, 88);
  ellipse (130, 131, 25, 133);
  fill (0);
  arc (271, 206, 47, 291, 4, 8);
  arc (132, 205, 47, 291, 14, 17);
  ellipse (197, 71, 153, 60);
  ellipse(125,89,22,55);
//captura de pantalla
  save ("TP0.jpg");
  //Texto
  textSize (60);
  fill (227, 0, 214);
  text ("Delfi", 10, 55);
}
