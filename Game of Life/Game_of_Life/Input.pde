boolean moveUp, moveDown;

void keyPressed() {
  if (key == CODED){

    if (keyCode == UP){
      moveUp = true;
    }
    else if (keyCode == DOWN) {
      moveDown = true;
    }

  }
}

void keyReleased() {
  if (key == CODED){
   
    if (keyCode == UP){
      moveUp = false;
    }
    else if (keyCode == DOWN) {
      moveDown = false;
    }
  }
}


float getAxisRaw(String axis){
  
  if (axis == "Vertical"){
    if(moveUp){
      fps = fps + 1;
    }
    if(moveDown){
      fps = fps - 1;
    }
  }
return 0;
}
