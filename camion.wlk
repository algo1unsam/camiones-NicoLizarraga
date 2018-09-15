import empresaDeTransporte.*
import deposito.*

object camion {
	var camion = []
	var property cargaMaxima
	var property nuevaCarga
	
	method ingresaCarga(algo) = camion.add(algo)
	
	method camion() = camion
	
	method quitaCarga(algo) = camion.removeAll([algo])
	
	method queCargaTiene() = camion
	
	method cargaMaxima() = cargaMaxima
	
	method cargaActual() = (camion.sum({carga => carga.peso()}))
	
	method cargaDisponible() = cargaMaxima - self.cargaActual()
	
	method nuevaCarga() = nuevaCarga
	
	method toleranciaDeCarga() = cargaMaxima >= (self.cargaActual() + self.nuevaCarga())
	
	method cargaMasPeligrosa() = (camion.max({carga => carga.peligrosidad()}))
	
	method circulaXruta() = self.cargaMasPeligrosa().peligrosidad() < ruta.dangerous()
	
	
}
object ruta{
	var property dangerous
	
	method dangerous() = dangerous
	
}
