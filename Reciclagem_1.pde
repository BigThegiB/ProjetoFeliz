void EscolherItem(){
  int i = int(random(Todas.length));
  String[] Escolhida = Todas[i];
  i = int(random(Escolhida.length));
  String ItemNome = Escolhida[i]; //Lembrar de Remover o item da lista depois
  PImage Item = loadImage(ItemNome + ".png");
  image(Item, width*0.4, height*.70, 64*3, 64*3);
}


  
