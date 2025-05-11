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
    return ItemReciclavel;
  }
}


PImage LoadItem(PImage OldItem) {
  if (ReciclavelSpawned == false && !Todas.isEmpty()) {
  ItemReciclavel = EscolherItem();
  return ItemReciclavel;}
  else
  return OldItem;
  

}
void ReciclagemClickSolto(){
 if (TrashInMouse){
  TrashInMouse = false;
  }
}



void ReciclavelGameplay() {
  Reciclagem1 = true;
  image(LixoMetal, width * 0.1, height * 0.3125, 105, 165);
  image(LixoPapel, width * 0.26625, height * 0.3125, 105, 165);
  image(LixoPlastico, width * 0.434375, height * 0.3125, 105, 165);
  image(LixoVidro, width * 0.6, height * 0.3125, 105, 165);
  image(LixoOrganico, width * 0.76625, height * 0.3125, 105, 165);
  LoadItem(ItemReciclavel);
  ReciclavelSpawned = true;
  if (ItemReciclavel == null) {
    Reciclavel1Completed = true;
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

  image(ItemReciclavel, ReciclavelX, ReciclavelY, 64*2, 64*2);
  println(ReciclavelSpawned, ReciclavelX, ReciclavelY);
}



// on click set bool mouse following to true
// follow X and Y while true
// on mouse release become false
