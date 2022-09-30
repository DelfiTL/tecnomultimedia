

 class Cielo{ 
  float posale=random (0,400);
  float H=0;
  float H1=0; 
 
 //constructor:
  Cielo(){
  }
 void dibujarnubes(){
      fill (255,0);
    noStroke();
    ellipseMode(CENTER);
    ellipse (posale, H ,100,30);
    imageMode(CENTER);
    image (img[A],posale,H,150,130);
  }
  void movernube(){
    H=H+1;
  }
     void actualizar(){
   if (H>=750){
   A=A+1;
   H=0;
   }else if (A>=10){
     A=A-1;
   }
 }

}
