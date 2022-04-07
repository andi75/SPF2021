void setup()
{
  size(600, 600);
  int s = second();

  while(second() == s)
  {
    offset = millis();
  }
}

int offset = 0;

void draw()
{
  background(0);
  // stroke(0);
  textAlign(CENTER);
  int m = (millis() + 1000 - offset) % 1000;
  String mText;
  if(m < 10) mText = "00" + m;
  else if(m < 100) mText = "0" + m;
  else mText = "" + m;
  text( second() + "." + mText, width/2, height/2 );
}
