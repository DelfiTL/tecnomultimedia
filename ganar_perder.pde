PImage ganar,perder;

void ganar (){            //pantalla3
  image (ganar, 0,0,600,600);
  textFont (fuente);
    textSize (85);
    fill(255);
  text ("ganaste",140,320);
}


void perder(){         //pantalla4
  image (perder,-55,0,680,600);
  textFont (fuente);
  textSize (80);
  fill (255);
  text ("perdiste",135,320);
}


void botonreinicio(){
   noStroke();
  fill (228,7,205,random(80,130));
  rect (85,410,185,80,20);
  rect (330,410,185,80,20);
  fill (255);
  textSize (50);
  text ("jugar",108,464);
  textSize (39);
  text ("creditos",337,462);
}


void botonGP(){
  if ( pantalla==4 && mouseX>85 && mouseX<85+185 && mouseY>410 && mouseY<410+80){   
    pantalla=1; //instrucciones
  }
    if (pantalla ==3 && mouseX>85 && mouseX<85+185 && mouseY>410 && mouseY<410+80){   
    pantalla=1; //instrucciones
}
if (pantalla ==3  && mouseX>330 && mouseX<330+185 && mouseY>410 && mouseY<410+80){
    pantalla=5; //instrucciones
}
if ( pantalla==4 && mouseX>330 && mouseX<330+185 && mouseY>410 && mouseY<410+80){
    pantalla=5; //instrucciones
}
}
