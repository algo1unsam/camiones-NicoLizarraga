import empresaDeTransporte.*
import deposito.*

object camion {
	var camion = []
	var property cargaMaxima
	// TODO borrar
	var property nuevaCarga
	
	// TODO en que momento 
	method ingresaCarga(algo) = camion.add(algo)
	
	method camion() = camion
	
	method quitaCarga(algo) = camion.removeAll([algo])
	
	method queCargaTiene(algo) = camion.contains(algo) //MODIFICADO
	
	// TODO está marcado como property así que esto esta demás
	method cargaMaxima() = cargaMaxima
	
	method cargaActual() = (camion.sum({carga => carga.peso()}))
	
	method cargaDisponible() = cargaMaxima - self.cargaActual()
	
	// TODO ya está la property
	method nuevaCarga() = nuevaCarga
	
	method toleranciaDeCarga() = cargaMaxima >= (self.cargaActual() + self.nuevaCarga())
	
	// TODO los () de mas afuera no hacen falta
	method cargaMasPeligrosa() = (camion.max({carga => carga.peligrosidad()}))
	
	method circulaXruta() = self.cargaMasPeligrosa().peligrosidad() < ruta.dangerous()
	
	// TODO este método creo que no hace falta, si lo único que hace es llamar a otro
	// no suma nada ni hace nada que el otro no haga
	method modificaCarga(algo) = self.quitaCarga(algo)
	
}

object ruta{
	// TODO acá de nuevo, si tenes la property, no hace falta el método
	var property dangerous
	
	method dangerous() = dangerous
	
}
