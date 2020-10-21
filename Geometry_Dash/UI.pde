int w = width;
int h = height;

int buttonWidth = width/6;
int buttonHeight = height/10;

void fpsCounter(){
  textSize(12);
  fill(100,100,100);
  text("FPS:  "+frameRate,20,25);
}

void menuSetup(){
  if(menu==1){
    //TITLE
    textSize(75);
    fill(100,100,100);
    textAlign(CENTER);
    text("Geometry Dash",width/2,height*1/5);
    textSize(30);
    text("AF VICTOR S & VICTOR H",width/2,height*1/5+height*1/12);
    
    pushMatrix();
    translate(width/2-buttonWidth/2,height*3/7);
    //button_bg
    //button_1
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }
    //button_2
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      fill(0,0,0, 70);
      rect(0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight,10,10,10,10);
    }else{
      fill(0,0,0, 40);
      rect(0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight,10,10,10,10);
    }
    
    //button_3
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      fill(0,0,0, 70);
      rect(0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight,10,10,10,10);
    }else{
      fill(0,0,0, 40);
      rect(0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight,10,10,10,10);
    }
    
    //button_text
    textSize(50);
    fill(bg_farve,bg_farve,bg_farve);
    text("Options",buttonWidth/2,(buttonHeight/2+buttonHeight/9)+buttonHeight*11/9);
    text("Exit game",buttonWidth/2,(buttonHeight/2+buttonHeight/9)+buttonHeight*19/8);
    text("Play",buttonWidth/2,buttonHeight/2+buttonHeight/9);
    popMatrix();
  
  }else if(menu==3){
    textSize(75);
    fill(100,100,100);
    textAlign(CENTER);
    text("Options",width/2,height*1/5);
    textSize(30);
    
    //Button "FPS"
    pushMatrix();
    translate(width/3-buttonWidth/2,height*3/7-buttonHeight);
    if(mouseX>width/3-buttonWidth/2 && mouseX<width/3+buttonWidth/2 && mouseY>height*3/7-buttonHeight && mouseY<height*3/7){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }
    popMatrix();
    
    //Button "AUTO-RESTART"
    pushMatrix();
    translate(width/3-buttonWidth/2,height*3/7+buttonHeight/2);
    if(mouseX>width/3-buttonWidth/2 && mouseX<width/3+buttonWidth/2 && mouseY>height*3/7+buttonHeight/2 && mouseY<height*3/7+buttonHeight*1.5){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }
    popMatrix();
    
    //Button "Back"
    pushMatrix();
    translate(width/2-buttonWidth/2,height*5/7);
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*5/7 && mouseY<height*5/7+buttonHeight){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight,10,10,10,10);
    }
    popMatrix();
  }
}

// Denne funktion tjekker, om man klikker på knapperne, der er blevet opsat. Det gør den ved at tjekke, om klikket er mellem knappen x1 og x2 samt y1 og y2.
void mousePressed(){
  // Knapperne i main menu
  if(menu==1){
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight){
      menu = 2;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      menu = 3;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      exit();
    }
  // Knapperne i options menu
  }else if(menu==3){
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*5/7 && mouseY<height*5/7+buttonHeight){
      menu = 1;
    }
    if(mouseX>width/3-buttonWidth/2 && mouseX<width/3+buttonWidth/2 && mouseY>height*3/7+buttonHeight/2 && mouseY<height*3/7+buttonHeight*1.5){
      if(autoReplay==false){
        autoReplay = true;
      }else{
        autoReplay = false;
      }
    }
  // Knapperne i game over menu
  }else if(menu==4){
    if(mouseX>width/2+25 && mouseX<width/2+425 && mouseY>height*5/7-235 && mouseY<height*5/7-110){
      resetValues();
      menu = 2;
    }else if(mouseX>width/2-425 && mouseX<width/2-25 && mouseY>height*5/7-235 && mouseY<height*5/7-110){
      menu = 1;
    }
  }
}

void gameOver(){
  textSize(95);
  fill(255,255,255);
  textAlign(CENTER);
  
  text("Game Over",width/2,height*1/5);
  textSize(35);
  
  text("New Highscore!",width/2,height*1/5+height*1/12);
  textSize(25);
  text("25.917",width/2,height*1/5+height*1/8);
  
  //Button 1
  if(mouseX>width/2+25 && mouseX<width/2+425 && mouseY>height*5/7-235 && mouseY<height*5/7-110){
    fill(255,255,255,20);
    rect(width/2+25,height/2,400,125,25,25,25,25);
  }else{
    fill(255,255,255,0);
    rect(width/2+25,height/2,400,125,25,25,25,25);
  }
  if(mouseX>width/2-425 && mouseX<width/2-25 && mouseY>height*5/7-235 && mouseY<height*5/7-110){
    fill(255,255,255,20);
    rect(width/2-425,height/2,400,125,25,25,25,25);
  }else{
    fill(255,255,255,0);
    rect(width/2-425,height/2,400,125,25,25,25,25);
  }
  strokeWeight(7);
  stroke(255,255,255);
  fill(255,255,255);
  textSize(55);
  text("Replay",width/2+225,height/2+height/10-25);
  text("Back to menu",width/2-225,height/2+height/10-25);
  noStroke();
}
