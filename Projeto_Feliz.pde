void setup() {
  size(800, 800);
  TodasAdd();
  CarregarImagens();
}

void draw() {

  if (Menu) {
    if (!SomMenu.isPlaying()) {
      SomMenu.loop();
    }
    botoes();
    ClickMenu();
  }

  if (brinquedos && !Reproduzindo) {
    Menu = false;
    brinquedo();
  } else if (Reproduzindo && imagemSelecionada != -1) {
    mostrarVideo();
  }

  if (Reciclagem1) { // Variavel para fazer o codigo da reciclagem rodar, só fazer o menu ativar ela e a magica vai acontecer
    if (!Reciclagem1Completed) {
      background(fundo);
      ReciclavelGameplay();
    } else {
      ReciclagemBGM.stop();
      if (!Victory.isPlaying()) {
        Victory.play();
        Victory.amp(0.3);
      }
      delay(1);
      background(TestWin);
      delay(3000);
      Menu = true;
      delay(300);
      Reciclagem1=false;
    }
  }

  if (planta) {
    Menu = false;
    background(fundo);
    desenharAsImagens();
    quadrado();
    ClickPlanta();
    textodaPlanta();
    BotaoPlantaMenu();
    textoTemporario();
  }
}

void mouseReleased() { // Função para detectar botão do mouse sendo solto
  if (Reciclagem1) {
    ReciclagemClickSolto();
  }
  if (brinquedos) {
    escolherBrinquedo();
  }
}

void keyPressed() {
  textoOrdem = (textoOrdem + 1) % 3;  //alterna em tres estados = aparece o primeiro texto, o segundo texto e sem texto.
}
