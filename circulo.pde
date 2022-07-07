//muevo circulo
   float posx=580;
   float posy=100;
   int tam =50;
   float vely=5;
   float velx=0.7;
//semaforo circulo
   color verde= color(0,255,0);
   color amarillo= color(255,235,5);
   color rojo= color(255,0,0);
   float semaforo=300;
   int colision=0;
 
void circulo (){ 
 semaforo=semaforo-2;
 if (pantalla==2){
  strokeWeight (10);
  stroke (221,80,206,72);
  noFill ();
   ellipse (posx,posy,tam+36,tam+-30);  
   ellipse (posx,posy,tam+72,tam+-24);
  if (semaforo<=300){              //colores 
   fill (verde);
  }
   if (semaforo<=230){
     fill (amarillo);
   }
    if (semaforo<=160){
   fill (rojo);
   }
   if (semaforo ==0){
     semaforo=300;
   }            //dibujo
  noStroke();
  ellipse (posx,posy,tam,tam); 
  strokeWeight (4);
  stroke (230,78,200,166);
  noFill ();
  ellipse (posx,posy,tam+29,tam+-46);
 if (pantalla==2){
  posy=posy+vely; 
 } 
   if (posy<=25){
     vely=+6;
   }
   if (posy>=height-25){
     vely=-6;
 }
   posx=posx-velx;
   if (posx<=25){
     pantalla=4;
   }   }
   if (pantalla==3 || pantalla==4){
     posx=580;
    posy=300;
   } }
