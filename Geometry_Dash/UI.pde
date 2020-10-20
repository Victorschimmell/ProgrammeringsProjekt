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
  }
}
