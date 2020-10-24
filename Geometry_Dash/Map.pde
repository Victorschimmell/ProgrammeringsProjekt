void drawMap(){
  fill(bg_farve,bg_farve,bg_farve);
  rect(0,0,width,mapY);
  bgUpdate();
  
  //MAP_LAYER
  fill(130,130,130);
  rect(0,mapY,width,height);
  
  //Enemies
  if(timer==110){
    timer=0;
    spawnEnemy(0,0,1);
  }
  int randomN_rounded = round(randomN/10);
  if(timer_2==110+(randomN_rounded)){
    timer_2=0;
    spawnEnemy(0,0,2);
  }
}
