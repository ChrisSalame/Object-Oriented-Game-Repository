
class cloud2{
  
  PVector cloudPosition2;
  PVector cloudVelocity2;
  
  //These are the created variables that are needed to move the clouds
  //from left to right at differing speeds
  cloud2(){
  cloudPosition2 = new PVector(0,400);
  cloudVelocity2 = new PVector(1.25,0);
   
  }
  //this void is what has the cloud move from left to right of the screen, it adds the velocity to
  // to the clouds position moving it over
  void cloudMovement2() {
    cloudPosition2.add(cloudVelocity2);
    
    //This resets the clouds position if it goes off screen
    if (cloudPosition2.x > 475){
    cloudPosition2.x = -25;
    cloudPosition2.y = random(height);
  
  }
    
  }
  
  //This is what draws the fast cloud
  void showCloud2(){
    noStroke();
    fill (255,255,255,200);
    circle(cloudPosition2.x - 30,cloudPosition2.y, 50);
    circle(cloudPosition2.x + 10,cloudPosition2.y, 50);
    circle(cloudPosition2.x + 30,cloudPosition2.y +30, 50);
    circle(cloudPosition2.x + 50,cloudPosition2.y, 50);
    circle(cloudPosition2.x ,cloudPosition2.y +30, 50);
    circle(cloudPosition2.x ,cloudPosition2.y -30, 50);
    circle(cloudPosition2.x + 30 ,cloudPosition2.y -30, 50);
  }
  
}
