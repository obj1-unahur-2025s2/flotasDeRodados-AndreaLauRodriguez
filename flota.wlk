

  class Corsa{
    var color = rojo
    method capacidad() = 4
    method velMax()=150
    method peso()=1300
    method color()= color
    method cambiarColor(unColor){
      color = unColor
    }
}

class  Kwid{
    var tieneTuboGas = true
    method capacidad(){
       return if (tieneTuboGas)  3  else 4
       }
    method velMax(){
         return if (tieneTuboGas)  110  else 120
    }
    method peso(){
         return if (tieneTuboGas)  1350  else 1200
    }
    method ponerTuboGas(){
      tieneTuboGas = true
    }

    method sacarTuboGas(){
      tieneTuboGas = false
    }
    method color() = azul

}

object trafic{
    var interior = comodo
    var motor = pulenta

    method cambiarInterior(unInterior) {
      interior = unInterior  
     } 
     
      method cambiarMotor(unMotor){
        motor = unMotor
      }

      method capacidad(){
        return interior.capacidad()
      }
      method velMax(){
        return motor.velMax()
      }
      method peso(){
        return 4000 + interior.peso() + motor.peso()
      }
       method color() = blanco
}



object comodo{
    method capacidad()= 5 
    method peso() = 700
       
}

object popular{
    method capacidad()= 12  
    method peso() = 1200
       
}


object pulenta{   
    method velMax() = 130
    method peso() = 800
}

object bataton{   
    method velMax() = 80
    method peso() = 500
}

class AutoEspecial {
  var property color = rojo
  const property  peso
  const property capacidad
  const property velMax
}


class Dependencia{
  var cantidadEmpleados = 50
   const flotaDeRodados = []
   method flotaDeRodados() = flotaDeRodados
   method agregarAFlota(unRodado){
    flotaDeRodados.add(unRodado)
   }
   method quitarDeFlota(unRodado){
    flotaDeRodados.remove(unRodado)
   }
   method cantidadEmpleados() = cantidadEmpleados
   method incorporarEmpleados(unaCantidad){
      cantidadEmpleados = cantidadEmpleados + unaCantidad
   }
   method despedirEmpleados (unaCantidad){
       cantidadEmpleados = cantidadEmpleados - unaCantidad
   }

   method pesoTotalFlota(){
    return flotaDeRodados.sum({c =>c.peso()})
   }
   

method puedenIrAlMenosACien(unaFlota){
    return unaFlota.forEach({c => c.velMax() >= 100})
}

method estaBienEquipada(){
  return flotaDeRodados.size() >=3 and  self.puedenIrAlMenosACien(flotaDeRodados)
}

method todosLosDeColor(unColor){
  return flotaDeRodados.filter({c => c.color() == unColor})
}
method capacidadTotalEnColor(unColor){
  return self.todosLosDeColor(unColor).sum({c => c.capacidad()})
}


method elMasRapido(){
  return flotaDeRodados.max({c => c.velMax()})
}

method colorDelRodadoMasRapido(){
  return self.elMasRapido().color()
}

/*
`capacidadFaltante()`, que es el resultado de restar, de la cantidad 
de empleados, la capacidad sumada de los vehículos de la flota. 

*/
method capacidadFlota(){
  return flotaDeRodados.sum({c => c.capacidad()})
}

method capacidadFaltante(){
  return 0.max(cantidadEmpleados - self.capacidadFlota())
}
/*
`esGrande()`, la condición es que la dependencia tenga al menos
 40 empleados y 5 rodados.

*/

method esGrande(){
  return cantidadEmpleados >= 40 and flotaDeRodados.size() >= 5
}


}

object rojo{
  
}

object azul{
  
}

object blanco{
  
}

object verde{
  
}

object negro{
  
}

object beige{
  
}

/*
Etapa 3: registro de los pedidos de cada dependencia
Agregar a cada dependencia un registro de los pedidos que hace. Se pueden agregar y quitar pedidos.

Agregar lo que haga falta al modelo para que se pueda conocer, para una dependencia:

el total de pasajeros en los pedidos que tiene registrados
cuáles de los pedidos que tiene registrados no puede ser satisfecho por ninguno de los autos afectados a la dependencia.
dado un color, si es cierto que todos los pedidos registrados lo tienen como color incompatible.
También debe ser posible, enviando un mensaje al objeto que representa a una dependencia, relajar todos los pedidos que tenga registrados.

*/





