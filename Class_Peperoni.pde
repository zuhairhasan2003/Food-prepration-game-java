class Peperoni extends Ingredients
{

  Peperoni()
  {
    imgRaw = loadImage("peperoni raw.png");
    imgCooked = loadImage("peperoni cooked.png");
    currentImg = imgRaw;
    
    size = 100;
    imgRaw.resize(size,size);
    imgCooked.resize(size+80,size);
    currentImg.resize(size,size);
    
    this.x = width - 3*size/2;
    this.y = 0;
   
    this.speed = 3; 
  }
}
