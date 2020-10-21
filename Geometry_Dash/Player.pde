void simulate() {
  ay = .90  ;
  vy+=ay;
  py+=vy;
  if (py>height*3/4) { 
    py=height*3/4; 
    vy=0; 
    ay=0;
  }
  if( py>height*3/4 ){
    py = -100;
    vy = 17;
  }
}

void spawnPlayer(){
  fill(255,255,255);
  rect(px,py-length,length,length);
}

void keyPressed(){
  if( keyCode == UP ){
    if(py==height*3/4){
      vy = -17;
    }
  }
}
