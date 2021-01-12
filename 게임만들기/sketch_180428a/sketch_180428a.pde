

StopWatchTimer sw; 

int time; 
float Xspeeda = 1; 
float Yspeedb = 1; 
float Xspeedc = 1; 
float Yspeedd = 1; 
float Xspeede = 1; 
float Yspeedf = 1; 
float Xspeedg = 1; 
float Yspeedh = 1; 
float Xspeedi = 1; 
float Yspeedj = 1; 
float ab; 
float a = 20; 
float b = 10; 
float c = 140; 
float d = 300; 
float e = 100; 
float f = 599; 
float g = 599; 
float h = 200; 
float i = 300; 
float j = 123; 
int text_color = 255;
PImage photo; 


void setup(){ 
  size(600,600); 
  photo = loadImage("ground-0000.jpg");

  sw = new StopWatchTimer(); 
  sw.start(); 
} 

void draw(){ 
  image(photo, 0, 0);
  time = sw.second(); 
  ball(); 
  level_1(); 
  score(); 
  attack(); 
  time(10); 
} 


void ball(){ 
  noStroke(); 
fill(#FF0000);   
 arc(mouseX, mouseY, 40, 40, PI, TWO_PI);
fill(#FFFFFF);    
 arc(mouseX, mouseY, 40, 40, 0, PI);   
fill(0);
rect(mouseX-20, mouseY-4, 40, 6);
ellipse(mouseX,mouseY,16,16);
fill(255);
ellipse(mouseX,mouseY,9,9);


} 


void level_1(){ 
 fill(255,255,255); 
  stroke(0); 
//1
noStroke();
fill(128, 245, 255);
ellipse(a+17.5, b+10, 27.5, 10);
ellipse(a+37.5, b+10, 27.5, 10);
ellipse(a+42.5, b+2.5, 27.5, 25);


//arm L
noStroke();
fill(128, 245, 255);
ellipse(a-17.5, b-12.5, 27.5, 10);

//turtle
fill(210, 105, 30);
ellipse(a+10, b, 37.5, 50);

//arm R
fill(128, 245, 255);
ellipse(a+20, b-12.5, 27.5, 10);

// body
fill(255, 238, 133);
ellipse(a, b, 37.5, 50);

stroke(#2D0000);
fill(#2D0000);
line(a-17.5, b-6.5, a-1.25, b-5);
line(a-1.25, b-5, a+17.5, b-6.5);
line(a-1.25, b-5, a-1.25, b+15);
line(a-1.25, b+15, a-9.5, b+16.25);
line(a-1.25, b+15, a+6.25, b+16.25);
line(a-9.5, b+5,a+8.5, b+5);
line(a-9.5, b+5, a-15, b+14.5);
line(a+8.5, b+5, a+13.25, b+16);
line(a-9.5, b+5, a-18.25, b-3.5);
line(a+8.5, b+5, a+18.25, b-3.5);

noStroke();

// head
fill(128, 245, 255);
ellipse(a, b-27.5, 32.5, 30);


//foot R
fill(128, 245, 255);
ellipse(a+10, b+22.5, 10, 16.25);

//foot L
fill(128, 245, 255);
ellipse(a-12.5, b+22.5, 10, 16.25);


//mouth
fill(240, 128, 128);
arc(a, b-25, 25, 17.5, 0, PI+QUARTER_PI, PIE);

fill(128, 245, 255);
rect(a-12, b-36, 26.25, 11.25);

fill(128, 245, 255);
triangle(a-25, b-25, a, b-21.75,a+7.5, b-25);

//eye 
fill(0);
ellipse(a+10, b-30, 7.5, 10);
ellipse(a-10, b-30, 7.5, 10);

fill(129, 0, 0);
ellipse(a+10, b-27.5,5, 7.5);
ellipse(a-10, b-27.5, 5, 7.5);

fill(0);
ellipse(a+10, b-29.25, 3.75, 5.5);
ellipse(a-10, b-29.25, 3.75, 5.5);

fill(255,255,255);
ellipse(a+11.25, b-31.75, 3.25, 4);
ellipse(a-8.75, b-31.75, 3.25, 4);


fill(128, 245, 255);
rect(a-1.75, b-25, 28.75, 2.5);

//1


   
 a = a + Xspeeda * 3; 
 b = b + Yspeedb * 3; 

  if(b  < 0){ 
     Yspeedb = Yspeedb * -1; 
   } 
    
  else if(a < 0){ 
    Xspeeda = Xspeeda * -1; 
   } 
   else if(a > 600){ 
     Xspeeda = Xspeeda * -1; 
   } 
   else if (b > 600){ 
     Yspeedb = Yspeedb * -1; 
 } 
 
 //2
 //face
fill(#FFE400); 
rect(c-20, d-55, 40, 40, 20);
 
//tail
 
fill(#C98500);
quad(c+20, d+10, c+44, d+22, c+44, d+25, c+20, d+20);
quad(c+40, d+25, c+36, d+7, c+46, d+7, c+46, d+19);
fill(#EDA900);
quad(c+40, d+6, c+60, d+15, c+56, d+22, c+36, d+11);
fill(#FFE400); 
quad(c+56, d+22, c+53, d-10, c+63, d-8, c+58, d+24);
quad(c+53, d-8, c+56, d-20, c+100, d-28, c+96, d-10);

 
 //body
noStroke(); 
fill(#FFE400);
rect(c-25, d-25, 50, 60, 17);


//arm
fill(#FFE400); 
ellipse(c-30,d-18,40,14);
ellipse(c+30,d-18,40,14);

//foot
fill(#FFE400); 
ellipse(c-26,d+30,20,14);
ellipse(c+26,d+30,20,14);

//L ear
fill(#FFE400); 
bezier(c-40,d-68,c-37,d-70,c-17,d-65,c-14,d-45);
bezier(c-40,d-68,c-37,d-66,c-17,d-25,c-14,d-45);

fill(0);
bezier(c-40,d-68,c-37,d-70,c-27,d-75,c-29,d-50);

//R ear
fill(#FFE400); 
bezier(c+40,d-68,c+37,d-70,c+17,d-65,c+14,d-45);
bezier(c+40,d-68,c+37,d-66,c+17,d-25,c+14,d-45);
fill(0);
bezier(c+40,d-68,c+37,d-70,c+27,d-75,c+29,d-50);

//eye
fill(0);
ellipse(c-10,d-39,8,8);
ellipse(c+10,d-39,8,8);
fill(255);
ellipse(c-9,d-40,4,4);
ellipse(c+11,d-40,4,4);

//cheek
fill(#ED4C00);
ellipse(c-14,d-30,10,10);
ellipse(c+14,d-30,10,10);

//mouth
fill(#FF8383);
bezier(c-3,d-33,c,d-25,c,d-25,c+3,d-33);
//2
 c = c + Xspeedc * 3; 
 d = d + Yspeedd * 3; 

  if(d  < 0){ 
     Yspeedd = Yspeedd * -1; 
   } 
    
  else if(c < 0){ 
    Xspeedc = Xspeedc * -1; 
   } 
   else if(c > 600){ 
     Xspeedc = Xspeedc * -1; 
   } 
   else if (d > 600){ 
     Yspeedd = Yspeedd * -1; 
 } 
//3
 noStroke();
 
//earL
 fill(#FFD9EC);
quad(e-60, f-40, e-45, f-5, e-15, f-5, e-16, f-25);
fill(#8A6F24);
triangle(e-55,f-28,e-60,f-40,e-45,f-35);
//earR
fill(#FFD9EC);
quad(e+60, f-40, e+45, f-5, e+15, f-5, e+16, f-25);
fill(#8A6F24);
triangle(e+55,f-28,e+60,f-40,e+45,f-35);
 
 //footL

 fill(#FFD9EC);
 ellipse(e-30,f+24,20,50);
 
  //footR

 fill(#FFD9EC);
 ellipse(e+30,f+24,20,50);
 
 
 //body
 fill(#FFD9EC);
 ellipse(e,f,88,85);

//hair
ellipse(e,f-30,40,40);
stroke(0);
arc(e, f-30, 40, 40, QUARTER_PI, PI);

//eyeL
fill(0);
ellipse(e-12,f,5,8);
fill(255);
ellipse(e-11,f-2,4,3);
//eyeR
fill(0);
ellipse(e+12,f,5,8);
fill(255);
ellipse(e+11,f-2,4,3);

//cheek
noStroke();
fill(#FF007F);
ellipse(e-22,f+10,19,7);
ellipse(e+22,f+10,19,7);

//mouth
fill(#FFA7A7);
bezier(e-10,f+15,e,f+25,e,f+25,e+10,f+15);


//3   
 e = e + Xspeede * 3; 
 f = f + Yspeedf * 3; 

  if(f  < 0){ 
     Yspeedf = Yspeedf * -1; 
   } 
    
  else if(e < 0){ 
    Xspeede = Xspeede * -1; 
   } 
   else if(e > 600){ 
     Xspeede = Xspeede * -1; 
   } 
   else if (f > 600){ 
     Yspeedf = Yspeedf * -1; 

      
 } 
 //4
//arm
fill(#368D9C);
ellipse(g,h-10,100,55);

//face
fill(#368D9C);
ellipse(g,h-45,50,40);


//body
fill(#368D9C);
ellipse(g,h,80,90);
fill(#FAE0D4);

//face2
fill(#FAE0D4);
ellipse(g,h-40,40,30);
ellipse(g,h,65,75);

//hair
fill(#368D9C);
triangle(g-20,h-58,g,h-45,g+20,h-58);

//ear
fill(#368D9C);
triangle(g-20,h-48,g-20,h-68,g-11,h-63);
triangle(g+20,h-48,g+20,h-68,g+11,h-63);

//foot
fill(#FAE0D4);
ellipse(g-20,h+40,23,13);
ellipse(g+20,h+40,23,13);

//eye
fill(0);
stroke(0);
line(g-18,h-42,g-8,h-42);
line(g+18,h-42,g+8,h-42);

//mouth
noFill();
bezier(g-9,h-35,g,h-30,g,h-30,g+9,h-35);

fill(225);
 //4  
 g = g + Xspeedg * 3; 
 h = h + Yspeedh * 3; 

  if(h  < 0){ 
     Yspeedh = Yspeedh * -1; 
   } 
    
  else if(g < 0){ 
    Xspeedg = Xspeedg * -1; 
   } 
   else if(g > 600){ 
     Xspeedg = Xspeedg * -1; 
   } 
   else if (h > 600){ 
     Yspeedh = Yspeedh * -1; 
 }
 //5
 //body
 noStroke();
 fill(#D1B2FF);
 ellipse(i,j,70,70);
 ellipse(i-14,j-25,30,30);
 ellipse(i+11,j-20,30,30);
 ellipse(i-18,j+10,50,50);
 ellipse(i+18,j+10,50,50);
 
 //arm
 ellipse(i+22,j-5,60,20);
 ellipse(i-18,j-7,60,30);

//eye
fill(0);
ellipse(i-12,j-10,5,5);
ellipse(i+12,j-10,5,5);

//mouth
stroke(0);
strokeWeight(1);
line(i-14,j,i+14,j);

fill(255);
 //5  
 i = i + Xspeedi * 3; 
 j = j + Yspeedj * 3; 

  if(j  < 0){ 
     Yspeedj = Yspeedj * -1; 
   } 
    
  else if(i < 0){ 
    Xspeedi = Xspeedi * -1; 
   } 
   else if(i > 600){ 
     Xspeedi = Xspeedi * -1; 
   } 
   else if (j > 600){ 
     Yspeedj = Yspeedj * -1; 
 } 
 } 


void attack(){ 
 if (mousePressed){ 
  if((mouseX - 12.5 < a && a < mouseX + 12.5) && (mouseY - 12.5 < b && b < mouseY + 12.5)){ 
    ab = ab + 10; 
    a = -100; 
    b = -100; 
  } 
 } 
 if (mousePressed){ 
  if((mouseX - 12.5 < c && c < mouseX + 12.5) && (mouseY - 12.5 < d && d < mouseY + 12.5)){ 
    ab = ab + 10; 
    c = -100; 
    d = -100; 
  } 
 } 
 if (mousePressed){ 
  if((mouseX - 12.5 < e && e < mouseX + 12.5) && (mouseY - 12.5 < f && f < mouseY + 12.5)){ 
    ab = ab + 10; 
    e = -100; 
    f = -100; 
  } 
 } 
 if (mousePressed){ 
  if((mouseX - 12.5 < g && g < mouseX + 12.5) && (mouseY - 12.5 < h && h < mouseY + 12.5)){ 
    ab = ab + 10; 
    g = -100; 
    h = -100; 
  } 
 } 
 if (mousePressed){ 
  if((mouseX - 12.5 < i && i < mouseX + 12.5) && (mouseY - 12.5 < j && j < mouseY + 12.5)){ 
    ab = ab + 10; 
    i = -100; 
    j = -100; 
  } 
 } 
} 
     

void score(){ 
  textSize(20); 
  text("Score :", 10, 20); 
  text(ab,80,20); 
} 


class StopWatchTimer { 
  int startTime = 0, stopTime = 0; 
  boolean running = false;   
   
    void start() { 
        startTime = millis(); 
        running = true; 
    } 
    void stop() { 
        stopTime = millis(); 
        running = false; 
    } 
    int getElapsedTime() { 
        int elapsed; 
        if (running) { 
             elapsed = (millis() - startTime); 
        } 
        else { 
            elapsed = (stopTime - startTime); 
        } 
        return elapsed; 
    } 
    int second(){ 
      return (getElapsedTime() / 1000); 
    } 
    int minute() { 
      return (getElapsedTime() / (1000*60)) % 60; 
    } 
    int hour() { 
      return (getElapsedTime() / (1000*60*60)) % 24; 
    } 
} 
 

void time(int start_time){ 
  int text_time = start_time - time; 
  fill(255,text_color,text_color); 
  textSize(20); 
  text(" time left : ",445,20); 
  text(text_time,550,20); 
  if(start_time - time <= 20 && start_time - time > 1){ 
   text_color = 0; 
  } 
  
  else if(ab==50){ 
    textSize(100); 
    text("Clear",190,300); 
     text_time = 0; 
  } 
  else if(text_time == 0){ 
    textSize(100); 
    text("GAME OVER",0,300); 
     text_time = 0; 
    Xspeeda = 0; 
    Xspeedc = 0; 
    Xspeede = 0; 
    Xspeedg = 0; 
    Xspeedi = 0; 
    Yspeedb = 0; 
    Yspeedd = 0; 
    Yspeedf = 0; 
    Yspeedh = 0; 
    Yspeedj = 0; 

  } 
  
  
        
  
   
}
