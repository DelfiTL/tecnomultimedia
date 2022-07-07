void dibujotriangulo(){
  float Tpos= (mouseY); 
  fill (random(100),0,random(50,255));
  triangle (0,Tpos-20,0,Tpos+20,40,Tpos);
}
