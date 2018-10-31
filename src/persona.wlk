class Persona {
	const peso
	var jarras = #{}
	const leGustaLaMusica
	const aguante
	
	constructor(_peso,_leGustaLaMusica,_aguante){
		peso = _peso
		leGustaLaMusica = _leGustaLaMusica
		aguante = _aguante
	}
	
	method peso() = peso
	method jarrasCompradas() = jarras.size()
	method leGustaLaMusica() = leGustaLaMusica
	method aguante() = aguante
	method litrosConsumidos() = jarras.sum{jar => jar.litros()}
	method estaEbrio() = self.litrosConsumidos() * peso > aguante
	method comprarJarra(jarra){
		jarras.add(jarra)
	}
	method leGustaMarca(marca)
	
	
}

class Aleman inherits Persona {
	override method leGustaMarca(marca) = true
}

class Checo inherits Persona {
	override method leGustaMarca(marca){
		return (marca.graduacionAlcoholica() > 8)
	}
}

class Belga inherits Persona {
	override method leGustaMarca(marca){
		return (marca.contenidoDeLupulo() > 4)	
	}
}