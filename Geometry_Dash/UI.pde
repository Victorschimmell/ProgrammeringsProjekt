int w = width;
int h = height;

int buttonWidth = width/6;
int buttonHeight = height/10;

color vol = color(0,0,0, 40); // Normal farve på de ikke aktiverede volume-knapper
color vol_h = color(0,0,0, 70); // Normal farve for hover af de ikke aktiverede volume-knapper
color vol_a = color(60, 60, 60, 90); // Farve for de aktiverede volume-knapper
color vol_ha = color(130, 130, 130, 90); // Farve for hover af de aktiverede volume-knapper

int uX = width/2+200;
int uY = height*3/7-80;

void fpsCounter(){
  textSize(12);
  fill(100,100,100);
  text("FPS:  "+frameRate,20,25);
}

void menuSetup(){
  // MAIN MENU
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
  
  // SETTINGS MENU
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
    
    //Button "Volume"
    pushMatrix();
    textSize(40);
    fill(100,100,100);
    text("Volume",width/2+165,height*3/7-80);
    translate(width/2+200,height*3/7-80);
    
    // VISUELLE
    if(volume==0.25){
      //5
      if(mouseX>uX+65 && mouseX<uX+125 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(70,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(70,45,50,10,5,5,5,5);
      }
      //4
      if(mouseX>uX && mouseX<uX+65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(0,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(5,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(0,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(5,45,50,10,5,5,5,5);
      }
      //3
      if(mouseX>uX-65 && mouseX<uX && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-60,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-60,45,50,10,5,5,5,5);
      }
      //2
      if(mouseX>uX-130 && mouseX<uX-65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }
      //1
      if(mouseX>uX-195 && mouseX<uX-130 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }
    }else if(volume==0.2){
      if(mouseX>uX+65 && mouseX<uX+125 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(65,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(65,20,60,60,5,5,5,5);
      }
      //4
      if(mouseX>uX && mouseX<uX+65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(0,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(5,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(0,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(5,45,50,10,5,5,5,5);
      }
      //3
      if(mouseX>uX-65 && mouseX<uX && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-60,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-60,45,50,10,5,5,5,5);
      }
      //2
      if(mouseX>uX-130 && mouseX<uX-65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }
      //1
      if(mouseX>uX-195 && mouseX<uX-130 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }
    }else if(volume==0.15){
      if(mouseX>uX+65 && mouseX<uX+125 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(65,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(65,20,60,60,5,5,5,5);
      }
      //4
      if(mouseX>uX && mouseX<uX+65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(0,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(0,20,60,60,5,5,5,5);
      }
      //3
      if(mouseX>uX-65 && mouseX<uX && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-60,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-65,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-60,45,50,10,5,5,5,5);
      }
      //2
      if(mouseX>uX-130 && mouseX<uX-65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }
      //1
      if(mouseX>uX-195 && mouseX<uX-130 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }
    }else if(volume==0.1){
      if(mouseX>uX+65 && mouseX<uX+125 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(65,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(65,20,60,60,5,5,5,5);
      }
      //4
      if(mouseX>uX && mouseX<uX+65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(0,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(0,20,60,60,5,5,5,5);
      }
      //3
      if(mouseX>uX-65 && mouseX<uX && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-65,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-65,20,60,60,5,5,5,5);
      }
      //2
      if(mouseX>uX-130 && mouseX<uX-65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-130,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-125,45,50,10,5,5,5,5);
      }
      //1
      if(mouseX>uX-195 && mouseX<uX-130 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }
    }else if(volume==0.05){
      if(mouseX>uX+65 && mouseX<uX+125 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(65,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(65,20,60,60,5,5,5,5);
      }
      //4
      if(mouseX>uX && mouseX<uX+65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(0,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(0,20,60,60,5,5,5,5);
      }
      //3
      if(mouseX>uX-65 && mouseX<uX && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-65,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-65,20,60,60,5,5,5,5);
      }
      //2
      if(mouseX>uX-130 && mouseX<uX-65 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-130,20,60,60,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-130,20,60,60,5,5,5,5);
      }
      //1
      if(mouseX>uX-195 && mouseX<uX-130 && mouseY>uY+20 && mouseY<uY+80){
        fill(vol_ha);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }else{
        fill(vol_a);
        rect(-195,20,60,60,5,5,5,5);
        fill(200,200,200);
        rect(-190,45,50,10,5,5,5,5);
      }
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
      button.play();
      menu = 2;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+2*buttonHeight){
      button.play();
      menu = 3;
    }else if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*3/7+buttonHeight/6+2*buttonHeight+buttonHeight/6 && mouseY<height*3/7+buttonHeight/6+buttonHeight*3+buttonHeight/6){
      button.play();
      exit();
    }
  // Knapperne i options menu
  }else if(menu==3){
    if(mouseX>width/2-buttonWidth/2 && mouseX<width/2+buttonWidth/2 && mouseY>height*5/7 && mouseY<height*5/7+buttonHeight){
      button.play();
      menu = 1;
    }
    if(mouseX>width/3-buttonWidth/2 && mouseX<width/3+buttonWidth/2 && mouseY>height*3/7+buttonHeight/2 && mouseY<height*3/7+buttonHeight*1.5){
      if(autoReplay==false){
        button.play();
        autoReplay = true;
      }else{
        button.play();
        autoReplay = false;
      }
    }if(mouseX>uX+65 && mouseX<uX+125 && mouseY>uY+20 && mouseY<uY+80){
      button.play();
      volume = 0.25;
      menuSound.amp(volume);
    }else if(mouseX>uX && mouseX<uX+65 && mouseY>uY+20 && mouseY<uY+80){
      button.play();
      volume = 0.2;
      menuSound.amp(volume);
    }else if(mouseX>uX-65 && mouseX<uX && mouseY>uY+20 && mouseY<uY+80){
      button.play();
      volume = 0.15;
      menuSound.amp(volume);
    }else if(mouseX>uX-130 && mouseX<uX-65 && mouseY>uY+20 && mouseY<uY+80){
      button.play();
      volume = 0.1;
      menuSound.amp(volume);
    }else if(mouseX>uX-195 && mouseX<uX-130 && mouseY>uY+20 && mouseY<uY+80){
      button.play();
      volume = 0.05;
      menuSound.amp(volume);
    }
    
  // Knapperne i game over menu
  }else if(menu==4){
    if(mouseX>width/2+25 && mouseX<width/2+425 && mouseY>height*5/7-235 && mouseY<height*5/7-110){
      button.play();
      resetValues();
      menu = 2;
    }else if(mouseX>width/2-425 && mouseX<width/2-25 && mouseY>height*5/7-235 && mouseY<height*5/7-110){
      button.play();
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
  text(finalScore,width/2,height*1/5+height*1/8);
  
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
