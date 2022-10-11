/*TP 4 
Comision 3. Martes 14 a 16hs
Profesor: David Bedoian
Alumnos: 
Delfina Trebino Llambías 79304/9
Jesús León 91602/3
*/
//fondo
float G, B;
  //astronauta
  float pX=700;
  float pY=150;
  float tama=0;
//elementos del Array/for
float disparoNuevoElemento;
float disparoNuevoElemento1;
int vel= 10;
ArrayList <Cielo> espacio;
ArrayList <Space> spacecraft;
//secuencia de imagenes 
PImage[] img = new PImage[10];
PImage[] imgM = new PImage[2];
PImage astronauta;
PImage fondostar;

/*Diferencia de declarar una variable dentro o fuera del array:
 Las veces que se ejecuta
    *En el setup solo una vez
    *En el array las veces que se ejecute el array (por función o for)
*/
void setup(){
  size (700,500);
  //ArrayList
  espacio= new ArrayList <Cielo>();
  spacecraft = new ArrayList <Space>();
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
    //Marciano
    imgM[0] = loadImage ("spaceship7.png");
    imgM[1] = loadImage ("spaceship6.png");
    //fondo
    astronauta= loadImage  ("astronauta1v2.png");
    fondostar = loadImage  ("fondostar.png");
      G=232;
      B=255;
     
}

void draw (){
 background (0,G,B);
   fondo();   
  // AACielo
 for (int i=0;i<espacio.size(); i++){
   Cielo nubesAux=espacio.get(i);
   nubesAux.movernube();
   nubesAux.dibujarnubes();
   nubesAux.actualizar();
 }
 for (int e=0; e<vel; e++){
 if ( disparoNuevoElemento<=0){
   disparoNuevoElemento = random(2000,4000);//agregar ls obj cda tantos frames
   espacio.add (new Cielo());
 }
 }
// Marciano
 for (int i=0;i<spacecraft.size(); i++){
   Space naveAux=spacecraft.get(i);
   naveAux.dibujar();
   naveAux.mover();
 }
 for (int e=0; e<vel; e++){
 if ( disparoNuevoElemento1<=0){
   disparoNuevoElemento1 = 2200; //frecuencia en la q aparecen objetos
   spacecraft.add (new Space()); 
 }else { //sin esto el array se ejecuta una sola vez una sola vez en secuencia
  disparoNuevoElemento1--; 
 }
 }
  drawastronauta();
}
