cloud CL= new cloud();
cloud2 CL2 = new cloud2();
cloud3 CL3 = new cloud3();

Rain R = new Rain();

weatherMan W = new weatherMan();

  float r;
  float g;
  float b;

void setup(){
  size(400,400);
  background(99, 171, 219);
  frameRate(30);
  
   r = 72;
   g = 116;
   b = 184;
  
  
  
}

void draw(){
  background(r, g,b);
  
  
  //This starts the first cloud movement in the background of the picture using PVector
   CL.cloudMovement();
   CL.showCloud();
   //This starts the second and fastest moving cloud in the background of the picture using PVector
   CL2.cloudMovement2();
   CL2.showCloud2();
    //This starts the third and slowest moving cloud in the background of the picture using PVector
   CL3.cloudMovement3();
   CL3.showCloud3();
  
  
  //This is the platform
  fill(186, 196, 204);
  rect(325,225, 175, 60);
  fill(158, 171, 181);
  rect(300,225, 175, 40);
  fill(151, 163, 173);
  rect(275,225, 200, 20);
  
  fill(145, 196, 230);
  
  //This draws the little character
  W.character();
  
  //This is what pulls the rain variable and uses the class to draw the rain all over the screen
  
  if(mousePressed == true){
    W.sun();
    r = 115;
    g = 179;
    b = 235;
    
  } else {
    R.rainShower();
    r = 72;
    g = 116;
    b = 184;
  }
  
}
