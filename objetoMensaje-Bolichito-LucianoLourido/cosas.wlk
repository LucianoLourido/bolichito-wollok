//COLORES -----------------------------------
object rojo {
    method esDeColorFuerte() = true
}
object verde {
    method esDeColorFuerte() = true
}
object celeste {
    method esDeColorFuerte() = false
}
object pardo {
    method esDeColorFuerte() = false
}
object naranja {
    method esDeColorFuerte() = true 
}
//MATERIALES -------------------------------------------------
object cobre {
    method esBrillante() = true
}
object cuero {
    method esBrillante() = false
}
object lino {
    method esBrillante() = false
}
object madera {
    method esBrillante() = false
}
object vidrio {
    method esBrillante() = true
}

//COSAS-------------------------------------------


object remera {
 method peso() = 800
 method color() = rojo
 method material() = lino
 method esDeColorFuerte() = self.color().esDeColorFuerte()
 method esDeMaterialQueBrilla() = self.material().esBrillante() 
}


object pelota {
 method peso() = 1300
 method color() = pardo
 method material() = cuero
 method esDeColorFuerte() = self.color().esDeColorFuerte()
 method esDeMaterialQueBrilla() =  self.material().esBrillante()
}


object biblioteca {
 method peso() = 8000
 method color() = verde
 method material() = madera
 method esDeColorFuerte() = self.color().esDeColorFuerte()
 method esDeMaterialQueBrilla() = self.material().esBrillante()
}


object munieco {
    var peso = 0
    method peso() = peso
    method cambiarPeso(unPeso) {
    peso = unPeso
    }
    method color() = celeste
    method material() = vidrio
    method esDeColorFuerte() = self.color().esDeColorFuerte()
    method esDeMaterialQueBrilla() = self.material().esBrillante()
}


object placa {
 var peso = 0
 var color = rojo
 method peso() = peso
 method cambiarPeso(unPeso) {
    peso = unPeso
    }
 method color() = color
  method cambiarColor(unColor) {
    color = unColor
  } 
 method material() = cobre 
 method esDeColorFuerte() = self.color().esDeColorFuerte()
 method esDeMaterialQueBrilla() = self.material().esBrillante()
}

//Mas cosas Agregadas: 

object arito{
    method peso() = 180
    method color() = celeste
    method material() =  cobre
    method esDeColorFuerte() = self.color().esDeColorFuerte()
    method esDeMaterialQueBrilla() = self.material().esBrillante()
}

object banquito{
    var color = naranja 
    method peso() = 1700
    method color() = color
    method cambiarColor(unColor) {
    color = unColor
  } 
    method material() = madera
    method esDeColorFuerte() = self.color().esDeColorFuerte()
    method esDeMaterialQueBrilla() = self.material().esBrillante()
}

object cajita{
    var objetoAdentro = remera
    method guardarAdentro(unObjeto) {
      objetoAdentro = unObjeto
    }
    method peso() = 400 + objetoAdentro.peso()
    method color() = rojo
    method material() = cobre
    method esDeColorFuerte() = self.color().esDeColorFuerte()
    method esDeMaterialQueBrilla() = self.material().esBrillante()
}

