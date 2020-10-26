Bee[] bees;
 void setup()   
 {  
  size(750,750);
  bees = new Bee[100];
  for(int i = 0; i < bees.length; i++){
    bees[i] = new Bee();
  }
 }   
 void draw()   
 {    
  background(226,255,192);
  for(int i = 0; i < bees.length; i++){
    bees[i].move();
    bees[i].show();
  }
 }  
 
 class Bee    
 {     
 
     int myX = (int)(Math.random()*750);
     int myY = (int)(Math.random()*750);
     int myColor = color(255,240,153);

   void move(){
    if(mouseX>myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY>myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
      
      if(mousePressed == true){
        myY = mouseY;
        myX = mouseX;
        fill(150,253,256,200);
        ellipse(myX, myY, 50, 75);
      }
   }
   
   void show(){
     stroke(0);
     strokeWeight(0.5);
     fill(myColor);
     ellipse(myX,myY,25,20); //body
     fill(0);
     ellipse(myX-5,myY,2,2); //eyes
     fill(255);
     ellipse(myX+5,myY+3,5,5); //wings
     fill(0);
     ellipse(myX-10,myY-10,2,2); //right antenna
     ellipse(myX-15,myY-7,2,2); //left antenna
     strokeWeight(1);
     line(myX-10,myY-10,myX-5,myY-5); //right antenna attacher
     strokeWeight(0.5);
     line(myX-15,myY-7,myX-10,myY-2); //left antenna attacher
     triangle(myX+13,myY-2,myX+13,myY+2,myX+15,myY); //stinger
   }
 }     
