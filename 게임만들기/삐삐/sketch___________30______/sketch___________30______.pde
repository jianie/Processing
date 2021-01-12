void setup() 
{
 size(1000, 600);

}


void draw() {
 background(0);
 noStroke();
 
//earL
 fill(#FFD9EC);
quad(mouseX-60, mouseY-40, mouseX-45, mouseY-5, mouseX-15, mouseY-5, mouseX-16, mouseY-25);
fill(#8A6F24);
triangle(mouseX-55,mouseY-28,mouseX-60,mouseY-40,mouseX-45,mouseY-35);
//earR
fill(#FFD9EC);
quad(mouseX+60, mouseY-40, mouseX+45, mouseY-5, mouseX+15, mouseY-5, mouseX+16, mouseY-25);
fill(#8A6F24);
triangle(mouseX+55,mouseY-28,mouseX+60,mouseY-40,mouseX+45,mouseY-35);
 
 //footL
fill(255);
ellipse(mouseX-30,mouseY+30,20,50);
 fill(#FFD9EC);
 ellipse(mouseX-30,mouseY+24,20,50);
 
  //footR
fill(255);
ellipse(mouseX+30,mouseY+30,20,50);
 fill(#FFD9EC);
 ellipse(mouseX+30,mouseY+24,20,50);
 
 
 //body
 fill(#FFD9EC);
 ellipse(mouseX,mouseY,88,85);

//hair
ellipse(mouseX,mouseY-30,40,40);
stroke(0);
arc(mouseX, mouseY-30, 40, 40, QUARTER_PI, PI);

//eyeL
fill(0);
ellipse(mouseX-12,mouseY,5,8);
fill(255);
ellipse(mouseX-11,mouseY-2,4,3);
//eyeR
fill(0);
ellipse(mouseX+12,mouseY,5,8);
fill(255);
ellipse(mouseX+11,mouseY-2,4,3);

//cheek
noStroke();
fill(#FF007F);
ellipse(mouseX-22,mouseY+10,19,7);
ellipse(mouseX+22,mouseY+10,19,7);

//mouth
fill(#FFA7A7);
bezier(mouseX-10,mouseY+15,mouseX,mouseY+25,mouseX,mouseY+25,mouseX+10,mouseY+15);




}
