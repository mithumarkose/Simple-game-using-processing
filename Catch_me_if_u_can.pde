int x1=0;
int y1=200;
float k=0;
int lives=5;
int speed=1;
int score=0;
int f=0;
int s=0;
int g=0;
int p=0;
int t=5;
int e=3;
int y2=0;
int y3=0, y9=0, y10=0, y11=0;
int y4=0, y5=0, y6=0, y7=0, y8=0;
int m=0;
void setup()
{
  fullScreen();
  smooth();
  noStroke();
  background(0, 0, 255);
}
void draw()
{
  if (f==0)
  {
    page0();
  }
  if (f==1)
  {
    page1();
  }
  if (m==1)
  {
    level();
  }
  if (m==2)
  {
    level3();
  }
  if (m==3)
  {
 level4();
  }
  if (p==1)
  {
    loop();
  }
}
void mousePressed()
{
  f=1;
  k=dist(mouseX, mouseY, x1, y1);
  if (k<100)
  {
    speed=speed+1;
    score=score+1;
  } else
  {
    lives=lives-1;
  }
  if ((score>15)&&(score<30))
  {
    m=1;
  }
  if (score==16)
  {
    speed=1;
  }
  if ((score>30)&&(score<40))
  {
    m=2;
  }
  if (score==31)
  {
    speed=1;
  }
  if (score>40)
  {
    m=3;
  }
  if (score==41)
  {
    speed=1;
  }
  if ((score%10)==0)
  {
    lives=lives+1;
  }
}
void page0()
{
  background(87, 247, 25);
  textSize(60);
  text("CATCH ME IF U CAN", (width/4)+50, height/3);
  textSize(30);
  text("click on the red ball and get points", (width/5)+150, (height/2)-100);
  text("START", (width/5)+330, (height/2));
  textSize(60);
  textSize(30);
  text("Mitech", width-150, height-50);
}
void page1()
{  
  clear();
  background(0, 0, 255);
  textSize(60);
  ellipseMode(CENTER);
  fill(252, 8, 24);
  ellipse(x1, y1, 100, 100);
  x1=x1+speed;
  if (x1>(width-10))
  {
    x1=0;
  }
  fill(248, 252, 8);
  text("Catch Me If U can ", (width/4)+50, height/10);
  fill(240, 218, 218);
  textSize(40);
  text("Score:", width-400, (height/10)+100);
  text(score, width-270, (height/10)+100);
  text("Lives:", width-400, (height/10)+140);
  text(lives, width-270, (height/10)+140);
  fill(0); 
  textSize(30);
  text("Mitech", width-150, height-50);
  if (lives<1)
  {
    g=page3();
    if (g==1)
    {
      x1=0;
      y1=500;
      k=0;
      lives=6;
      speed=1;
      score=0;
      f=0;
      s=0;
      g=0;
      p=0;
      m=0;
       t=5;
        e=3;
      loop();
    }
  }
}
int page3()
{
  background(247, 211, 25);
  fill(25, 37, 247);
  textSize(60);
  text("GAME OVER", (width/3)+70, height/3);
  textSize(30);
  text("Score:", (width/3)+160, (height/3)+50);
  text(score, (width/3)+250, (height/3)+50);
  textSize(30);
  text("Press R to restart game", (width/3)+70, (height/3)+100);
  text("Press Esc to exit", (width/3)+120, (height/3)+150);
  fill(0); 
  textSize(30);
  text("Mitech", width-150, height-50);
  if (keyPressed)
  {
    if ((key=='r')||(key=='R'))
    {
      return (1);
    }
  }
  return (0);
}
void level()
{
  clear();
  background(#BF64C6);
  textSize(60);
  ellipseMode(CENTER);
  fill(252, 8, 24);
  ellipse(x1, y1, 100, 100);
  x1=x1+speed;
  if (x1>(width-10))
  {
    x1=0;
  }

  y1=y1+(speed/2);
  if (y1>(height-10))
  {
    y1=0;
  }
  fill(248, 252, 8);
  text("Catch Me If U can ", (width/4)+50, height/10);
  fill(240, 218, 218);
  textSize(40);
  text("Score:", width-400, (height/10)+100);
  text(score, width-270, (height/10)+100);
  text("Lives:", width-400, (height/10)+140);
  text(lives, width-270, (height/10)+140);
  fill(0); 
  textSize(30);
  text("Mitech", width-150, height-50);
  if (lives<1)
  {
    g=page3();
    if (g==1)
    {
      x1=500;
      y1=500;
      k=0;
      lives=6;
      speed=1;
      score=0;
      f=0;
      s=0;
      g=0;
      p=0;
      y2=0;
      y3=0;
      y9=0; 
      y10=0;
      y11=0;
      y4=0;
      y5=0;
      y6=0; 
      y7=0;
      y8=0;
       t=5;
        e=3;
      m=0;
      loop();
    }
  }
}
void level3()
{
  clear();
  background(252, 252, 36);
  textSize(60);
  ellipseMode(CENTER);
  fill(252, 8, 24);
  ellipse(x1, y1, 100, 100);
  fill(252);
  ellipse(width-400, y2, 100, 100);
  y2=y2+5;
  if (y2>height-10)
  {
    y2=0;
  }
  fill(10, 170, 38);
  ellipse(width-250, y3, 100, 100);
  y3=y3+10;
  if (y3>height-10)
  {
    y3=0;
  }
  fill(170, 136, 10);
  ellipse(width-50, y4, 200, 200);
  y4=y4+30;
  if (y4>height-10)
  {
    y4=0;
  }
  fill(252, 105, 238);
  ellipse(width-500, y5, 150, 150);
  y5=y5+50;
  if (y5>height-10)
  {
    y5=0;
  }
  fill(25, 85, 38);
  ellipse(width-650, y6, 100, 100);
  y6=y6+30;
  if (y6>height-10)
  {
    y6=0;
  }
  fill(25, 68, 85);
  ellipse(width-750, y7, 150, 150);
  y7=y7+10;
  if (y7>height-10)
  {
    y7=0;
  }
  fill(29, 63, 180);
  ellipse(width-930, y8, 200, 200);
  y8=y8+25;
  if (y8>height-10)
  {
    y8=0;
  }
  fill(#38F500);
  ellipse(width-1100, y9, 150, 150);
  y9=y9+04;
  if (y9>height-10)
  {
    y9=0;
  }
  fill(#680490);
  ellipse(width-1250, y10, 100, 100);
  y10=y10+10;
  if (y10>height-10)
  {
    y10=0;
  }
  fill(#ADEA58);
  ellipse(width-1400, y11, 200, 200);
  y11=y11+30;
  if (y11>height-10)
  {
    y11=0;
  }
  x1=x1+speed;
  y1=y1+(speed/2);
  if (x1>(width-10))
  {
    x1=0;
  }
  if (y1>(height-10))
  {
    y1=00;
  }
  fill(248, 252, 8);
  text("Catch Me If U can ", (width/4)+50, height/10);
  fill(0);
  textSize(40);
  text("Score:", width-400, (height/10)+100);
  text(score, width-270, (height/10)+100);
  text("Lives:", width-400, (height/10)+140);
  text(lives, width-270, (height/10)+140);
  fill(0); 
  textSize(30);
  text("Mitech", width-150, height-50);
  if (lives<1)
  {
    g=page3();
    if (g==1)
    {
      x1=500;
      y1=500;
      k=0;
      lives=6;
      speed=1;
      score=0;
      f=0;
      s=0;
      g=0;
      p=0;
      y2=0;
      y3=0;
      y9=0; 
      y10=0;
      y11=0;
      y4=0;
      y5=0;
      y6=0; 
      y7=0;
      y8=0;
      m=0;
       t=5;
        e=3;
      loop();
    }
  }
}
void level4()
{
   clear();
    background(252, 255, 255);
    textSize(60);
    ellipseMode(CENTER);
    fill(252, 8, 24);
    ellipse(x1, y1, 100, 100);
    x1=t;
    y1=e; 
    e=int(random(0,height));
    t=int(random(0,width));
    delay(1000);
    fill(248, 252, 8);
    text("Catch Me If U can ", (width/4)+50, height/10);
    fill(0);
    textSize(40);
    text("Score:", width-400, (height/10)+100);
    text(score, width-270, (height/10)+100);
    text("Lives:", width-400, (height/10)+140);
    text(lives, width-270, (height/10)+140);
    fill(0); 
    textSize(30);
    text("Mitech", width-150, height-50);
    if (lives<1)
    {
      g=page3();
      if (g==1)
      {
        x1=500;
        y1=500;
        k=0;
        lives=6;
        speed=1;
        score=0;
        f=0;
        s=0;
        g=0;
        p=0;
        y2=0;
        y3=0;
        y9=0; 
        y10=0;
        y11=0;
        y4=0;
        y5=0;
        y6=0; 
        y7=0;
        y8=0;
        m=0;
        t=5;
        e=3;
        loop();
      }
    }
  }