void CarregarImagens() { // Pra carregar as imagens, videos e sons mais rápido;
  imgBotao1 = loadImage("imagem_botao1.png");
  imgBotao2 = loadImage("imagem_botao2.png");
  imgBotao3 = loadImage("imagem_botao3.png");
  
  //-------------
  
  LixoMetal = loadImage("LixoMetal.png");
  LixoNao = loadImage("LixoNao.png");
  LixoPapel = loadImage("LixoPapel.png");
  LixoPlastico = loadImage("LixoPlastico.png");
  LixoVidro = loadImage("LixoVidro.png");
  Puff = createFont("DynaPuff-SemiBold.ttf", 64);
  ReciclagemBGM = new SoundFile(this, "ReciclagemBGM.mp3");
  Correct = new SoundFile(this, "Correct.mp3");
  Incorrect = new SoundFile(this, "Incorrect.mp3");
  Victory = new SoundFile(this, "Victory.mp3");
  TestWin = loadImage("TestWin.png");

  //------------

  imagens[0] = loadImage("Img1.png");
  imagens[1] = loadImage("Img2.png");
  imagens[2] = loadImage("Img3.png");
  imagens[3] = loadImage("Img4.png");
  videos[0] = new Movie(this, "video1.mp4");
  videos[1] = new Movie(this, "video2.mp4");
  videos[2] = new Movie(this, "video3.mp4");
  videos[3] = new Movie(this, "video4.mp4");
  fundo = loadImage("background1.0.png");
  SomBotao = new SoundFile(this, "SomBotao.wav");
  SomMenu = new SoundFile(this, "SomMenu.mp3");

  //------------

  botao1X = xInicial;
  botao1Y = yComumParaBotoes;
  botao2X = botao1X + botaoLargura + espacamentoHorizontal;
  botao2Y = yComumParaBotoes;
  botao3X = botao2X + botaoLargura + espacamentoHorizontal;
  botao3Y = yComumParaBotoes;
  smooth();
  img = loadImage("nuvenzinha.png");//carrega a imagem da nuvem
  img2 = loadImage("florzinha.png");//carrega a imagem da flor
}
