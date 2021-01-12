size(800, 500);
background(255, 235, 255);

//tail
noStroke();
fill(128, 245, 255);
ellipse(470, 250, 110, 40);
ellipse(550, 250, 110, 40);
ellipse(590, 220, 100, 100);


//arm L
noStroke();
fill(128, 245, 255);
ellipse(330, 160, 110, 40);

//turtle
fill(210, 105, 30);
ellipse(440, 210, 150, 200);

//arm R
fill(128, 245, 255);
ellipse(480, 160, 110, 40);

// body();
fill(255, 238, 133);
ellipse(400, 210, 150, 200);

stroke(#2D0000);
fill(#2D0000);
line(330, 184, 395, 190);
line(395, 190, 470, 184);
line(395, 190, 395, 270);
line(395, 270, 362, 275);
line(395, 270, 427, 275);
line(362, 230, 434, 230);
line(362, 230, 340, 268);
line(434, 230, 455, 274);
line(362, 230, 327, 196);
line(434, 230, 473, 196);

noStroke();
// head
fill(128, 245, 255);
ellipse(400, 100, 130, 120);


//foot R
fill(128, 245, 255);
ellipse(440, 300, 40, 65);

//foot L
fill(128, 245, 255);
ellipse(350, 300, 40, 65);


//mouth
fill(240, 128, 128);
arc(400, 110, 100, 70, 0, PI+QUARTER_PI, PIE);

fill(128, 245, 255);
rect(345, 70, 105, 45);

fill(128, 245, 255);
triangle(370, 110, 400, 123, 430, 110);

//eye 
fill(0);
ellipse(440, 90, 30, 40);
ellipse(360, 90, 30, 40);

fill(129, 0, 0);
ellipse(440, 100, 20, 30);
ellipse(360, 100, 20, 30);

fill(0);
ellipse(440, 93, 15, 22);
ellipse(360, 93, 15, 22);

fill(255,255,255);
ellipse(445, 83, 13, 16);
ellipse(365, 83, 13, 16);


fill(128, 245, 255);
rect(347, 105, 115, 10);