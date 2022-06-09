/*
Com. 3 -David Bedoian  martes de 14 a 16hs
TP2  ciclo for
Delfina Trebino Llambías 
Legajo= 79304/9
https://youtu.be/TbSstsx6dgI
*/
int cant; //declaración de variables
int X;
int A;
int R;
int G;
int B;
int N;
void setup (){
  size (600,600);
  cant =500;  //asignación de valores
  X=1;
  A=25;
  R=200;
  G=64;
  B=64;
  N=157;
}
void draw (){
  background (0,0,35);
  translate (width/2, height/2); //cambiar el 0 de las coordenadas X e Y de la ventana
  for (int i=0; i<20;i++){ //for se repetira 19 veces
  for (int tam=475; tam>0; tam=tam-47){ //declara y asigna variable
  rotate (radians(-200)); //rota los ojes X e Y de la ventana
  strokeWeight (1.5);
  stroke (N,A);
  fill(R,G,B,X);
  rectMode (CENTER);
  rect (0,0,tam,tam);//a medida que se cumpla un ciclo variable tam va a restarse 47
 }
 }
}
void mousePressed (){
 for (int e=0;e<cant; e++){
   translate (300,300);
   rotate (radians(180));
    fill(255);
   ellipse (random (width), random (height), 10,10);
 }
}
void keyPressed () {
  if (key == '1' ) {  //cambio de transparencia de los cuadrados
    X=1;
  }
   if (key == '2' ) {
    X=5;
}
 if (key == '3' ) {
    X=9;
 }
 if (key == '4' ) {
    X=15;
 }
  if (key == '5') {
    X=20;
 }
   if (key == '6') {
    X=25;
 }
    if (key == '7' ) { //cambios de color RGB
    R=R+5;
  }
   if (key == '8' ) {
    G=G+15;
  }
     if (key == '9' ) {
    B=B+15;
  }
     if (key == '0' ) { //le quita transparencia a la linea
    A=A+5;
  }
   if (key == 'n' ) { //linea negro
    N=0;
   }
  if (key == ' ' ) { //se establecen los colores originales
    R=200;
     G=64;
     B=64;
     A=25;
     N=157;
  }
}
