PImage EscolherItem() {
  int iLista = int(random(Todas.size()));
  ArrayList<String> Escolhida = Todas.get(iLista);
  int iItem = int(random(Escolhida.size()));
  while (Escolhida.isEmpty()) {
    Todas.remove(iLista);
    iLista = int(random(Todas.size()));
    Escolhida = Todas.get(iLista);
    iItem = int(random(Escolhida.size()));
    if (Todas.isEmpty()) {
      return null;
    }
  }

  String ReciclavelNome = Escolhida.get(iItem); //Lembrar de Remover o item da lista depois


  PImage ItemReciclavel = loadImage(ReciclavelNome + ".png");


  Escolhida.remove(iItem);
  return ItemReciclavel;
}


void SpawnarItem(float ReciclavelX, float ReciclavelY) {
  while (ReciclavelSpawned == false) {
    PImage ItemReciclavel = EscolherItem();
    if (ItemReciclavel == null) {
      Reciclavel1Completed = true;
    } else {
      image(ItemReciclavel, ReciclavelX, ReciclavelY, 64*3, 64*3);
    }

    ReciclavelSpawned = true;
  }
}

void ReciclavelGameplay() {
}
