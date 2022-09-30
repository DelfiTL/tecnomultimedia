/*TP 4 
Comision 3. Martes 14 a 16hs
Profesor: David Bedoian
Alumnos: 
Delfina Trebino Llambías 79304/9
Jesús León 91602/3
*/

float G, B;
float disparoNuevoElemento;
int cant= 5;
ArrayList <Cielo> espacio;
//secuencia de imagenes
 int A=0;
PImage[] img = new PImage[10];

void setup(){
  size (400,750);
  G=232;
  B=255;
  //ArrayList
  espacio= new ArrayList <Cielo>();
  //secuencia img
    img[0] = loadImage ("pngwing.png");
    img[1] = loadImage ("pngwing1.png");
    img[2] = loadImage ("pngwing2.png");
    img[3] = loadImage ("pngwing3.png");
    img[4] = loadImage ("pngwing4.png");
    img[5] = loadImage ("pngwing5.png");
    img[6] = loadImage ("pngwing6.png");
    img[7] = loadImage ("pngwing7.png");
    img[8] = loadImage ("pngwing8.png");
    img[9] = loadImage ("pngwing9.png");
}

void draw (){
 background (0,G,B);
  if (G>=8){
  G=G-0.3;
 }
  if (G<=8 && B>=30){
  B=B-0.3;}
  // dibujar los objetos 
 for (int i=0;i<espacio.size(); i++){
   Cielo nubesAux=espacio.get(i);
   nubesAux.movernube();
   nubesAux.dibujarnubes();
 }
 //para agregar los objetos cada tantos frames
 for (int i=0; i<cant; i++){
 if ( disparoNuevoElemento<=0){
   disparoNuevoElemento = random(1000,1500);//mientras+ bajo el numero,+ nubes
   espacio.add (new Cielo());//rndom entre la cant de nbes qse ven por fotograma
   A=A+1;
 }   else {      // sin esto se dibuja una sola vez
  disparoNuevoElemento--; 
 }
 //if (A>=0){
 //  A+=A;
  if (A>=10){
   A=A-2;
 }
 }
}
