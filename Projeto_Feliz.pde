void setup() {
  size(1000, 1000);
  Todas.add(Metal);
  Todas.add(Vidro);
  Todas.add(Papel);
  Todas.add(Plastico);
  Todas.add(Outros);
}
void draw() {
  if(mousePressed && !Reciclavel1Completed){
  SpawnarItem(width*0.4, height*0.7);
ReciclavelSpawned = false;}
}
