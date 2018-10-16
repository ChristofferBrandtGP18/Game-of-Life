boolean moveLeft, moveRight, moveUp, moveDown, shoot;

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
      frameRate = frameRate + 1;
    }
    if(moveDown){
      frameRate = frameRate - 1;
    }
  }
return 0;
}
