
void setup() {
  size(800, 800);
  CarregarImagens();
  AlturaLargura();
}
  
void draw() {
  background(#FFFFFF);
  desenhos();
}

void mousePressed() {
  ImagemSelecionada();
}   
