void fondo() {
  imageMode (CORNER);
  image (fondostar, 0, 0, 700, 500);
  if (G>=8) {
    G=G-0.3;
  }
  if (G<=8 && B>=30) {
    B=B-0.3;
  }
}
void drawastronauta() {
  imageMode (CENTER);
  image (astronauta, pX, pY, tama, tama);
  pX-=0.4;
  if (tama>=0 && tama<=300 ) {
    tama+=0.4;
  }
}
