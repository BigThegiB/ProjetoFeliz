PImage EscolherItem() {
  if (Todas.isEmpty()) {
    return null;
  } else {
    int iLista = int(random(Todas.size()));
    ArrayList<String> Escolhida = Todas.get(iLista);
    while (Escolhida.isEmpty()) {
      Todas.remove(iLista);
      iLista = int(random(Todas.size()));
      Escolhida = Todas.get(iLista);
    }
    int iItem = int(random(Escolhida.size()));


    String ReciclavelNome = Escolhida.get(iItem); //Lembrar de Remover o item da lista depois
    PImage ItemReciclavel = loadImage(ReciclavelNome + ".png");
    Escolhida.remove(iItem);
    if (Escolhida.isEmpty()) {
      Todas.remove(iLista);
    }
    TipoDoItem = ReciclavelNome;
    return ItemReciclavel;
  }
}


PImage LoadItem(PImage OldItem) {
  if (ReciclavelSpawned == false && !Todas.isEmpty()) {
    ItemReciclavel = EscolherItem();
    ReciclavelSpawned = true;
    return ItemReciclavel;
  } else
    return OldItem;
}
void ReciclagemClickSolto() {
  ArrayList<String> MetalCheck = new ArrayList<String>(Arrays.asList("LataPequena", "LataGrande", "LataRefri"));
  ArrayList<String> VidroCheck = new ArrayList<String>(Arrays.asList("GarrafaVidro1", "GarrafaVidro2", "PoteVidro"));
  ArrayList<String> PapelCheck = new ArrayList<String>(Arrays.asList("Caixa", "Jornal", "Saco"));
  ArrayList<String> PlasticoCheck = new ArrayList<String>(Arrays.asList("garrafa", "Leite", "Detergente"));
  ArrayList<String> OutrosCheck = new ArrayList<String>(Arrays.asList("CopoIsopor", "Mug", "Pizza", "Pressurizada"));

  if (TrashInMouse) {
    if (MouseClick(width*0.1f, width*0.1+105f, height * 0.4f, height * 0.4+165f) && MetalCheck.contains(TipoDoItem)) {
      ReciclavelSpawned = false;
      Correct.play();
      Correct.amp(0.7);
    } else if (MouseClick(width*0.26625f, width*0.26625+105f, height * 0.4f, height * 0.4+165f) && PapelCheck.contains(TipoDoItem)) {
      ReciclavelSpawned = false;
      Correct.play();
      Correct.amp(0.7);
    } else if (MouseClick(width*0.434375f, width*0.434375+105f, height * 0.4f, height * 0.4+165f) && PlasticoCheck.contains(TipoDoItem)) {
      ReciclavelSpawned = false;
      Correct.play();
      Correct.amp(0.7);
    } else if (MouseClick(width*0.6f, width*0.6+105f, height * 0.4f, height * 0.4+165f) && VidroCheck.contains(TipoDoItem)) {
      ReciclavelSpawned = false;
      Correct.play();
      Correct.amp(0.7);
    } else if (MouseClick(width*0.76625f, width*0.76625+105f, height * 0.4f, height * 0.4+165f) && OutrosCheck.contains(TipoDoItem)) {
      ReciclavelSpawned = false;
      Correct.play();
      Correct.amp(0.7);
    } else if (MouseClick(width*0.1f, width*width*0.76625+105f, height * 0.4f, height * 0.4+165f)) {
      Incorrect.play();
    }
    TrashInMouse = false;
  }
}


void ReciclavelGameplay() {
  Reciclagem1 = true;

  image(LixoMetal, width * 0.1, height * 0.4, 105, 165);
  image(LixoPapel, width * 0.26625, height * 0.4, 105, 165);
  image(LixoPlastico, width * 0.434375, height * 0.4, 105, 165);
  image(LixoVidro, width * 0.6, height * 0.4, 105, 165);
  image(LixoNao, width * 0.76625, height * 0.4, 105, 165);
  LoadItem(ItemReciclavel);
  if (Todas.isEmpty() && !ReciclavelSpawned) {
    Reciclagem1Completed = true;
  }
  float ReciclavelX = width * 0.42;
  float ReciclavelY = height * 0.7;
  if (mousePressed && MouseClick(ReciclavelX, ReciclavelX+64*2, ReciclavelY, ReciclavelY+64*2)) {
    TrashInMouse = true;
  }
  if (TrashInMouse) {
    ReciclavelX = mouseX-60;
    ReciclavelY = mouseY-80;
  }
  if (!Reciclagem1Completed) {
    image(ItemReciclavel, ReciclavelX, ReciclavelY, 64*2, 64*2);
  }
  textFont(Puff);
  textSize(32);
  fill(0, 0, 0); //Texto Settings
  text("Voltar", width*0.0125, height*0.04);
  if (!ReciclagemBGM.isPlaying()) {
    ReciclagemBGM.loop();
  }
  if (mousePressed && MouseClick(0, width*0.1375, 0, height*0.04375)) {
    Menu = true;
    Reciclagem1 = false;
    ReciclagemBGM.stop();
    SomBotao.play();
  }
}

void TodasAdd() {
  Todas.add(Metal);
  Todas.add(Vidro);
  Todas.add(Papel);
  Todas.add(Plastico);
  Todas.add(Outros);
}
