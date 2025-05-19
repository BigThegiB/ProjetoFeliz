void botoes() {
  background(fundo);
  boolean hover1 = MouseClick(botao1X, botao1X+botaoLargura, botao1Y, botao1Y+botaoAltura);
  boolean hover2 = MouseClick(botao2X, botao2X+botaoLargura, botao2Y, botao2Y+botaoAltura);
  boolean hover3 = MouseClick(botao3X, botao3X+botaoLargura, botao3Y, botao3Y+botaoAltura);

  desenharBotaoComImagem(botao1X, botao1Y, botaoLargura, botaoAltura, imgBotao1, hover1);
  desenharBotaoComImagem(botao2X, botao2Y, botaoLargura, botaoAltura, imgBotao2, hover2);
  desenharBotaoComImagem(botao3X, botao3Y+5, botaoLargura*.9, botaoAltura*.9, imgBotao3, hover3);}
void desenharBotaoComImagem(float x, float y, float w, float h, PImage img, boolean hover) {
  if (img != null) {
    if (!hover){image(img, x, y, w, h);}
    else{image(img, x - (w * 0.15), y - (h * 0.15), w * 1.3, h * 1.3);}
    
      
  }}


void ClickMenu() {
  if (mousePressed) {
    // Verificar se o clique foi dentro do Botão 1
    if (MouseClick(botao1X, botao1X+botaoLargura, botao1Y, botao1Y+botaoAltura)) {
      SomBotao.play();
      SomBotao.amp(0.5);
      brinquedos = true;
      Menu = false;
    }
    // Verificar se o clique foi dentro do Botão 2
    if (MouseClick(botao2X, botao2X+botaoLargura, botao2Y, botao2Y+botaoAltura)) {
      SomBotao.play();
      SomBotao.amp(0.5);
      SomMenu.stop();
      Reciclagem1 = true;
      Menu = false;
      Reciclagem1Completed = false;
      if (Todas.isEmpty()) {
        Metal = new ArrayList<String>(Arrays.asList("LataPequena", "LataGrande", "LataRefri"));
        Vidro = new ArrayList<String>(Arrays.asList("GarrafaVidro1", "GarrafaVidro2", "PoteVidro"));
        Papel = new ArrayList<String>(Arrays.asList("Caixa", "Jornal", "Saco"));
        Plastico = new ArrayList<String>(Arrays.asList("garrafa", "Leite", "Detergente"));
        Outros = new ArrayList<String>(Arrays.asList("CopoIsopor", "Mug", "Pizza", "Pressurizada"));
        TodasAdd();
      }
    }
    // Verificar se o clique foi dentro do Botão 3
    if (MouseClick(botao3X, botao3X+botaoLargura, botao3Y, botao3Y+botaoAltura)) {
      SomBotao.play();
      SomBotao.amp(0.5);
      SomMenu.stop();
      planta = true;
      Menu = false;
    }
  }
}
