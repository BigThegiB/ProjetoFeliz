void mostrar() {
  if (Reproduzindo == false){
    background(fundo);
    texto();
    for (int i = 0; i < imagens.length; i++) {
      image(imagens[i], posX[i], posY[i]);
    }
  }
}

void mostrarVideo() {
  if (Reproduzindo && imagemSelecionada != -1) {
    SomMenu.stop();
    background(fundo);
    image(videos[imagemSelecionada], 0, 150, 800, 400);
    brinquedos = false;
    BotaoBrinquedo();
    strokeWeight(3); 
    stroke(corBordaBotaoHover);
    noFill();
    rect(1, 150, 797, 400);
  }
}

void brinquedo(){
  mostrar();
  AlturaLargura();
  BotaoBrinquedo();
}

void escolherBrinquedo() {
  for (int i = 0; i < imagens.length; i++) {
    if (mouseX > posX[i] && mouseX < posX[i] + larguras[i] &&
      mouseY > posY[i] && mouseY < posY[i] + alturas[i]) {
      println("Imagem " + (i+1) + "!");
      SomBotao.play();
      SomBotao.amp(0.5);
      if (imagemSelecionada != -1) {
        videos[imagemSelecionada].stop();
      }
      imagemSelecionada = i;
      videos[i].loop();
      videos[i].volume(0.4);
      Reproduzindo = true; 
    }
  }
}

void AlturaLargura() {
  for (int i = 0; i < imagens.length; i++) {
    imagens[i].resize(300, 300);
    larguras[i] = imagens[i].width;
    alturas[i] = imagens[i].height;
  }
}

void texto() {
  textAlign(LEFT);
  textFont(Puff);
  textSize(64);
  fill(#3C43BF);
  text("Vamos", PosicaoTextoX + 290, PosicaoTextoY + 300);
  text("montar um", PosicaoTextoX + 220, PosicaoTextoY + 400);
  text("brinquedo?", PosicaoTextoX + 230, PosicaoTextoY + 500);
  
  fill(#5C61CB);
  textSize(64);
  text("Vamos", PosicaoTextoX + 293, PosicaoTextoY + 297);
  text("montar um", PosicaoTextoX + 223, PosicaoTextoY + 397);
  text("brinquedo?", PosicaoTextoX + 233, PosicaoTextoY + 497);
}

void BotaoBrinquedo() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700) {
    strokeWeight(3); 
    stroke(corBordaBotaoHover); 
  } else {
    strokeWeight(0); 
    stroke(corBordaBotao);
  }
  fill(#FFFFFF);
  rect(300, 600, 200, 100, 20);
  fill(#5C61CB);
  textFont(Puff);
  textSize(40);
  fill(#3C43BF);
  text("VOLTAR", PosicaoBotaoX + 325, PosicaoBotaoY + 670);
  fill(#5C61CB);
  text("VOLTAR", PosicaoBotaoX + 328, PosicaoBotaoY + 667);

  if (mousePressed) {
    if (MouseClick(300, 500, 600, 700)) {
      
      if (Reproduzindo){    
        Reproduzindo = false;
        videos[imagemSelecionada].stop();
      }
      SomBotao.play();
      SomBotao.amp(0.5);
      brinquedos = false;
      Menu = true;
    }
  }
}
