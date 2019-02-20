import queasycam.*;
PShape car;
float deg = PI/4;

QueasyCam cam;
void setup()
{
  size (800, 800, P3D);
  car = loadShape("Lamborghini_Aventador.obj");
  car.scale(1);
  cam = new QueasyCam(this);
}

void draw()
{
  background(90,100,250);
  pushMatrix();
  translate(400, 400, -400);
//  rotateY(deg); // rotateX();, rotateY();, rotateZ();
   //rotateX(deg);
  shape(car, 0, 0); // render
  popMatrix();
  
   deg = deg + PI/360;
}
