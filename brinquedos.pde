void mostrar() {
  for (int i = 0; i < imagens.length; i++) {
    image(imagens[i], posX[i], posY[i]);
  }
  
}

void escolherBrinquedo() {
  for (int i = 0; i < imagens.length; i++) {
    if (mouseX > posX[i] && mouseX < posX[i] + larguras[i] &&

        mouseY > posY[i] && mouseY < posY[i] + alturas[i]) {

      mouseY > posY[i] && mouseY < posY[i] + alturas[i]) {

      println("Imagem " + (i+1) + "!");
    }
  }

      mouseY > posY[i] && mouseY < posY[i] + alturas[i]) {
      println("Imagem " + (i+1) + "!", i);
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
  textFont(Puff);
  text("Vamos", 290, 300);
  text("montar um", 220, 400);
  text("brinquedo?", 230, 500);
}

void BotaoBrinquedo() {
  fill(#FFFFFF);
  rect(300, 650, 200, 100, 20);
  fill(#5C61CB);
  textFont(Puff);
  textSize(40);
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
    strokeWeight(3); 
    stroke(corBordaBotaoHover); 
  } else {
    strokeWeight(0); 
    stroke(corBordaBotao);
  }
  text("VOLTAR", 325, 720);
  if (mousePressed) {
    if (MouseClick(300, 500, 650, 750)) {


void BotaoBrinquedo() {
  fill(#FFFFFF);
  rect(300, 600, 200, 100, 20);
  fill(#5C61CB);
  textFont(Puff);
  textSize(40);
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 700) {
    strokeWeight(3); 
    stroke(corBordaBotaoHover); 
  } else {
    strokeWeight(1); 
    stroke(corBordaBotao);
  }
  text("VOLTAR", 325, 670);
  if (mousePressed) {
    if (MouseClick(300, 500, 600, 700)) {
      brinquedos = false;
      Menu = true;
    }
  }
}


void BotaoVideo() {
  fill(#FFFFFF);
  rect(300, 650, 200, 100, 20);
  fill(#5C61CB);
  textFont(Puff);
  textSize(40);
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 750) {
    strokeWeight(3); 
    stroke(corBordaBotaoHover); 
  } else {
    strokeWeight(0); 
    stroke(corBordaBotao);
  }
  text("VOLTAR", 325, 720);
}

void TocarVideo(int VideoEscolhido) {
  Video[VideoEscolhido].loop();
  image(Video[VideoEscolhido], 0, 0, width, height);
}
