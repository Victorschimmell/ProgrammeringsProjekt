// ENEMY-OBJEKTER
float tw = length*0.8; // Bredden på de fjendtlige spikes
float enemySpike_X; // X-værdien på spiken (nr. 1)
float enemySpike_Y; // Y-værdien på spiken (nr. 1)
float enemySpike_X_1; // X-værdien på spiken (nr. 2)
float enemySpike_Y_1; // Y-værdien på spiken (nr. 2)
boolean enemySpawned = false; // Checker om en spike er genereret
float timer = 0;
float timer_2 = 0;
float randomN;
int latestSpike = 0; //


// FUNKTIONEN DER KALDER EN ENEMY
void spawnEnemy(int enemy_X, int enemy_Y, int enemy){
  enemySpawned = true;
  if(enemy==1){
    enemySpike_X = width+enemy_X;
    enemySpike_Y = height*3/4+enemy_Y;
    triangle(enemySpike_X,enemySpike_Y,enemySpike_X+tw,enemySpike_Y,enemySpike_X+(tw/2),enemySpike_Y-tw);
  }else if(enemy==2){
    randomN = random(tw,400);
    enemySpike_X_1 = width+enemy_X+randomN;
    enemySpike_Y_1 = height*3/4+enemy_Y;
    triangle(enemySpike_X_1,enemySpike_Y_1,enemySpike_X_1+tw,enemySpike_Y_1,enemySpike_X_1+(tw/2),enemySpike_Y_1-tw);
  }
}

void updateEnemy(){
  timer = timer+0.5;
  timer_2 = timer_2+0.5;
  fill(130,130,130);
  triangle(enemySpike_X,enemySpike_Y,enemySpike_X+tw,enemySpike_Y,enemySpike_X+(tw/2),enemySpike_Y-tw);
  enemySpike_X=enemySpike_X-speed; // Spiken's X-værdi rykkes med <speed> hver frame - den rykkes mod spilleren.
  triangle(enemySpike_X_1,enemySpike_Y_1,enemySpike_X_1+tw,enemySpike_Y_1,enemySpike_X_1+(tw/2),enemySpike_Y_1-tw);
  enemySpike_X_1=enemySpike_X_1-speed;
}

void checkCol(){
  // Spike 1
  if(px+length>=enemySpike_X && px+length<=enemySpike_X+tw && py>=enemySpike_Y && py<=enemySpike_Y){
    menu = 4;
  }else if(px>=enemySpike_X && px<=enemySpike_X+tw && py>=enemySpike_Y-tw){
    menu = 4;
  // Spike 2
  }if(px+length>=enemySpike_X_1 && px+length<=enemySpike_X_1+tw && py>=enemySpike_Y_1 && py<=enemySpike_Y_1){
    menu = 4;
  }else if(px>=enemySpike_X_1 && px<=enemySpike_X_1+tw && py>=enemySpike_Y_1-tw){
    menu = 4;
  }
  //if(px+length>=enemySpike_Y && px)
}
