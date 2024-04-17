class Ingredients
{
  PImage imgRaw;
  PImage imgCooked;
  PImage currentImg;
  
  int x;
  int y;
  int speed;
  
  int size;
  
  boolean beingDragged = false;
  boolean placed = false;
  
  void move()
  {
    if(!beingDragged && !placed)
    {
      if(y < 0 || y > height-size)
      {
        speed = -speed; 
      }
      y += speed;  
    }
    else if(placed && pizza != null)
    {
      this.x = pizza.x;
      this.y = pizza.y;
    }
    else if(beingDragged && !placed)
    {
      this.x = mouseX;
      this.y = mouseY;
    }
  }
  
  void display()
  {
    if(!placed || (placed && x > 0) )
    image(currentImg, x, y);
  }
  
  void update()
  {
    if(x > 0)
    {
      this.display();
      this.move();
    }
  }
  
  void placedCorrectly(Pizza pizza)
  {
    if(dist(pizza.x, pizza.y, this.x, this.y) < pizza.size/2) 
    {
      placed = true;
      currentImg = imgCooked;
    }
    else
    {
      placed = false;
    }
  }  
  
  void resetPosition()
  {
    this.x = (int) random(size, width-size);
    this.y = 0;
    placed = false;
  }
}
