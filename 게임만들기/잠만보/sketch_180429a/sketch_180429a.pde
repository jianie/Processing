void setup() 
{
 size(1000, 600);

}


void draw() {
 background(0);
 noStroke();

//arm
fill(#368D9C);
ellipse(mouseX,mouseY-10,100,55);

//face
fill(#368D9C);
ellipse(mouseX,mouseY-45,50,40);


//body
fill(#368D9C);
ellipse(mouseX,mouseY,80,90);
fill(#FAE0D4);

//face2
fill(#FAE0D4);
ellipse(mouseX,mouseY-40,40,30);
ellipse(mouseX,mouseY,65,75);

//hair
fill(#368D9C);
triangle(mouseX-20,mouseY-58,mouseX,mouseY-45,mouseX+20,mouseY-58);

//ear
fill(#368D9C);
triangle(mouseX-20,mouseY-48,mouseX-20,mouseY-68,mouseX-11,mouseY-63);
triangle(mouseX+20,mouseY-48,mouseX+20,mouseY-68,mouseX+11,mouseY-63);

//foot
fill(#FAE0D4);
ellipse(mouseX-20,mouseY+40,23,13);
ellipse(mouseX+20,mouseY+40,23,13);

//eye
fill(0);
stroke(0);
line(mouseX-18,mouseY-42,mouseX-8,mouseY-42);
line(mouseX+18,mouseY-42,mouseX+8,mouseY-42);

//mouth
noFill();
bezier(mouseX-9,mouseY-35,mouseX,mouseY-30,mouseX,mouseY-30,mouseX+9,mouseY-35);
}
