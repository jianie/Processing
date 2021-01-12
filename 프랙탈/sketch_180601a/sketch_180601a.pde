void circle(int i,int j,int N){
  if(N!=0){
   ellipse((i+j)/2,height/2,j-i,j-i);
   ellipse(width/2,(i+j)/2,j-i,j-i);
   circle(i,(i+j)/2,N-1);
   circle((i+j)/2,j,N-1);
  
  }
}
  

void setup(){ 
  background(255);
  fill(255,0,0,20);
  size(1000,1000);
  circle(0,width,5);
}
  
  
 
