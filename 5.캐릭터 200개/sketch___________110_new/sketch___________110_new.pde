T[] turtle = new T[200];
T zoog;

void setup() {
  size(1500, 1000);
  zoog = new T(width/2, height/2, 60, 60, 16);
  for (int i = 0; i < turtle.length; i ++ ) {
    turtle[i] = new T(random(width),random(height),30,30,8); }
}

void draw() {
  background(255);
 for (int i = 0; i < turtle.length; i ++ ) {
   float factor = constrain(mouseX/10, 0, 5);
   turtle[i].jiggle(factor); 
     turtle[i].display();}
}



class T {
 
  float x, y, w, h, eyeSize;

  
  T(float tempX, float tempY, float tempW, float tempH, float tempEyeSize) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    eyeSize = tempEyeSize;
  }


  void jiggle(float speed) {
     x = x + random(-1, 1)*speed;
    y = y + random(-1, 1)*speed;
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

   void display() {
     ellipseMode(CENTER);
    rectMode(CENTER);
    for (float i = y - h/3; i < y + h/2; i += 10) {
      stroke(0);
      line(x-w/4, i, x + w/4, i);
      
  //tail
noStroke();
fill(128, 245, 255);
ellipse(x+17.5, y+10, 27.5, 10);
ellipse(x+37.5, y+10, 27.5, 10);
ellipse(x+42.5, y+2.5, 27.5, 25);


//arm L
noStroke();
fill(128, 245, 255);
ellipse(x-17.5, y-12.5, 27.5, 10);

//turtle
fill(210, 105, 30);
ellipse(x+10, y, 37.5, 50);

//arm R
fill(128, 245, 255);
ellipse(x+20, y-12.5, 27.5, 10);

// body
fill(255, 238, 133);
ellipse(x, y, 37.5, 50);

stroke(#2D0000);
fill(#2D0000);
line(x-17.5, y-6.5, x-1.25, y-5);
line(x-1.25, y-5, x+17.5, y-6.5);
line(x-1.25, y-5, x-1.25, y+15);
line(x-1.25, y+15, x-9.5, y+16.25);
line(x-1.25, y+15, x+6.25, y+16.25);
line(x-9.5, y+5,x+8.5, y+5);
line(x-9.5, y+5, x-15, y+14.5);
line(x+8.5, y+5, x+13.25, y+16);
line(x-9.5, y+5, x-18.25, y-3.5);
line(x+8.5, y+5, x+18.25, y-3.5);

noStroke();

// head
fill(128, 245, 255);
ellipse(x, y-27.5, 32.5, 30);


//foot R
fill(128, 245, 255);
ellipse(x+10, y+22.5, 10, 16.25);

//foot L
fill(128, 245, 255);
ellipse(x-12.5, y+22.5, 10, 16.25);


//mouth
fill(240, 128, 128);
arc(x, y-25, 25, 17.5, 0, PI+QUARTER_PI, PIE);

fill(128, 245, 255);
rect(x-0.75, y-29.5, 26.25, 11.25);

fill(128, 245, 255);
triangle(x-7.5, y-25, x, y-21.75,x+7.5, y-25);

//eye 
fill(0);
ellipse(x+10, y-30, 7.5, 10);
ellipse(x-10, y-30, 7.5, 10);

fill(129, 0, 0);
ellipse(x+10, y-27.5,5, 7.5);
ellipse(x-10, y-27.5, 5, 7.5);

fill(0);
ellipse(x+10, y-29.25, 3.75, 5.5);
ellipse(x-10, y-29.25, 3.75, 5.5);

fill(255,255,255);
ellipse(x+11.25, y-31.75, 3.25, 4);
ellipse(x-8.75, y-31.75, 3.25, 4);


fill(128, 245, 255);
rect(x-1.75, y-25, 28.75, 2.5); }
}
}