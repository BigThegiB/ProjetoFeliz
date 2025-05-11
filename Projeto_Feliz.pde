void setup() { //<>//
  size(800, 800);
  TodasAdd(); // Favor não tirar
  CarregarImagens();
}
void draw() {
textFont(Puff);
textSize(50);
text("The quick brown fox jumps over the lazy dog", 250, 400, 400,500);

void mouseReleased() { // Função para detectar botão do mouse sendo solto, deixando aq caso alguem queira usar tb
  if (Reciclagem1) {
    ReciclagemClickSolto();
  }
}
