 class Disparar{             //   disparar
  float Pposx=50;
  float Pposy=(mouseY);
  int radio=10;
  Disparar(){
  }
  void mostrar(){
    fill (255,0,0);
    ellipse (Pposx,Pposy,radio,radio);
  }
  void mover(){
   if (pantalla==2){
     Pposx=Pposx+20;
  }}
  void collision (){
   if (Pposx>=posx-tam/2 && Pposx<=posx+tam/2 && Pposy<=posy+tam/2 && Pposy>posy-tam/2){
     colision=1;
   } } }
