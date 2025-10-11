

  class ChevroletCorsa{
    var property color
    method capacidad() = 4
    method velMax()=150
    method peso()=1300
    method color()= color
}

class  RenaultKwid{
    var property tieneTuboGas
    method capacidad(){
       return if (tieneTuboGas)  3  else 4
       }
       
    
    method velMax(){
         return if (tieneTuboGas)  110  else 120
    }
    method peso(){
         return if (tieneTuboGas)  1350  else 1200
    }

    method color() = "azul"

}

object trafic{
    var interior = comodo
    var motor = pulenta
    method cambiarInterior(unInterior) {
      interior = unInterior  
     } 
     method interior() {
       return interior
      }

      method cambiarMotor(unMotor){
        motor = unMotor
      }

     method motor() {
       return motor
     }
}
object motor{
  

}
object interior{
  

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

object baraton{   
    method velMax() = 80
    method peso() = 500
}

