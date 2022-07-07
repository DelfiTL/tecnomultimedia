int pantalla=0;      //declarando la variable pantalla cambia con funciones y/o condiciones
PImage inicio,instrucciones,juego;
PFont fuente, fuente1;
int x=160;
int y=510;

void pantallainicio (){
  background (8,7,19);
  image (inicio, -138,4,880,457);
//  rect (x,y,305,70,10);
      textFont (fuente);
      textSize(100);
      fill (random(200),0,random(200));
      text ("start", 183, 578);   
}

void boton(){
  if (pantalla ==0 && mouseX>x && mouseX<x+305 && mouseY>y && mouseY<y+70){
    pantalla=1;
  }else if (pantalla ==1 && mouseX>x && mouseX<x+305 && mouseY>y && mouseY<y+70){
    pantalla=2;
  }
}

void instrucciones (){
  image (instrucciones,0,0,600,600); 
  fill (228,7,205);
  textSize (40);
  textFont (fuente);
  text ("instrucciones",135,207);
  text ("Objetivo",200,57);
  ellipse (63,438,20,20);
  ellipse (63,355,20,20);
    ellipse (63,251,20,20);
  noStroke ();
  fill (228,7,205,random(80,130));
  ellipse (63,438,50,10);
  ellipse (63,355,50,10);
    ellipse (63,251,50,10);
  fill (255);
  textFont (fuente1);
  textSize (30);
   text("    Derrota al planeta \nantes de que cruce la meta",56,102);
   fill (97,209,165);
   textSize (22);
  text("Mueve y dispara la nave con el \nmouse mientras el planeta este \nen verde o amarillo",112,257);
  text ("Si atacas el planeta mientras \neste en rojo pierdes el juego",112,360);
  text ("Para reiniciar el juego \n presiona la letra R",147,445);
  fill (random (250));
  text ("Click para continuar",155,556);
}
