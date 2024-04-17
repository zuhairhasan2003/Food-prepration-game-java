class Pizza
{
  PImage img;
  
  int x;
  int y;
  int speed;
  
  int size;

  Pizza()
  {
    img = loadImage("pizza.png");
    size = 100;
    img.resize(size, size);

    this.x = width-10;
    this.y = height/2 ;

    this.speed = -3;  // speed is set by the programmer not the player
  }

  void move()
  {
    x += speed;
  }

  void display()
  {
    image(img, x, y);
  }

  void update()
  {
    display();
    move();
  }
  
  boolean reachedEnd()
  {
    if(x <= 0-size)
      return true;
    else
      return false;
  }
  
}
