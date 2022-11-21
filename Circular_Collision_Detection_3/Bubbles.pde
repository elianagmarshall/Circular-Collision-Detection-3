class Bubbles {
  float x,y; //x and y coordinates for the bubbles
  float d1=20; // diameter for the smaller bubbles
  float d2=50; //diameter for the larger bubbles
  color c1,c2; //colors for the bubbles
  
  Bubbles() {
    x=random(width); //random x-coordinates for the bubbles
    y=random(height); //random y-coordinates for the bubbles
  }
  
void display() {
  fill(c1); //fill the larger bubbles with the corresponding color
  circle(x,y,d2); //create the larger bubbles
  fill(c2); //fill the smaller bubbles with the corresponding color
  circle(x,y,d1); //create the smaller bubbles
}

void switchColor() {
  if(dist(x,y,mouseX,mouseY)<d2/2) { //if the mouse collides with a larger bubble
    c1=color(255); //fill the larger bubble with white
    c2=color(#A50202); //fill the smaller bubble with red
  }
  else {
    c1=color(#A50202); //fill the larger bubble with red
    c2=color(255); //fill the larger bubble with white
    }
  }
}
