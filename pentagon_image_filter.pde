// A filter which turns an image into a series of randomly sized and orientated pentagons

// Creating two different size classes. Pents1 is randomly sized larger than pents2. 
//Having two classes of size gives a more "network" like feel. A single class gives a more random look
ParticleSystem pents1;
ParticleSystem pents2;

PImage image;

void setup() {
  size(500,500);
  //change "image.jpg" to name of image in folder you wish to filter
  PImage image = loadImage("image.jpg");
  image(image,0,0);
  loadPixels();
  background(255);

  //using ParticleSystem to manage each group of size classes
  pents1 = new ParticleSystem(1,20);
  pents2 = new ParticleSystem(2,20);
}

void draw() {
  pents1.run();
  pents2.run();
  noLoop();
  save("image_processed.jpg");
}