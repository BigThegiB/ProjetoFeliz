PImage EscolherItem() {
  if (Todas.isEmpty()) {
      return null;
    }
    else{
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
  if(Escolhida.isEmpty()){Todas.remove(iLista);}
  return ItemReciclavel;}
}


void SpawnarItem(float ReciclavelX, float ReciclavelY) {
 
  while (ReciclavelSpawned == false && !Todas.isEmpty()) {
    PImage ItemReciclavel = EscolherItem();
    if (ItemReciclavel == null) {
      Reciclavel1Completed = true;
    } else {
      image(ItemReciclavel, ReciclavelX, ReciclavelY, 64*2, 64*2);
    }
    ReciclavelSpawned = true;
  }
}
void ReciclavelGameplay() {
}

// Escolhida is empty no final do codigo
// Todas is empty no começo
// Náo deixar o codigo rodar se escolhida is empty!!!!!
