color corBordaBotao = color(50);
color corBordaBotaoHover = color(0, 0, 200);



void botoes() {
  background(fundo);


  desenharBotaoComImagem(botao1X, botao1Y, botaoLargura, botaoAltura, imgBotao1);
  desenharBotaoComImagem(botao2X, botao2Y, botaoLargura, botaoAltura, imgBotao2);
  desenharBotaoComImagem(botao3X, botao3Y, botaoLargura, botaoAltura, imgBotao3);
}
//void tela1() {
//  fill(#FFFFFF);
//  rect(0, 0, width, height-40);
//  fill(#BF66DB);
//  rect(0, 0, 100, 40);
//  fill(0);
//  text("Voltar", 10, 30);
//}
//void tela2() {
//  fill(#FFFFFF);
//  rect(0, 0, width, height-40);
//  fill(#BF66DB);
//  rect(0, 0, 100, 40);
//  fill(0);
//  text("Voltar", 10, 30);
//}
//void tela3() {
//  fill(#FFFFFF);
//  rect(0, 0, width, height-40);
//  fill(#BF66DB);
//  rect(0, 0, 100, 40);
//  fill(0);
//  text("Voltar", 10, 30);
//}


void desenharBotaoComImagem(int x, int y, int w, int h, PImage img) {

  if (img != null) {
    image(img, x, y, w, h);
  }
  
  
}

void ClickMenu() {
  if (mousePressed) {
    // Verificar se o clique foi dentro do Botão 1
    if (MouseClick(botao1X, botao1X+botaoLargura, botao1Y, botao1Y+botaoAltura)) {
      println("Botão com imagem 1 foi clicado!");
      SomBotao.play();SomBotao.amp(0.5);
      brinquedos = true;
      Menu = false;
    }
    // Verificar se o clique foi dentro do Botão 2
    if (MouseClick(botao2X, botao2X+botaoLargura, botao2Y, botao2Y+botaoAltura)) {
      println("Botão com imagem 2 foi clicado!");
      SomBotao.play();SomBotao.amp(0.5);
      Reciclagem1 = true;
      Menu = false;
      Reciclagem1Completed = false;
      if(Todas.isEmpty()){
      Metal = new ArrayList<String>(Arrays.asList("LataPequena", "LataGrande", "LataRefri"));
      Vidro = new ArrayList<String>(Arrays.asList("GarrafaVidro1", "GarrafaVidro2", "PoteVidro"));
      Papel = new ArrayList<String>(Arrays.asList("Caixa", "Jornal", "Saco"));
      Plastico = new ArrayList<String>(Arrays.asList("garrafa", "Leite", "Detergente"));
      Outros = new ArrayList<String>(Arrays.asList("CopoIsopor", "Mug", "Pizza", "Pressurizada"));
      TodasAdd();
    }}
    //// Verificar se o clique foi dentro do Botão 3
    //if (MouseClick(botao3X,botao3X+botaoLargura,botao3Y,botao3Y+botaoAltura)){
      //println("Botão com imagem 3 foi clicado!");
      //SomBotao.play();SomBotao.amp(0.5);
      //glaucia = true;
      //Menu = false
    //}
  }
}
