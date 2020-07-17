
var mesas;

function setup() {
  var canvas = createCanvas(600, 600);
  canvas.parent('mesasmap');
  var numMesas = 11;
  mesas = [];
  for(var i=0; i<numMesas; i++){
    mesas.push({
      numero: i+1,
      tipo: i<3 ? "L" : "S",
      libre: true,
      pos: {x:0,y:0}
    });
  }
  
  mesas[0].pos = pos(40,50);
  mesas[1].pos = pos(220,50);
  mesas[2].pos = pos(400,50);
  
  mesas[3].pos = pos(40,200);
  mesas[4].pos = pos(180,200);
  mesas[5].pos = pos(320,200);
  mesas[6].pos = pos(460,200);
  
  mesas[7].pos = pos(40,350);
  mesas[8].pos = pos(180,350);
  mesas[9].pos = pos(320,350);
  mesas[10].pos = pos(460,350);
  
}

function draw() {
  background(150,100,0); 
  
  for (var i = 0; i < mesas.length; i++) {
    drawMesita(mesas[i]);
  }

}

function drawMesita(mesa){
  if(mesa.libre){
    fill(40,225,40);
  } else {
    fill(225,40,40);
  }
  
  if(mesa.tipo=="L"){
    MesaL(mesa.pos.x,mesa.pos.y);
  } else {
    MesaS(mesa.pos.x,mesa.pos.y);
  }
  
   fill(20);
   text(mesa.numero,mesa.pos.x+5,mesa.pos.y+15);
}

function MesaS(posx,posy){
  rect(posx, posy, 80, 80);
}

function MesaL(posx,posy){
  rect(posx, posy, 120, 80);
}

function pos(posx,posy){
  return {x:posx,y:posy};
}

function leerMesas(){
  
  fetch('/servMesasEstado')
  .then(response => response.json())
  .then(lista => {
    for (var i = 0; i < lista.length; i++) {
      mesas[i].libre = lista[i];
    }
  });  
}