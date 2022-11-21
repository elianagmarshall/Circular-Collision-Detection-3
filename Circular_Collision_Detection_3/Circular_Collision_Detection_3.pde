Bubbles[] b=new Bubbles[100]; //array to construct 100 objects from the class Bubbles with b parameters

void setup() {
  size(700,700); //size of the run window
  background(0); //black background color
  createBubbles(); //initializes array to create the bubbles
}

void draw() {
  displayBubbles(); //displays the bubbles and switches the colours of the bubbles
}

void createBubbles() {
  for(int index=0;index<b.length;index++) //index variable has an initial value of 0, must be less than the length of b, and increases by increments of 1
    b[index]=new Bubbles(); //initializes b array
}
 
void displayBubbles() {
  for(int index=0;index<b.length;index++) { //index variable has an initial value of 0, must be less than the length of b, and increases by increments of 1
    b[index].display(); //displays the bubbles
    b[index].switchColor(); //swtiches the colors of the bubbles
  }
}
