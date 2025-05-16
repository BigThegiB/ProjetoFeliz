import com.hamoid.*;

void setup() {
  size(800, 800);
  TodasAdd(); // Favor não tirar
  CarregarImagens();
}
void draw() {
  if(Menu){  botoes();
 ClickMenu();}
  
  
  
  
  if (Reciclagem1) { // Variavel para fazer o codigo inteiro rodar, só fazer o menu ativar ela e a magica vai acontecer (se possivel fazer o menu nn renderizar quando ela ta ativa)
    if (!Reciclagem1Completed) {
      background(fundo);
      ReciclavelGameplay();
    } else {
      background(TestWin);
      delay(3000);
      Menu = true;
      delay(300);
      Reciclagem1=false;
    }
  }
  if (planta){
  background(fundo);
  imagem();
  ClickPlanta();
  
}
}
void mouseReleased() { // Função para detectar botão do mouse sendo solto, deixando aq caso alguem queira usar tb
  if (Reciclagem1) {
    ReciclagemClickSolto();
  }
  
}
