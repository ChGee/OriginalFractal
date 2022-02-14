public void setup(){
  size(1000, 1000);
  rectMode(CENTER);
}

public void draw(){
   background(255);
   myFractal(500, 500, 50);
}
public void mousePressed(){
    rotate(HALF_PI);
}
public void myFractal(int x, int y, int siz){
  
  if(siz <=10){
    noFill();
    for(int i=0; i< 200; i+=50){
      ellipse(x+i, y+i, (x-siz)/2, (y-siz)/2);
      rect(x+i, y+i, siz*30, siz*30);
      rect(x+i, y+i, siz*60, siz*60);
    }
    for(int i=0; i< 200; i+=50){
      ellipse(x-i, y+i, (x-siz)/2, (y-siz)/2);
      rect(x+i, y+i, siz*30, siz*30);
      rect(x-i, y+i, siz*60, siz*60);
    }
    for(int i=0; i< 200; i+=50){
      ellipse(x-i, y-i, (x-siz)/2, (y-siz)/2);
      rect(x-i, y-i, siz*30, siz*30);
      rect(x-i, y-i, siz*60, siz*60);
    }
    for(int i=0; i< 200; i+=50){
      ellipse(x+i, y-i, (x-siz)/2, (y-siz)/2);
      rect(x+i, y-i, siz*30, siz*30);
      rect(x+i, y-i, siz*60, siz*60);
    }
    for(int i=0; i<200; i+= 25){
      if(mousePressed){
         siz+=2; 
      }
      rect(x-i, y, siz*15, siz*15);
      rect(x-i, y, siz*60, siz*60); 
    }
    for(int i=0; i<200; i+= 25){
      if(mousePressed){
         siz+=2; 
      }
      rect(x+i, y, siz*15, siz*15);
      rect(x+i, y, siz*60, siz*60); 
    }
  } else 
  if(siz>10){
    myFractal(x-siz/2, y-siz/2, siz/2);
    myFractal(x+siz/2, y-siz/2, siz/2);
  }
}
