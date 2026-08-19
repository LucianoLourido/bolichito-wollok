import cosas.*
import personas.*

object bolichito {
  var objetoEnVidriera = remera
  var objetoEnMostrador = pelota
  method ponerEnVidriera(unObjeto){
    objetoEnVidriera = unObjeto
  }
  method ponerEnMostrador(unObjeto){
    objetoEnMostrador = unObjeto
  } 
  
  method objetoEnVidriera() = objetoEnVidriera
  method objetoEnMostrador() = objetoEnMostrador

  method esBrillante() = objetoEnVidriera.esDeMaterialQueBrilla() and objetoEnMostrador.esDeMaterialQueBrilla()

  method esMonocromatico() = objetoEnVidriera.color() == objetoEnMostrador.color() 

  method estaEquilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()

  method tieneAlgoExhibidoDe(unColor) = objetoEnVidriera.color() == unColor or objetoEnMostrador.color() == unColor

  method puedeMejorar() = !self.estaEquilibrado() or self.esMonocromatico()

  method puedeOfrecerleAlgoA(persona) = persona.leGusta(objetoEnVidriera) or persona.leGusta(objetoEnMostrador) 
}

