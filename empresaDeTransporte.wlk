import camion.*
import deposito.*
import container.*

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
	// TODO acá te tira un warning porque le falta una inicialización
	var property cantLadrillos
	var pesoXladrillo = 2
	
	method peso() =  cantLadrillos * pesoXladrillo
	
	method peligrosidad() = 2
	
}

object motoneta{
	var motoneta = []
	
	// TODO el else no hace falta, para qué? sería mas correcto que tire un excpetión
	// o false
	// return (algo.peso() <= 100) and (algo.peligrosidad() <= 5)
	method ingresaCarga(algo){
		if ((algo.peso() <= 100) and (algo.peligrosidad() <= 5))
		motoneta.add(algo)
		else
		"La motoneta no tolera la carga"
	}
}

object embalaje{
	var property objetoCubierto = null
	
	method peso() = objetoCubierto.peso()
	
	method peligrosidad() = objetoCubierto.peligrosidad() / 2
}
