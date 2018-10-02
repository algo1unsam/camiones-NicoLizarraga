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
		
	// TODO por qué este método es diferente del anterior?
	// la idea es que uno solo resuelva las cosas cosas, tanto si recibe una carga, o mas de una
	// siempre tiene que llegar por parámetro, sino estás teniendo que modificar el estado del objeto
	// cada vez que llega algo para el depósito 
	method llegaCargaCompuesta(){
		deposito.addAll(cargamento)
	}
	method llenarCamion(){
		deposito.forEach({carga => camion.ingresaCarga(carga)})
	}	
	
}