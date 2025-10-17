

  
import flota.*

 class Pedido{ 
 var  distancia
 var tiempoMax
 const cantidadPasajeros 
 const coloresIncompatibles = []  // lista de los colores
  method distancia() = distancia
  method determinarDistancia(unaDistancia){
    distancia = unaDistancia
  }
  method tiempoMax() = tiempoMax
  method acelerar(){
    tiempoMax = tiempoMax - 1
  }

  method relajar(){
    tiempoMax = tiempoMax + 1
  }

  method cantidadPasajeros()= cantidadPasajeros
  method coloresIncompatibles()= coloresIncompatibles
  method velocidadMax() = distancia / tiempoMax
  method velocidadRequerida(){
    return distancia / self.velocidadMax()
  }

  method autoPuedeSatisfacerPedido(unAuto){
    return (unAuto.velMax()>= self.velocidadRequerida()+10) and (unAuto.capacidad() > cantidadPasajeros) and (not coloresIncompatibles.conteins(unAuto.color()))
  }

}




