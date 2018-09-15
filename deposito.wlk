import empresaDeTransporte.*
import camion.*

object deposito {
	var cargamento = []
	var deposito = []
	
	method cargamento(algo){
		cargamento.add(algo)
	}
	method llegaCarga(){
		deposito.addAll(cargamento)
	}
	method llenarCamion(){
		deposito.forEach({carga => camion.ingresaCarga(carga)})
	}	
	
}