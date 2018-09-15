import camion.*
import empresaDeTransporte.*
import deposito.*

object knightRider {
	
	method peso() = 500
	
	method peligrosidad() = 10
}

object bumblebee{
	var property transformer = null
	 
	method peso() = 800
	
	method peligrosidad() = transformer.peligrosidad()
}

object auto{
	method peligrosidad() = 15
}

object robot{
	method peligrosidad() = 30
}

object paqueteDeLadrillos{
	var property cantLadrillos
	var pesoXladrillo = 2
	
	method peso() =  cantLadrillos * pesoXladrillo
	
	method peligrosidad() = 2
	
}

object motoneta{
	var motoneta = []
	
	method ingresaCarga(algo){
		if ((algo.peso() <= 100) and (algo.peligrosidad() < 5))
		motoneta.add(algo)
		else
		"La motoneta no tolera la carga"
	}
	
	
	
}


