PImage EscolherItem(){
  int i = int(random(Todas.length));
  String[] Escolhida = Todas[i];
  i = int(random(Escolhida.length));
  String ReciclavelNome = Escolhida[i]; //Lembrar de Remover o item da lista depois
  PImage ItemReciclavel = loadImage(ReciclavelNome + ".png");
  return ItemReciclavel;
}


void SpawnarItem(float ReciclavelX,float ReciclavelY){
  while (ReciclavelSpawned == false) {
    PImage ItemReciclavel = EscolherItem();
    image(ItemReciclavel, ReciclavelX, ReciclavelY, 64*3, 64*3);
    
    ReciclavelSpawned = true;
  }
}

void ReciclavelGameplay(){}
  
  


  
