class Cerveza {
	const contLupulo // por litro
	const pais
		
	constructor(_contLupulo,_pais){
		contLupulo = _contLupulo
		pais = _pais
	}
	
	method contenidoDeLupulo() = contLupulo
	method origen() = pais
	method graduacionAlcoholica() 
}

class CervezaRubia inherits Cerveza{
	var graduacion
	override method graduacionAlcoholica() = graduacion
}

class CervezaNegra inherits Cerveza{
	override method graduacionAlcoholica() = graduacionReglamentaria.graduacion().min(contLupulo*2)
}

class CervezaRoja inherits Cerveza{
	override method graduacionAlcoholica() = graduacionReglamentaria.graduacion().min(contLupulo*2) * 1.25
}

object graduacionReglamentaria{
	var graduacion = 0.06
	
	method cambiarGraduacion(grad){
		graduacion = grad
	}
	
	method graduacion() = graduacion 
}