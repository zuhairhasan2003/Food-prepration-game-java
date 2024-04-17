class Cheese extends Ingredients
{
  Cheese()
  {
    imgRaw = loadImage("rawCheese.png");
    imgCooked = loadImage("cheese.png");
    currentImg = imgRaw;
    
    size = 100;
    imgRaw.resize(size,size);
    imgCooked.resize(size+5,size+30);
    currentImg.resize(size,size);
    
    this.x = width - size/2;
    this.y = 0;
    
    this.speed = 3;
    
  }
}
