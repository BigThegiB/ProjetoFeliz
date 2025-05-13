int svar = 1;
PImage imgBotao1;
PImage imgBotao2;
PImage imgBotao3;


int botao1X, botao1Y;
int botaoLargura = 200;
int botaoAltura = 200;
int botao2X, botao2Y;
int botao3X, botao3Y;


color corBordaBotao = color(50);
color corBordaBotaoHover = color(0, 0, 200); 

void setup() {
  size(800, 800);
  smooth();

    imgBotao1 = loadImage("imagem_botao1.jpg");
    imgBotao2 = loadImage("imagem_botao2.jpg");
    imgBotao3 = loadImage("imagem_botao3.jpg");

 
  int espacamentoHorizontal = 50; 
  int larguraTotalBotoes = (botaoLargura * 3) + (espacamentoHorizontal * 2);
  int xInicial = (width - larguraTotalBotoes) / 2;
  int yComumParaBotoes = (height - botaoAltura) / 2;

  
  botao1X = xInicial;
  botao1Y = yComumParaBotoes;

  botao2X = botao1X + botaoLargura + espacamentoHorizontal;
  botao2Y = yComumParaBotoes;

  botao3X = botao2X + botaoLargura + espacamentoHorizontal;
  botao3Y = yComumParaBotoes;
}

void draw() {
  botoes();
  if (svar==1) botoes();
  if (svar==2) tela1();
  if (svar==3) tela2();
  if (svar==4) tela3();
}  
void botoes(){
  background(240, 240, 240);

 
  desenharBotaoComImagem(botao1X, botao1Y, botaoLargura, botaoAltura, imgBotao1, "Botão 1");
  desenharBotaoComImagem(botao2X, botao2Y, botaoLargura, botaoAltura, imgBotao2, "Botão 2");
  desenharBotaoComImagem(botao3X, botao3Y, botaoLargura, botaoAltura, imgBotao3, "Botão 3");
}
void tela1(){
  fill(#FFFFFF);
  rect(0,0,width, height-40);
  fill(#BF66DB);rect(0,0,100,40);fill(0);text("Voltar",10,30);
}
void tela2(){
  fill(#FFFFFF);
  rect(0,0,width, height-40);
  fill(#BF66DB);rect(0,0,100,40);fill(0);text("Voltar",10,30);
}
void tela3(){
  fill(#FFFFFF);
  rect(0,0,width, height-40);
  fill(#BF66DB);rect(0,0,100,40);fill(0);text("Voltar",10,30);
}


void desenharBotaoComImagem(int x, int y, int w, int h, PImage img, String nomeBotaoDebug) {

  if (img != null) {
    image(img, x, y, w, h);
  } 


  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    strokeWeight(3); // Aumenta a espessura da borda
    stroke(corBordaBotaoHover); // Muda a cor da borda
  } else {
    strokeWeight(1); // Espessura normal da borda
    stroke(corBordaBotao); // Cor normal da borda
  }
  noFill(); 
  rect(x, y, w, h, 8); 
}


void mousePressed() {
  // Verificar se o clique foi dentro do Botão 1
  if (mouseX > botao1X && mouseX < botao1X + botaoLargura &&
      mouseY > botao1Y && mouseY < botao1Y + botaoAltura) svar=2; {
    println("Botão com imagem 1 foi clicado!");
  }
  // Verificar se o clique foi dentro do Botão 2
  if (mouseX > botao2X && mouseX < botao2X + botaoLargura &&
           mouseY > botao2Y && mouseY < botao2Y + botaoAltura) svar=3; {
    println("Botão com imagem 2 foi clicado!");
  }
  // Verificar se o clique foi dentro do Botão 3
  if (mouseX > botao3X && mouseX < botao3X + botaoLargura &&
           mouseY > botao3Y && mouseY < botao3Y + botaoAltura) svar=4; {
    println("Botão com imagem 3 foi clicado!");
  if((mouseX>0)&&(mouseX<100)&&(mouseY>0)&&(mouseY<40)) svar=1;
  }
}
