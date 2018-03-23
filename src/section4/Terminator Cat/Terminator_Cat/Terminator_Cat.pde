int acceleration = 5;
int x = 518; //first eye
int y = 243;
int secondX = 611;
int secondY = 250; 

PImage catPic;
void setup(){
  size(1000,1000);
catPic = loadImage("cat.jpg");
   catPic.resize(width,height);
background(catPic);
}
void draw(){
if(mousePressed){
println("Mouse’s x-position: " + mouseX + "\n" + "Mouse’s y-position: " + mouseY + "\n");}
noStroke();
fill(#FA0808);
ellipse(x,y,30,30);
ellipse(secondX,secondY,30,30);
}
void keyPressed(){
x+=2*acceleration;
y+=2*acceleration;
secondX+=2*acceleration;
secondY+=2*acceleration;
if(x > 1000){
background(catPic);
x = 518;
y = 243;
secondX =611;
secondY =250;
ellipse(x,y,30,30);
ellipse(secondX,secondY,30,30);
}
}
