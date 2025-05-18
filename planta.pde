///NÃO APAGAR NADA PLEASE


void configurarvideo(){
  
  videoteste = new Movie(this, "plantavideo.mp4");   // carrega o video
  videoteste.loop();   // repete o vídeo em loop
  
 } 

  
void desenharAsImagens(){ 
  image(img, 300, 200, 600, 400);//desenha a nuvem
  image(img2, crescimentoflorX, crescimentoflorY, tamflor, tamflor);//desenha a flor
  if(videoteste != null){ //diferente de vazio
  image(videoteste, 0, 0, width, height);} //desenha o video na tela toda
 
}

 void textodaPlanta(){
  Puff = createFont("DynaPuff-SemiBold.ttf", 18);
  textAlign(LEFT, TOP);   // Alinha o texto no canto superior esquerdo
  textFont(Puff);  //fonte
  fill(0);   // Cor do texto (preto)
  }
  
  void PlantaTecla(){
  if (keyPressed){
  textoOrdem = (textoOrdem + 1) % 3;  //alterna em tres estados= aparece o primeiro texto, o segundo texto e sem texto.
  
}
}

void quadrado() { // funcao da 'caixa de texto'
  if (textoOrdem > 0) {
    fill(#FFFEFA); // cor do retãngulo
    rect(0, 0, width / 1.8, height / 4); // parâmetros do retângulo
    fill(#C368F5); // cor do texto (preto)
    textFont(Puff); // fonte do texto
    if (textoOrdem == 1) {  //primeiro estado
       
      text("São responsáveis pela geração de oxigênio através do processo de fotossíntese, que é vital para a sobrevivência de muitos organismos, inclusive do homem. Além disso, as plantas servem como fonte primária de alimento para herbívoros, formando a base da cadeia alimentar na maioria dos ecossistemas.", 10, 10, width / 2, height / 4);
    
  } else if (textoOrdem == 2) { //segundo estado
      text("As plantas precisam de energia luminosa do sol, de água presente no solo, e de carbono presente no ar para crescer. O ar é, em grande parte, constituído por nitrogênio, oxigênio e dióxido de carbono.", 10, 10, width / 2, height / 4);
    }
  }
}

void gotinhas(int xgota, int ygota) {  //caracteristicas das gotinhas
  fill(#719FE5);  //cor das gotinhas
  ellipse(xgota, ygota+100, 10, 15);  //parametros das gotinhas
}
  
  void ClickPlanta(){ 
if (mousePressed){
   if ((mouseX>=400)&&(mouseX<=400+300) && (mouseY>=150) && (mouseY<=150+150)){ //area da nuvem
  gotasgeral();//chama a função gotas
  
  image(img2, crescimentoflorX, crescimentoflorY, tamflor, tamflor); //desenha a flor
 if (tamflor < 400) {//crescimento da flor
  tamflor += 5;
  crescimentoflorY -= 5;
  crescimentoflorX -= 2.5;
 }
  }
if ((mouseX>0) && (mouseX<400) && (mouseY>0) && (mouseY<=200)){  //area da caixa de texto
   BotaoPlantaVideo();
   configurarvideo();

   //videoteste.jump(0);
 }
}}

void gotasgeral() {//cri as gotas aletoriamente quando clicar na nuvem// função
 { //parametros da nuvem. se o mouse cliclar na nuvem algo acontece
  for (int i = 0; i < 40; i++) {//laço repetido 40 gotas
    float dropX = xgota + random(-250, 0);  //gera posições aleatorias para as gotas no eixo x entre esse raio
    float dropY = ygota + random(0, 400);//gera posições aleatorias para as gotas no eixo x entre esse raio
     gotinhas(int(dropX), int(dropY));}//chama 
  }
}

void BotaoPlantaMenu() {
  fill(#FFFFFF);  //cor 
  rect(100, 600, 200, 100, 20);  //retangulo do botão
  fill(#5C61CB);  //cor da fonte
  textFont(Puff);  //fonte do texto
  textSize(40);  //tamanho da fonte
  if (mouseX > 150 && mouseX < 250 && mouseY > 600 && mouseY < 700) {  //area do botão 
    strokeWeight(3); //lagura da borda //(se o mouse fica em cima do botão a cor da borda foca mais forte)
    stroke(corBordaBotaoHover);
  } else {
    strokeWeight(1); 
    stroke(corBordaBotao);
  }
  text("VOLTAR", 120, 640);
  
  if (mousePressed) {
    if (MouseClick(150, 250, 600, 700)) { 
      planta = false;
      Menu = true;
      
    
  }
  }
}

void BotaoPlantaVideo(){
  fill(#FFFFFF);  //cor 
  rect(690, 10, 100, 50, 20);  //retangulo do botão
  fill(#5C61CB);  //cor da fonte
  textFont(Puff);  //fonte do texto
  textSize(20);  //tamanho da fonte
  text("Pausar",705,25);

    if (mousePressed) {
  if ((mouseX > 690) && (mouseX < 790) && (mouseY > 10) && (mouseY < 60)) {
    if (videoteste.isPlaying()) {
      videoteste.pause();  // pausa o vídeo se estiver tocando
    } else {
      videoteste.play();   // toca o vídeo se estiver pausado
    }
  }
}    
}


void movieEvent(Movie m){ //Essa é uma função de callback que o Processing chama automaticamente sempre que um novo quadro do vídeo está disponível.
  m.read();
  
}
