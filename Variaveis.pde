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

//-----------------

boolean brinquedos = true;
PImage[] imagens = new PImage[4];
<<<<<<< Updated upstream
int[] posX = {40, 460, 40, 460};
int[] posY = {40, 40, 460, 460};
=======
int[] posX = {40, 490, 10, 500};
int[] posY = {10, 10, 460, 460};
>>>>>>> Stashed changes
int[] larguras = new int[4];
int[] alturas = new int[4];
PImage fundo;
Movie[] Video = new Movie[4];
boolean[] VideoBrinquedo = { false, false, false, false };
boolean VideoRodando = false;
//Movie Cu;

//-----------------
<<<<<<< Updated upstream
=======

boolean Menu = true;
int svar = 1;
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

  
>>>>>>> Stashed changes
