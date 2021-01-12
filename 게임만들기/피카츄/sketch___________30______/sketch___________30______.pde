void setup() 
{
 size(1000, 600);

}


void draw() {
 background(255, 235, 255);
 
 //face
fill(#FFE400); 
rect(mouseX-20, mouseY-55, 40, 40, 20);
 
//tail
 
fill(#C98500);
quad(mouseX+20, mouseY+10, mouseX+44, mouseY+22, mouseX+44, mouseY+25, mouseX+20, mouseY+20);
quad(mouseX+40, mouseY+25, mouseX+36, mouseY+7, mouseX+46, mouseY+7, mouseX+46, mouseY+19);
fill(#EDA900);
quad(mouseX+40, mouseY+6, mouseX+60, mouseY+15, mouseX+56, mouseY+22, mouseX+36, mouseY+11);
fill(#FFE400); 
quad(mouseX+56, mouseY+22, mouseX+53, mouseY-10, mouseX+63, mouseY-8, mouseX+58, mouseY+24);
quad(mouseX+53, mouseY-8, mouseX+56, mouseY-20, mouseX+100, mouseY-28, mouseX+96, mouseY-10);

 
 //body
noStroke(); 
fill(#FFE400);
rect(mouseX-25, mouseY-25, 50, 60, 17);


//arm
fill(#FFE400); 
ellipse(mouseX-30,mouseY-18,40,14);
ellipse(mouseX+30,mouseY-18,40,14);

//foot
fill(#FFE400); 
ellipse(mouseX-26,mouseY+30,20,14);
ellipse(mouseX+26,mouseY+30,20,14);

//L ear
fill(#FFE400); 
bezier(mouseX-40,mouseY-68,mouseX-37,mouseY-70,mouseX-17,mouseY-65,mouseX-14,mouseY-45);
bezier(mouseX-40,mouseY-68,mouseX-37,mouseY-66,mouseX-17,mouseY-25,mouseX-14,mouseY-45);

fill(0);
bezier(mouseX-40,mouseY-68,mouseX-37,mouseY-70,mouseX-27,mouseY-75,mouseX-29,mouseY-50);

//R ear
fill(#FFE400); 
bezier(mouseX+40,mouseY-68,mouseX+37,mouseY-70,mouseX+17,mouseY-65,mouseX+14,mouseY-45);
bezier(mouseX+40,mouseY-68,mouseX+37,mouseY-66,mouseX+17,mouseY-25,mouseX+14,mouseY-45);
fill(0);
bezier(mouseX+40,mouseY-68,mouseX+37,mouseY-70,mouseX+27,mouseY-75,mouseX+29,mouseY-50);

//eye
fill(0);
ellipse(mouseX-10,mouseY-39,8,8);
ellipse(mouseX+10,mouseY-39,8,8);
fill(255);
ellipse(mouseX-9,mouseY-40,4,4);
ellipse(mouseX+11,mouseY-40,4,4);

//cheek
fill(#ED4C00);
ellipse(mouseX-14,mouseY-30,10,10);
ellipse(mouseX+14,mouseY-30,10,10);

//mouth
fill(#FF8383);
bezier(mouseX-3,mouseY-33,mouseX,mouseY-25,mouseX,mouseY-25,mouseX+3,mouseY-33);
}
