
float theta = 0;
int n = 100;
int m = 500;

Planets[] myPlanet= new Planets [n];
Stars[] myStar= new Stars[m];

int frame=20;


void setup (){
  size(1000,1000);
  background(0);
  strokeWeight(2);
  
  
  
  for(int i=0;i<myPlanet.length;i++){
   
  myPlanet[i] = new Planets(i*2.5, random(0.5, 5), random(0, 360), random(0.005, 0.01));
  }
  

  for(int j=0;j<myStar.length;j++){
   
    myStar[j]= new Stars();
  }
}



void draw(){
 
 fill(10,5,40,50);
 stroke(255);
 rect(frame,frame,width-frame*2,height-frame*2,10,10,10,10);
 textSize(15);
  fill(255);
 

 
 for(int j=0;j<myStar.length;j++){
  
    myStar[j].display();
  }
 for (int i = 0; i < myPlanet.length; i ++ ) {
   
  myPlanet[i].display();
  myPlanet[i].orbit();
  myPlanet[i].mouse();

 }
   noStroke();
   translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, 64, 64);



 
  theta += 0.01;
  
  
}
  
class Planets {

  color c;
  float d; 
  float r; 
  float a; 
  float s; 

 

  Planets(float tempD, float tempR, float tempA, float tempS) {
    
    c = color(55+random(200),155+random(100),155+random(100));
    d=tempD;
    r=tempR;
    a=tempA;
    s=tempS;
    

  }
  
 
void display(){

  fill(c);
  stroke(c);
  ellipse(width/2+d*cos(a), height/2+d*sin(a),r,r);
  
} 

void orbit() {
    a+=s;
  
}
  
 void mouse(){
   if (mousePressed==true){
     s*=-1;
   }
    
 }

}

class Stars{

  float x;
  float y;


 Stars(){
  x=random(20,width-20); 
  y=random(20,height-20);
}


 void display(){
  stroke(random(255));
   point(x,y);
}


}
