//importo una librería, es decir, un conjunto de clases
import processing.sound.*;

// 1) declaro instancia del sonido
// clase objeto;
//PImage miImagen;
SoundFile miSonido;

void setup(){
  size( 800, 400 );
  
  // 2) carga del sonido en el objeto
  // nombreObjeto = loadImage( "img.png" ); 
  //miImagen = loadImage( "img.png" );
  miSonido = new SoundFile( this, "vibraphon.aiff" );
  
  // 3) reproduzco mi sonido
  // nombreObjeto.metodo();
  // image( miImagen, x, y );
  
  // Reproduce el archivo en modo repetición (loop)
  miSonido.loop();
  // Reproduce el archivo una sola vez
  //miSonido.play();  
}

void draw(){
  background( 200 );
  
  //METODO para modular la amplitud (volumen): 0 a 1
  float a = map( mouseY, 0, height, 1, 0 );
  miSonido.amp( a );
  
  //METODO para modular el paneo: -1 a 1
  float p = map( mouseX, 0,width, -1, 1 );
  miSonido.pan( p );
  
  
  //dibujo una cruz
  stroke( 200, 0, 0 );
  line( mouseX, 0, mouseX, height );
  line( 0, mouseY, width, mouseY );
}

void keyPressed(){
  if( key == 'a' && !miSonido.isPlaying() )
    miSonido.play();
  if( key == 'q' && !miSonido.isPlaying() )
    miSonido.loop();
  if( key == 's' )
    miSonido.stop();
  if( key == 'd' )
    miSonido.pause();
}
