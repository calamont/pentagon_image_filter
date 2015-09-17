class ParticleSystem  {

  ArrayList<Particle> particles;    // An ArrayList for all the particles (pentagons)

  ParticleSystem(float size, int step) {
    particles = new ArrayList<Particle>();  // Initialize the ArrayList
    
    //stepping along pixels and creating new pentagons, via Particle, with their colour
    for (int h = 5; h < height; h = h+step) {
      for (int w = 5; w < width; w = w+step) {
        particles.add(new Particle(w,h, size, step)); 
      }
    }
  }
    
  void run() {
    // Display all the particles
    for (Particle p: particles) {
      p.display();
    }
  }
}