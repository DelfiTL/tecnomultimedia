 /* Comision 3      TP3 Array videojuego
Trebino Llambías Delfina 79304/9
Prof. David Bedoian 
https://www.youtube.com/watch?v=21XkOc5IDC4&ab_channel=TrebinoLlambiasDelfina
*/ 

ArrayList <Disparar>pelotas;

void setup(){
  size (600,600);
  pelotas=new ArrayList <Disparar>();
 //texto/imagen
  fuente= createFont ( "arcade.TTF", 48);
  fuente1= loadFont ( "OCRAbyBT-Regular-40.vlw");
  inicio =loadImage ("nocheplanetas.jpg");
  instrucciones= loadImage ("night-sky.jpg");
  juego= loadImage ("planetas.jpg");
  ganar= loadImage ("nebulosa-verde.jpg");
  perder= loadImage ("nebulosa-roja.jpg");
}
void draw (){ 
    if (pantalla==0){              //inicio   
     pantallainicio();
    }
     if (pantalla==1){            //instrucciones 
     instrucciones();
    }
  if (pantalla==2){              //juego
  background (14,15,35);
image (juego, 0,136,597,303);
  dibujotriangulo();
  circulo();
  for (int i=0; i<pelotas.size(); i++){                  //arraylis clase disparar>pelotas
    Disparar pelAux=pelotas.get (i);
    pelAux.mostrar();
    pelAux.mover();
    pelAux.collision ();
    if (semaforo<=300 && semaforo>=160 && colision==1){ //si el color es verde o amarillo
    posx=580;
    posy=100;
    vely=5;
    velx=0.7;
    colision=0;
      pantalla=3; //ganar     
    }else if (semaforo<=160 && colision==1){  //si el color es rojo
    posx=580;
    posy=100;
    vely=5;
    velx=0.7;
    colision=0;
      pantalla=4; //perder
    } } }
    
    
  if (pantalla==3){
//    background (verde);
    ganar();
    botonreinicio();
  }
  if (pantalla==4){
//    background (rojo);
    perder();
    botonreinicio();
  }
  if (pantalla==5){
    background (0);
    creditos();
}}
void mousePressed (){
    boton();
    botonGP();
  if (pantalla==2){
 pelotas.add (new Disparar()); 
}}
   void keyPressed (){   
    if (key=='r' ){
 posx=580;
 posy=300;
    }
    if (key==' ' && pantalla==5){
     pantalla=0; 
    }
   }
