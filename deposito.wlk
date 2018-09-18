import empresaDeTransporte.*
import camion.*
import container.*


object deposito {
	var deposito = []
	var property cargamento = [bumblebee, knightRider, paqueteDeLadrillos]
	var property motoneta = []
	
	method llegaCargaSimple(algo){
		deposito.add(algo)
	}
		
	method llegaCargaCompuesta(){
		deposito.addAll(cargamento)
	}
	method llenarCamion(){
		deposito.forEach({carga => camion.ingresaCarga(carga)})
	}	
	
}