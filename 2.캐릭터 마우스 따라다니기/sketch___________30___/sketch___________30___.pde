void setup() 
{
 size(1000, 600);

}


void draw() {
 background(255, 235, 255);
 
//tail
noStroke();
fill(128, 245, 255);
ellipse(pmouseX+70, pmouseY+40, 110, 40);
ellipse(pmouseX+150, pmouseY+40, 110, 40);
ellipse(pmouseX+190, pmouseY+10, 100, 100);


//arm L
noStroke();
fill(128, 245, 255);
ellipse(pmouseX-70, pmouseY-50, 110, 40);

//turtle
fill(210, 105, 30);
ellipse(mouseX+40, mouseY, 150, 200);

//arm R
fill(128, 245, 255);
ellipse(pmouseX+80, pmouseY-50, 110, 40);

// body
fill(255, 238, 133);
ellipse(mouseX, mouseY, 150, 200);

stroke(#2D0000);
fill(#2D0000);
line(mouseX-70, mouseY-26, mouseX-5, mouseY-20);
line(mouseX-5, mouseY-20, mouseX+70, mouseY-26);
line(mouseX-5, mouseY-20, mouseX-5, mouseY+60);
line(mouseX-5, mouseY+60, mouseX-38, mouseY+65);
line(mouseX-5, mouseY+60, mouseX+27, mouseY+65);
line(mouseX-38, mouseY+20, mouseX+34, mouseY+20);
line(mouseX-38, mouseY+20, mouseX-60, mouseY+58);
line(mouseX+34, mouseY+20, mouseX+55, mouseY+64);
line(mouseX-38, mouseY+20, mouseX-73, mouseY-14);
line(mouseX+34, mouseY+20, mouseX+73, mouseY-14);

noStroke();
// head
fill(128, 245, 255);
ellipse(mouseX, mouseY-110, 130, 120);


//foot R
fill(128, 245, 255);
ellipse(pmouseX+40, pmouseY+90, 40, 65);

//foot L
fill(128, 245, 255);
ellipse(pmouseX-50, pmouseY+90, 40, 65);





//mouth
fill(240, 128, 128);
arc(mouseX, mouseY-100, 100, 70, 0, PI+QUARTER_PI, PIE);

fill(128, 245, 255);
rect(mouseX-55, mouseY-140, 105, 45);

fill(128, 245, 255);
triangle(mouseX-30, mouseY-100, mouseX, mouseY-87, mouseX+30, mouseY-100);

//eye 
fill(0);
ellipse(mouseX+40, mouseY-120, 30, 40);
ellipse(mouseX-40, mouseY-120, 30, 40);

fill(129, 0, 0);
ellipse(mouseX+40, mouseY-110, 20, 30);
ellipse(mouseX-40, mouseY-110, 20, 30);

fill(0);
ellipse(mouseX+40, mouseY-117, 15, 22);
ellipse(mouseX-40, mouseY-117, 15, 22);

fill(255,255,255);
ellipse(mouseX+45, mouseY-127, 13, 16);
ellipse(mouseX-35, mouseY-127, 13, 16);


fill(128, 245, 255);
rect(mouseX-53, mouseY-105, 115, 10);

//nose
fill(0);
stroke(0);
line(mouseX-5, mouseY-100, mouseX-8 , mouseY-102);
line(mouseX+5, mouseY-100, mouseX+8 , mouseY-102);


//eyebrow
fill(0);
stroke(0);
line(mouseX-25, mouseY-138, mouseX-30 , mouseY-142);
line(mouseX+25, mouseY-138, mouseX+30 , mouseY-142);

}
