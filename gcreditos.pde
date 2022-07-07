float posT= 600;

void creditos (){
  fill (255);
image (instrucciones,0,0,600,600); 
  textFont (fuente1);
  textSize (40);
  text("   UNLP-FBA ",132,posT);
  textSize (30);
  text("   Tecnologia \nDiseno Multimedia",150,posT+90);
  text("          TP3 \nDelfina Trebino LLambias",89,posT+188);
  text("    Comision 3\nprof.David Bedoian",141,posT+290);
  text("Fecha: 07/07/2022",155,posT+395);
  if (pantalla==5){
  posT=posT-2;
}
if (posT==-300){
  pantalla=0;
  posT=600;
}
}
