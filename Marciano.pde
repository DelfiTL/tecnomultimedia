class Space {
  //naves
  float posx=0;
  float posy=350;
  float vely=1;
  int B=1;


  Space(){  }    //constructor
  void dibujar (){
     imageMode(CENTER); 
    image (imgM[B],posx,posy,120,80);
  }
  void mover (){
    if (posy>=385){
      vely=-1.3;
      B=0;
    }else if (posy<=350){
      vely=1.3;
      B=1;
    }
    posy=posy+vely;
    posx+=1;
  }
  
//void drawastronauta(){ 
//  image (astronauta,pX,pY,100,100);
//}
}
