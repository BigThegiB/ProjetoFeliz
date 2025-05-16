
void configurarvideo(){
  videoteste = new Movie(this, "plantavideo.mp4"); // carrega o video
  videoteste.loop();} // repete o vídeo em loop
  
void desenharAsImagens(){ 
  image(img, 400, 100, 300, 200);//desenha a nuvem
  image(img2, 420, 600 - tamflor/2, tamflor, tamflor);//desenha a flor
  //tranlate esquerda/direita,cima/baixo)
  //todos esses desenham as imagens porém so se mantem pois esta funçao esta em loop no draw.
  if(videoteste != null){
  image(videoteste, 0, 0, width, height);} //desenha o video na tela toda
}

  
  
 void textodaPlanta(){
  textAlign(LEFT, TOP); // Alinha o texgotato no canto superior esquerdo
  textSize(24); // Tamanho da fonte
  fill(0); // Cor do texgotato (preto)
  puff = createFont("DynaPuff-SemiBold.otf", 24);
  textFont(puff);}
  
  void PlantaTecla(){
  
  if (keyPressed){
  textoOrdem = (textoOrdem + 1) % 3;
}
}

void quadrado() { // funcao da 'caixgotaa de texgotato'
  if (textoOrdem > 0) {
    fill(#FFFEFA); // cor da caixa
    rect(0, 0, width / 2, height / 4); // parâmetros do retângulo
    fill(0); // cor do texto (preto)
    
    textFont(puff);
    if (textoOrdem == 1) {
      
      text("São responsáveis pela geração de oxgotaigênio através do processo de fotossíntese, que é vital para a sobrevivência de muitos organismos, inclusive do homem. Além disso, as plantas servem como fonte primária de alimento para herbívoros, formando a base da cadeia alimentar na maioria dos ecossistemas.", 10, 10, width / 2, height / 4);
    
  } else if (textoOrdem == 2) {
      text("As plantas precisam de energia luminosa do sol, de água presente no solo, e de carbono presente no ar para crescer. O ar é, em grande parte, constituído por nitrogênio, oxgotaigênio e dióxgotaido de carbono.", 10, 10, width / 2, height / 4);
    }
  }
}


void imagem() {
  img = loadImage("nuvenzinha.png");//carrega a imagem da nuvem
  img2 = loadImage("florzinha.png");//carrega a imagem da flor
  
}


void gotinhas(int xgota, int ygota) {//caracteristicas das gotinhas
  fill(#719FE5);//cor das gotinhas
  ellipse(xgota, ygota+100, 10, 15);//parametros das gotinhas
}
  
  void ClickPlanta(){
if (mousePressed){
   if ((mouseX>=400)&&(mouseX<=400+300) && (mouseY>=150) && (mouseY<=150+150)){
  gotasgeral();//chama a função gotas
  
  image(img2, 420, 600 - tamflor/2, tamflor, tamflor);
   //se clicar na nuvem a flor cresce

 if (tamflor < 300) {//se o tamanho da flor for menor que trezentos ela cresce
  tamflor += 15;//o quanto ela cresce
   //if (tamflor >= 300 && videoteste == null){
  //configurarvideo();}//chama essa função
 }
  }
 if ((mouseX>0) && (mouseX<400) && (mouseY>0) && (mouseY<=200)){
   configurarvideo();
}
}
}



void gotasgeral() {//cri as gotas aletoriamente quando clicar na nuvem
 { //parametros da nuvem. se o mouse cliclar na nuvem algo acontece
  for (int i = 0; i < 40; i++) {//laço repetido 40 vetamflores
    float dropxgota = xgota + random(-300, 0);  //gera posições aleatorias para as gotas
    float dropY = ygota + random(0, 400);//tamanho da chuva na vertical 
     gotinhas(int(dropxgota), int(dropY));}
  }
}
