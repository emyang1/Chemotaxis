 Spark[] ding;
  
void setup(){
  size(500, 500);
    ding = new Spark[400];
    for(int i = 0; i<ding.length; i++){
      ding[i] = new Spark(color((int)(Math.random()*100)+100, (int)(Math.random()*100)+150, 200));
    }
}
void draw(){
  background(200); 
  noStroke();
  for(int i = 0; i < ding.length;i++){
    ding[i].move();
    ding[i].show();
  }
    
    //spray bottle
    stroke(1);
    fill(230, 200, 200);
    rect(70, 190, 60, 80, 7); //spritz part
    rect(60, 250, 80, 60, 5); //twist
    fill(220);
    rect(40, 300, 120, 200, 8); //main bottle
    fill(180, 200, 200);
    ellipse(127, 220, 5, 15); //spray hole
    //label
    String s = "pixie\ndust";
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text(s, 100, 400);
}

void mouseClicked() {
  if(mouseX<130 && mouseX>70 && mouseY>190 && mouseY<250){
  ding = new Spark[400];
    for(int i = 0; i<ding.length; i++){
      ding[i] = new Spark(color((int)(Math.random()*100)+100, (int)(Math.random()*100)+150, 200));
    }
  }
}

class Spark{
  int myX, myY, myColor;
  Spark(int c){
    myX = 100;
    myY = 220;
    myColor = c;
  }
  void move(){
    int a = (int)(Math.random()*11);
    int b = (a-1)/2 - 3;
    myX = myX + (int)(Math.random()*a)+b;
    myY = myY + (int)(Math.random()*21)-10;
  }
  void show(){
    //sparkles
    fill(myColor);
    quad(myX+50, myY-5, myX+53, myY, myX+50, myY+5, myX+47, myY);
  }
}
