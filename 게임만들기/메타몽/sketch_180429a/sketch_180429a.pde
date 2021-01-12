void setup() 
{
 size(1000, 600);

}


void draw() {
 background(0);
 noStroke();
 
 //body
 fill(#D1B2FF);
 ellipse(mouseX,mouseY,70,70);
 ellipse(mouseX-14,mouseY-25,30,30);
 ellipse(mouseX+11,mouseY-20,30,30);
 ellipse(mouseX-18,mouseY+10,50,50);
 ellipse(mouseX+18,mouseY+10,50,50);
 
 //arm
 ellipse(mouseX+22,mouseY-5,60,20);
 ellipse(mouseX-18,mouseY-7,60,30);

//eye
fill(0);
ellipse(mouseX-12,mouseY-10,5,5);
ellipse(mouseX+12,mouseY-10,5,5);

//mouth
stroke(0);
strokeWeight(3);
line(mouseX-14,mouseY,mouseX+14,mouseY);
}
