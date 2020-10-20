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
      rect(0,0,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight);
    }
    //button_2
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      fill(0,0,0, 70);
      rect(0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,buttonHeight+buttonHeight/6,buttonWidth,buttonHeight);
    }
    
    //button_3
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      fill(0,0,0, 70);
      rect(0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,(buttonHeight+buttonHeight/6)*2,buttonWidth,buttonHeight);
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
      rect(0,0,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight);
    }
    popMatrix();
    
    //Button "AUTO-RESTART"
    pushMatrix();
    translate(width/3-buttonWidth/2,height*3/7+buttonHeight/2);
    if(mouseX>width/3-buttonWidth/2 && mouseX<width/3+buttonWidth/2 && mouseY>height*3/7+buttonHeight/2 && mouseY<height*3/7+buttonHeight*1.5){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight);
    }
    popMatrix();
    
    //Button "Back"
    pushMatrix();
    translate(width/2-buttonWidth/2,height*5/7);
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*5/7 && mouseY<height*5/7+buttonHeight){
      fill(0,0,0, 70);
      rect(0,0,buttonWidth,buttonHeight);
    }else{
      fill(0,0,0, 40);
      rect(0,0,buttonWidth,buttonHeight);
    }
    popMatrix();
  }
}

void mousePressed(){
  if(menu==1){
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7 && mouseY<height*3/7+buttonHeight){
      menu = 2;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      menu = 3;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      exit();
    }
  }else if(menu==3){
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*5/7 && mouseY<height*5/7+buttonHeight){
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
  if(o==100){
    fill(255,255,255,0);
    strokeWeight(7);
    stroke(255,255,255);
    rect(width/2+25,height/2,400,125,25,25,25,25);
    rect(width/2-425,height/2,400,125,25,25,25,25);
    noStroke();
  }
}
