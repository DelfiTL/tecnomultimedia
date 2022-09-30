

 class Cielo{ 
  float posale=random (50,450);
  float H=0;
 int A=0;
 float tam= random(80,150);
 
 //constructor:
  Cielo(){
  }
 void dibujarnubes(){
      fill (255,0);
    noStroke();
    ellipseMode(CENTER);
    ellipse (posale, H ,100,30);
  
    imageMode(CENTER); 
    image (img[A],posale,H,tam,tam);
  }
  void movernube(){
    H=H+1;
  }
     void actualizar(){
   //     if (A<=0){
   //A=A+1;
   //}else if (A==9){
   //  A=1;
   //}
   if (A<=9 && H>=750){
   A=A+1;
   H=0;
   }else if (A==9){
     A=1;
   }
 }

}
