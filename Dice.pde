void setup()
{
   noLoop();
   size(500, 500);
}
void draw()
{
   background((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
   int total = 0;
   for (int y =10; y < 360; y+=40){
     for (int x = 10; x < 460; x+=40){
       Die one = new Die(x, y);
       one.show();
       total = total + one.myDots;
       
     }
   }
   fill(255);
   rect(0, 390, 500, 80);
   fill(0);
   textSize(25);
   text("Your year is " + total + " AD", 130, 420);
   textSize(15);
   if(total < 350){
     text(total - 340 + " years ago, Constantinople became the largest city in world", 5, 450);
   } else if (total < 360){
     text(total - 350 + " years ago, Anbar (modern Iraq) was founded by Shapur II", 5, 450);
   } else if (total < 370){
     text(total - 360 + " years ago, Julian made emperor by Gallic, showing revolt on Persia", 5, 450);
   } else if (total < 380){
     text(total - 370 + " years ago, the Huns were destroying everything in their path", 5, 450);
   } else if (total < 390){
     text(total - 380 + " years ago, key works in math/astronomy were written in Sanskrit", 5, 450);
   } else if (total < 400){
     text(total - 390 + " years ago, Jerome begins translating Old Testament into Latin", 5, 450);
   } else if (total < 410){
     text(total - 400 + " years ago, Hypatia, distinguishes as one of first women scientists", 5, 450);
   } else if (total < 420){
     text(total - 410 + " years ago, Visigoths sack Rome, beginning decline of Roman Empire", 5, 450);
   } else {
     text(total - 420 + " years ago, the legendary Pharamond leads Franks across the Rhine", 5, 450);
   }
}
void mousePressed()
{
   redraw();
}
class Die //models one single dice cube
{
   int myX;
   int myY;
   int myDots;
      
    Die(int x, int y) //constructor
    {
       myX = x;
       myY = y;
    }
    void roll()
    {
        //your code here
    }
    void show()
    {
        fill(255);
        rect(myX, myY, 40, 40, 10);
        int dots = (int)(Math.random() * 6) + 1;
        myDots = dots;
        if(dots == 1){
          fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
          ellipse(myX + 20, myY + 20, 8, 8);
        } else if (dots == 2){
          fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
          ellipse(myX + 10, myY + 10, 8, 8);
          ellipse(myX + 30, myY + 30, 8, 8);
        } else if (dots == 3){
          fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
          ellipse(myX + 10, myY + 10, 8, 8);
          ellipse(myX + 30, myY + 30, 8, 8);
          ellipse(myX + 20, myY + 20, 8, 8);
        } else if (dots == 4){
          fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
          ellipse(myX + 10, myY + 10, 8, 8);
          ellipse(myX + 30, myY + 30, 8, 8);
          ellipse(myX + 10, myY + 30, 8, 8);
          ellipse(myX + 30, myY + 10, 8, 8);
        } else if (dots == 5){
          fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
          ellipse(myX + 10, myY + 10, 8, 8);
          ellipse(myX + 30, myY + 30, 8, 8);
          ellipse(myX + 10, myY + 30, 8, 8);
          ellipse(myX + 30, myY + 10, 8, 8);
          ellipse(myX + 20, myY + 20, 8, 8);
        } else {
          fill((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250));
          ellipse(myX + 10, myY + 10, 8, 8);
          ellipse(myX + 30, myY + 30, 8, 8);
          ellipse(myX + 10, myY + 30, 8, 8);
          ellipse(myX + 30, myY + 10, 8, 8);
          ellipse(myX + 20, myY + 10, 8, 8);
          ellipse(myX + 20, myY + 30, 8, 8);
        }
    }
}
