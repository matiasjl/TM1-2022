// createFont(), loadImage(), pantallas/estados

PFont miTipo;
PImage miImag;

float tam;
boolean agrandarImagen;

void setup() {
  size(400, 400 );

  //FUENTE
  //camino 1: crear fuente desde el menu herramienta y cargarla desde la carpeta data con loadFont()
  miTipo = loadFont( "Dialog-60.vlw" );
  //camino 2: crear la fuente con la funcion creatFont();
  miTipo = createFont( "EncodeSans-Black.ttf", 30 );
  textFont( miTipo );  //elijo la variable que contiene la fuente creada
  textSize( 28 );

  //IMAGEN
  miImag = loadImage( "avatar.PNG" );  //OJO es CaseSensitive (mayusculas/minusculas) incluso en la extención
  //miImag = loadImage( "avatar.PNG.png" );  //puede pasar que maaldito windows no muestre la extension, probar ponerla así
  imageMode( CENTER );  //donde parte la imagen para ubicarse en sus coordenadas
  //propiedades de la magen
  tam = 100;
  agrandarImagen = false;
}

void draw() {
  background( 128 );

  //LOGICA DE ESTADOS PARA DIBUJAR DISTINTAS PANTALLAS

  if ( millis() < 3000 ) {  //pantalla 1: solo texto, entre 0 y 3 seg 
    background( 200, 0, 0 );
    text( "fuente creada por funcion", 20, 100 );
    //
  } else if ( millis() > 3000 && millis() < 6000 ) {  //pantalla 2, txt e img, entre 3 y 6
    background( 0, 200, 0 );
    text( "fuente creada por funcion", 20, 100 );
    image( miImag, width/2, height/2, tam, tam );
    //
  } else if ( millis() > 6000 && millis() < 9000 ) {  //pantalla 3: solo img, entre 6 y 9
    background( 0, 0, 200 );
    image( miImag, width/2, height/2, tam, tam );
  }
  
  if( agrandarImagen ){
    tam++;  //aca seestablecería la velocidad, en este caso es 1;
  }
  
}

void mousePressed(){
  //agrandarImagen = true;
  agrandarImagen = !agrandarImagen;
}
