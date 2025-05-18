void CarregarImagens() { // Pra carregar coisa mais rápido, Imagem ou fonte qq coisa
  LixoMetal = loadImage("LixoMetal.png");
  LixoNao = loadImage("LixoNao.png");
  LixoPapel = loadImage("LixoPapel.png");
  LixoPlastico = loadImage("LixoPlastico.png");
  LixoVidro = loadImage("LixoVidro.png");
  Puff = createFont("DynaPuff-SemiBold.ttf", 64);
  TestWin = loadImage("TestWin.png");
  imagens[0] = loadImage("Img1.PNG");
  imagens[1] = loadImage("Img2.PNG");
  imagens[2] = loadImage("Img3.PNG");
  imagens[3] = loadImage("Img4.PNG");
  fundo = loadImage("background1.0.png");
  imgBotao1 = loadImage("imagem_botao1.jpg");
  imgBotao2 = loadImage("imagem_botao2.jpg");
  imgBotao3 = loadImage("imagem_botao3.jpg");

  botao1X = xInicial;
  botao1Y = yComumParaBotoes;

  botao2X = botao1X + botaoLargura + espacamentoHorizontal;
  botao2Y = yComumParaBotoes;

  botao3X = botao2X + botaoLargura + espacamentoHorizontal;
  botao3Y = yComumParaBotoes;
    smooth();

}
