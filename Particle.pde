class Particle {
  
 PVector location;
 float angle;
 float size;
 float sizeCheck;
 color c;
 int steps;
 //PImage face;
 
 Particle(int w, int h, float sizes, int step) {
   sizeCheck = sizes;
   location = new PVector(w,h);
   
   //randomly changes the orientation of the pentagons created
   angle = random(0,TWO_PI);
   steps = step;
   size = random(step/(2*sizeCheck),step/(sizeCheck));
   c = pixels[h*width+w]; 
 }
 
 void display() {  
  //noFill if you want just the outlines of the pentagons
  noFill();
  
  //c is colour of pixel where pentagon orginates. A transparancy of 50% (=125) is set.
  stroke(c,125);
  strokeWeight(1);
  
  rectMode(CENTER);
  pushMatrix();
  
  //translates smaller set of pentagons between the larger set. 
  if (sizeCheck == 1) {
    translate(location.x, location.y);
  } 
  else if (sizeCheck == 2) {
    translate(location.x + (steps/2), location.y + (steps/2));
  }
  rotate(angle);
  
  //creates pentagon using the polygon function created below
  polygon(0,0,size*2,5);
  
  popMatrix();
 }
 
 //polygon function to create different shapes if desired
 void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
 }
}