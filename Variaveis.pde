boolean Reciclagem1 = false;
boolean ReciclavelSpawned = false;
boolean Reciclagem1Completed = false;
ArrayList<String> Metal = new ArrayList<String>(Arrays.asList("LataPequena", "LataGrande", "LataRefri"));
ArrayList<String> Vidro = new ArrayList<String>(Arrays.asList("GarrafaVidro1", "GarrafaVidro2", "PoteVidro"));
ArrayList<String> Papel = new ArrayList<String>(Arrays.asList("Caixa", "Jornal", "Saco"));
ArrayList<String> Plastico = new ArrayList<String>(Arrays.asList("garrafa", "Leite", "Detergente"));
ArrayList<String> Outros = new ArrayList<String>(Arrays.asList("CopoIsopor", "Mug", "Pizza", "Pressurizada"));
ArrayList<ArrayList<String>> Todas = new ArrayList<ArrayList<String>>();
String TipoDoItem = "";
PFont Puff;
PImage LixoMetal;
PImage LixoNao;
PImage LixoPapel;
PImage LixoPlastico;
PImage LixoVidro;
boolean TrashInMouse = false;
PImage ItemReciclavel;
PImage TestWin;
SoundFile ReciclagemBGM;
SoundFile Correct;
SoundFile Incorrect;
SoundFile Victory;

//-----------------

boolean brinquedos = false;
PImage[] imagens = new PImage[4];
int[] posX = {10, 500, 0, 500};
int[] posY = {10, 10, 500, 500};
int[] larguras = new int[4];
int[] alturas = new int[4];
PImage fundo;
int PosicaoTextoX = 0;
int PosicaoTextoY = 0;
int PosicaoBotaoX = 0;
int PosicaoBotaoY = 0;
int imagemSelecionada = -1;
Movie[] videos = new Movie[4];
boolean Reproduzindo = false;
SoundFile SomBotao;
SoundFile SomMenu;

//-----------------

boolean Menu = true;
PImage imgBotao1;
PImage imgBotao2;
PImage imgBotao3;
int botao1X, botao1Y;
int botaoLargura = 200;
int botaoAltura = 200;
int botao2X, botao2Y;
int botao3X, botao3Y;
int espacamentoHorizontal = 50;
int larguraTotalBotoes = (botaoLargura * 3) + (espacamentoHorizontal * 2);
int xInicial = 50;
int yComumParaBotoes = 250;
color corBordaBotao = color(50);
color corBordaBotaoHover = color(0, 0, 200);

//----------------------

int textoOrdem = 0;//controla o que vai ser exibido no retangulo
PImage img; //imagem da nuvem
PImage img2; //imagem da flor
Movie videoPlanta;
int tamflor = 200;
int xgota = 700;
int ygota = 200;
boolean planta = false;
int crescimentoflorY = 500;
int crescimentoflorX = 420;
