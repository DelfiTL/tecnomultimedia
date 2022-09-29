

 class Cielo{ 
  float posale=random (0,600);
  float H=0;
  float H1=0; 
  
 //constructor:
  Cielo(){
  }
 void dibujarnubes(){
    fill (255);
    ellipse (posale, H ,100,30);
    image (img[numFrames],posale,H,50,30);
  }
  void movernube(){
    H=H+1;
  } }
