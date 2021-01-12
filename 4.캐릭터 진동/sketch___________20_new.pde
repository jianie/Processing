float x = 240;
float y = 180;
float w = 60;
float h = 60;
float eyeSize = 16;

void setup() 
{
 size(1000, 600);

}


void draw() {
 background(255, 235, 255);
 
 float d = dist(x, y, mouseX, mouseY);
  color c = color(d);
  
 float factor = constrain(mouseX/10, 0, 5);
   jiggleZoog(factor);
  drawZoog(c);}
  
  


 void jiggleZoog(float speed) {

  x = x + random(-1, 1)*speed;
  y = y + random(-1, 1)*speed;

  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
}

void drawZoog(color eyeColor) {
  
  ellipseMode(CENTER);
  rectMode(CENTER);

  for (float i = y - h/3; i < y + h/2; i += 10) {
    stroke(0);
    line(x - w/4, i, x + w/4, i);
  }
  
  //tail
noStroke();
fill(128, 245, 255);
ellipse(x+70, y+40, 110, 40);
ellipse(x+150, y+40, 110, 40);
ellipse(x+190, y+10, 100, 100);


//arm L
noStroke();
fill(128, 245, 255);
ellipse(x-70, y-50, 110, 40);

//turtle
fill(210, 105, 30);
ellipse(x+40, y, 150, 200);

//arm R
fill(128, 245, 255);
ellipse(x+80, y-50, 110, 40);

// body
fill(255, 238, 133);
ellipse(x, y, 150, 200);

stroke(#2D0000);
fill(#2D0000);
line(x-70, y-26, x-5, y-20);
line(x-5, y-20, x+70, y-26);
line(x-5, y-20, x-5, y+60);
line(x-5, y+60, x-38, y+65);
line(x-5, y+60, x+27, y+65);
line(x-38, y+20,x+34, y+20);
line(x-38, y+20, x-60, y+58);
line(x+34, y+20, x+55, y+64);
line(x-38, y+20, x-73, y-14);
line(x+34, y+20, x+73, y-14);

noStroke();

// head
fill(128, 245, 255);
ellipse(x, y-110, 130, 120);


//foot R
fill(128, 245, 255);
ellipse(x+40, y+90, 40, 65);

//foot L
fill(128, 245, 255);
ellipse(x-50, y+90, 40, 65);


//mouth
fill(240, 128, 128);
arc(x, y-100, 100, 70, 0, PI+QUARTER_PI, PIE);

fill(128, 245, 255);
rect(x-3, y-118, 105, 45);

fill(128, 245, 255);
triangle(x-30, y-100, x, y-87,x+30, y-100);

//eye 
fill(eyeColor);
ellipse(x+40, y-120, 30, 40);
ellipse(x-40, y-120, 30, 40);

fill(129, 0, 0);
ellipse(x+40, y-110, 20, 30);
ellipse(x-40, y-110, 20, 30);

fill(0);
ellipse(x+40, y-117, 15, 22);
ellipse(x-40, y-117, 15, 22);

fill(255,255,255);
ellipse(x+45, y-127, 13, 16);
ellipse(x-35, y-127, 13, 16);


fill(128, 245, 255);
rect(x-7, y-100, 115, 10);
}