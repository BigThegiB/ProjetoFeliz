void ImagemSelecionada (){
  
for (int i = 0; i < imagens.length; i++) {
    if (mouseX > posX[i] && mouseX < posX[i] + larguras[i] &&
        mouseY > posY[i] && mouseY < posY[i] + alturas[i]) {
      println("Imagem " + (i+1) + "!");
      
    }
  }
}

void desenhos() {
  
for (int i = 0; i < imagens.length; i++) {
    image(imagens[i], posX[i], posY[i]);
  }
}

void AlturaLargura() {
for (int i = 0; i < imagens.length; i++) {
    imagens[i].resize(300,300);
    larguras[i] = imagens[i].width;
    alturas[i] = imagens[i].height;
  }
}
