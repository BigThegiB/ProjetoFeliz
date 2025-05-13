void mostrar() {
  for (int i = 0; i < imagens.length; i++) {
    image(imagens[i], posX[i], posY[i]);
  }
}

void escolherBrinquedo() {
    for (int i = 0; i < imagens.length; i++) {
    if (mouseX > posX[i] && mouseX < posX[i] + larguras[i] &&
        mouseY > posY[i] && mouseY < posY[i] + alturas[i]) {
      println("Imagem " + (i+1) + "!");
      
    }
  }
}

void AlturaLargura() {
  for (int i = 0; i < imagens.length; i++) {
  imagens[i].resize(300,300);
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
