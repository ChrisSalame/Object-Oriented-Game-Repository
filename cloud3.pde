
class cloud3{
  
  PVector cloudPosition3;
  PVector cloudVelocity3;
  
  //These are the created variables that are needed to move the clouds
  //from left to right at differing speeds
  cloud3(){
  cloudPosition3 = new PVector(0,200);
  cloudVelocity3 = new PVector(0.25,0);
   
  }
  //this void is what has the cloud move from left to right of the screen, it adds the velocity to
  // to the clouds position moving it over
  void cloudMovement3() {
    cloudPosition3.add(cloudVelocity3);
    
    //This resets the clouds position if it goes off screen
    if (cloudPosition3.x > 475){
    cloudPosition3.x = -25;
    cloudPosition3.y = random(height);
  
  }
    
  }
  
  //This is what  draws the cloud that moves slowly
  void showCloud3(){
    noStroke();
    fill (255,255,255,200);
    circle(cloudPosition3.x - 30,cloudPosition3.y, 50);
    circle(cloudPosition3.x + 10,cloudPosition3.y, 50);
    circle(cloudPosition3.x + 30,cloudPosition3.y +30, 50);
    circle(cloudPosition3.x + 50,cloudPosition3.y, 50);
    circle(cloudPosition3.x ,cloudPosition3.y +30, 50);
    circle(cloudPosition3.x ,cloudPosition3.y -30, 50);
    circle(cloudPosition3.x + 30 ,cloudPosition3.y -30, 50);
  }
  
}
