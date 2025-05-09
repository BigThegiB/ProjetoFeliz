// Página para funções globais, que são uteis para todos e imports
import java.util.ArrayList;
import java.util.Arrays;

boolean MouseClick(int MouseX1, int MouseX2, int MouseY1, int MouseY2) { //Função para detectar posição do click (Usar junto com "if(mousePressed)")
  if ((mouseX >= MouseX1) && (mouseX <= MouseX2) && (mouseY >= MouseY1)&&(mouseY <= MouseY2))
    return true;
  else return false;
}
