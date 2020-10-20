// GENERELLE VARIABLER
int fps_max = 60; // Billeder i sekundet
int menu = 1; //Menu 1 = main menu, menu 2 = gameplay, menu 3 = options, menu 4 = game over, menu 5 = pause menu
int width = 1920; // Bredden på vinduet
int height = 1080; // Højden på vinduet
int speed = 10; // Den generelle hastighed for de fjendlige objekter
int o = 0;

// UI Variabler
float bg_farve = 255; // Baggrunds startfarve
boolean bgT = true; // Boolean til hjælp med farveskiftet

// MAP Variabler
int mapY = height*3/4; // Y-værdien for rektanglen, der former banen

// Spillervariabler
int length = (height+width)/35; // Spillermodellens kantlængde
float px = width/5; // Spillerens X-værdi
float py = mapY; // Spillerens Y-værdi
float vy = 0; // Y-værdien når man hopper
float ay = 0; // Accelerationsværdien mht. tyngdekraft

void setup(){
  fullScreen();
  frameRate(fps_max);
  smooth(); 
  noStroke();
}

void draw(){
  // Den tjekker, hvilken menu vi er i og derfor hvilke funktioner, der skal kaldes
  if(menu==1){
    background(bg_farve,bg_farve,bg_farve);
    bgUpdate(); // Opdaterer farven på vores baggrund.
    menuSetup();
    
  }else if(menu==2){
    drawMap(); // Funktionen findes i MAP
    simulate(); // Funktionen findes i PLAYER
    spawnPlayer(); // Funktionen findes i PLAYER
    if(enemySpawned==false){
      spawnEnemy(100,0,1);
    }
    updateEnemy();
    checkCol();
  }else if(menu==3){
    background(bg_farve,bg_farve,bg_farve);
    bgUpdate();
    menuSetup();
  }else if(menu==4){
    if(o<100){
      o = o+1;
    }
    fill(220,20,60,o);
    rect(0,0,width,height);
    gameOver();
  }
  
  // Fps-tælleren bliver slået til (lige meget hvilken menu man er i - undtagen game over menuen ^^)
  if(menu!=4){
    fpsCounter();
  }
}

// Denne funktion opdaterer farven på baggrunden
void bgUpdate(){
  // Vores betingelser tjekker, om farven skal blive lysere eller mørkere ved hjælp af vores boolean variabel; bgT
  if(bgT == true){ 
    if(bg_farve>180){
      bg_farve = bg_farve-0.5;
    }else{
      bgT = false;
    }
  }else{
    if(bg_farve<220){
      bg_farve = bg_farve+0.5;
    }else{
      bgT = true;
    }
  }
}
