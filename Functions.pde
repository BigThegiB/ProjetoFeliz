// Página para funções globais, que são uteis para todos e imports
import java.util.ArrayList;
import java.util.Arrays;
import processing.video.*;//importa a biblioteca de videos

boolean MouseClick(float MouseX1, float MouseX2, float MouseY1, float MouseY2) { //Função para detectar posição do click (Usar junto com "if(mousePressed)")
  if ((mouseX >= MouseX1) && (mouseX <= MouseX2) && (mouseY >= MouseY1)&&(mouseY <= MouseY2))
    return true;
  else return false;
}

void TodasAdd() {
  Todas.add(Metal);
  Todas.add(Vidro);
  Todas.add(Papel);
  Todas.add(Plastico);
  Todas.add(Outros);
}
