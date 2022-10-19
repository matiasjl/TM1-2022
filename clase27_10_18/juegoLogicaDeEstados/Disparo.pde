class Disparo {
  float diametro = 40;
  int cantidadDeParticulas = 20;
  int maximoDeParticulas = 100;
  int particulasActivas = 0;
  float [][] initX = new float [maximoDeParticulas][cantidadDeParticulas]; 
  float [][] initY = new float [maximoDeParticulas][cantidadDeParticulas]; 
  float [][] partX = new float [maximoDeParticulas][cantidadDeParticulas]; 
  float [][] partY = new float [maximoDeParticulas][cantidadDeParticulas]; 
  float [][] vel_X = new float [maximoDeParticulas][cantidadDeParticulas];
  float [][] vel_Y = new float [maximoDeParticulas][cantidadDeParticulas];
  boolean [][] particulasVivas = new boolean[maximoDeParticulas][cantidadDeParticulas];
  int tiempoDeVida [][] = new int[maximoDeParticulas][cantidadDeParticulas];
  float miraAngulo [][] = new float[maximoDeParticulas][cantidadDeParticulas];

  void nacer(int personajeX, int personajeY, float angulo) {

    pushStyle();
    if (this.particulasActivas < 20d) {
      this.particulasActivas++;
    }

    for (int j = 0; j < this.particulasActivas; j++) {
      for (int i = 0; i < this.cantidadDeParticulas; i++) {

        if (this.particulasVivas[j][i] == false) {

          this.tiempoDeVida[j][i] = 0;
          this.initX[j][i] = personajeX;
          this.initY[j][i] = personajeY;

          this.partX[j][i] = this.initX[j][i];
          this.partY[j][i] = this.initY[j][i];
          this.miraAngulo[j][i] = angulo + random(-9, 9);
          this.particulasVivas[j][i] = true;
        }
      }
    }

    popStyle();
  }


  void viviendo() {
  
    for (int j = 0; j < this.particulasActivas; j++) {
      for (int i = 0; i < this.cantidadDeParticulas; i++) {

        if (this.particulasVivas[j][i] == true) {

          this.tiempoDeVida[j][i]++;
          this.vel_X[j][i] = -3 * cos(radians(this.miraAngulo[j][i]));
          this.vel_Y[j][i] = -3 * sin(radians(this.miraAngulo[j][i]));
          this.partX[j][i] +=  this.vel_X[j][i];
          this.partY[j][i] +=  this.vel_Y[j][i];
          circle( this.partX[j][i], this.partY[j][i], this.diametro/2);
        } 
        if (this.tiempoDeVida[j][i] >= 100) {

          this.particulasVivas[j][i] = false;
          this.tiempoDeVida[j][i] = 0;
        }
      }
    }
  }
}
