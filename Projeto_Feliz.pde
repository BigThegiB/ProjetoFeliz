void setup() {
  size(800, 800);
  Todas.add(Metal);
  Todas.add(Vidro);
  Todas.add(Papel);
  Todas.add(Plastico);
  Todas.add(Outros);
  Puff = createFont("DynaPuff-SemiBold.ttf", 64);
}
void draw() {
  if(mousePressed && !Reciclavel1Completed){
  SpawnarItem(width*0.4, height*0.7);
ReciclavelSpawned = false;}
textFont(Puff);
textSize(50);
text("The quick brown fox jumps over the lazy dog", 250, 400, 400,500);
}
