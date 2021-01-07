const int btn1 =2;
const int led1 = 13;
bool state = 0;
void setup() {
  // put your setup code here, to run once:
  pinMode(led1,OUTPUT);
  pinMode(btn1,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  state = digitalRead(btn1);
  if(state == HIGH) digitalWrite(led1,HIGH);
  else digitalWrite(led1,LOW);
  //gdxz000
}
