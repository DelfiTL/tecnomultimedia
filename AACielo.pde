
 class Cielo{ 
  float vel=3;        //declaro las variantes q utilizo solo para la clase
  float posale=random (50,450);
  float H=0;
  int A=0;
  float tam= random(80,110);
 
 //constructor:
  Cielo(){
  }
 void dibujarnubes(){
    imageMode(CENTER); 
    image (img[A],posale,H,tam,tam);
  }
 void movernube(){
    H=H+1.5;   //altura del objeto
    if (posale>=660){  //rebote
      vel=-3;}
     if (posale<=40){
       vel=3;
     }
     posale=posale+vel;
  }
 void actualizar(){   //entre uno y otro objeto
   if (A<=9 && H>=800){
     A=A+1;
     H=0;
     tam= random(80,150);
   }else if (A==9){
        A=1;
        tam= random(80,150);
   }
 }

}
