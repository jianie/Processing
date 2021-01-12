

import processing.video.*;

Capture cam; 
color trackColor;

void setup(){ 
  size(640, 480);
  trackColor = color(255, 0, 0); 
  String[] cameras = Capture.list(); 

if(cameras.length == 0){
println("There are no cameras available for captrue."); 

exit();
} else {
println("Available cameras");
for(int i = 0; i < cameras.length; i++){
println(cameras[i]);

}

cam = new Capture(this, cameras[0]); 
 cam.start();
 }
}

void draw(){
  if(cam.available() == true) {
cam.read(); 
  }
  tint(mouseX, mouseY, 255);
cam.loadPixels();
image(cam, 0, 0);
image(cam, 0, 0, mouseX, mouseY); 

float worldRecord = 500;

int closetX = 0; 
int closetY = 0; 

for(int x = 0; x < cam.width; x++){ 

for(int y = 0; y < cam.height; y++){ 

 int loc = x+y * cam.width;
color currentColor = cam.pixels[loc]; float r1 = red(currentColor); float g1 = green(currentColor); float b1 = blue(currentColor);
float r2 = red(trackColor); float g2 = green(trackColor); float b2 = blue(trackColor);

float d = dist(r1, g1, b1, r2, g2, b2); 

if(d < worldRecord){ worldRecord = d; closetX = x; closetY = y; } } } 

if(worldRecord < 10){ fill(trackColor); strokeWeight(4.0); stroke(0); ellipse(closetX, closetY, 16, 16); } } 

void mousePressed(){ int loc = mouseX + mouseY * cam.width; trackColor = cam.pixels[loc]; } 
