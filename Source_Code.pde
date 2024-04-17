Pizza pizza;
Cheese cheese;
Peperoni peperoni;


enum GameMode
{
  PLAY,
  END
}

GameMode mode = GameMode.PLAY;

//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void setup()
{
  imageMode(CENTER);
  textSize(20);
  size(1250,900);
  background(0);
  stroke(255,255,255);
  
  pizza = new Pizza();
  cheese = new Cheese();
  peperoni = new Peperoni();

}

void draw()
{
  if(mode == GameMode.PLAY)
  {
      
    clearScreen();  // using as a clear background command but creating a conveyor as well at the same time 
    
    if(pizza == null)
    {
      pizza = new Pizza();
    }
    if(pizza != null)
    {
      pizza.update();
    }
    cheese.update();
    peperoni.update();
    if(pizza.reachedEnd())
    {
      if(!cheese.placed || !peperoni.placed)
      {
        mode = GameMode.END;
      }
      pizza = null;
      cheese.resetPosition();
      peperoni.resetPosition();
    }  
    
  }
  
  
}

// ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void clearScreen()
{
  background(0);
  fill(#AEAEAE);
  rect(0,(height-300)/2,width,300);
}

void mousePressed()
{
  if( dist(cheese.x,cheese.y,mouseX,mouseY) < cheese.size/2)
  {
    cheese.beingDragged = true;
  }
  if( dist(peperoni.x,peperoni.y,mouseX,mouseY) < peperoni.size/2)
  {
    peperoni.beingDragged = true;
  }
}
void mouseReleased()
{
  if(dist(cheese.x,cheese.y,mouseX,mouseY) < cheese.size/2)
  {
    cheese.beingDragged = false;
    cheese.placedCorrectly(pizza);
  }
  if(dist(peperoni.x,peperoni.y,mouseX,mouseY) < peperoni.size/2)
  {
    peperoni.beingDragged = false;
    peperoni.placedCorrectly(pizza);
  }
}
