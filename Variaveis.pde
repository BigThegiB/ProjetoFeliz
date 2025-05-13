boolean Reciclagem1 = true;
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
PImage TestWin

//-----------------

boolean brinquedos = false;
PImage[] imagens = new PImage[4];
int[] posX = {100, 400, 100, 400};
int[] posY = {100, 100, 400, 400};
int[] larguras = new int[4];
int[] alturas = new int[4];
PImage fundo;

//-----------------

