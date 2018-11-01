class Persona {

	const peso
	var jarras = #{}
	const leGustaLaMusica
	const aguante
	constructor(_peso, _leGustaLaMusica, _aguante) {
		peso = _peso
		leGustaLaMusica = _leGustaLaMusica
		aguante = _aguante
	}

	method peso() = peso
	method jarras() = jarras
	method jarrasCompradas() = jarras.size()

	method leGustaLaMusica() = leGustaLaMusica

	method aguante() = aguante

	method litrosConsumidos() = jarras.sum{ jar => jar.litros() }

	method estaEbrio() = self.litrosConsumidos() * peso > aguante

	method comprarJarra(jarra) {
		jarras.add(jarra)
	}

	method leGustaMarca(marca)

	method quiereEntrar(carpa) {
		return self.leGustaMarca(carpa.marcaQueVende()) && leGustaLaMusica == carpa.tieneBanda()
	}

	// si no pongo el not isEmpty() me devuelve true cuando el conjunto esta vacio
	method esEbrioEmpedernido() = !jarras.isEmpty() && jarras.all {jarra=>jarra.litros() > 1} 

	method pais()
	method esPatriota() = jarras.all{jarra=>jarra.marca().origen() == self.pais()}
}

class Aleman inherits Persona {
	
	override method leGustaMarca(marca) = true

	override method quiereEntrar(carpa) {
		return super(carpa) && carpa.cantidadPersonas() % 2 == 0
	}
	
	override method pais() = "Alemania"

}

class Checo inherits Persona {

	override method leGustaMarca(marca) {
		return (marca.graduacionAlcoholica() > 0.08)
	}
	override method pais() = "Republica Checa"
}

class Belga inherits Persona {

	override method leGustaMarca(marca) {
		return (marca.contenidoDeLupulo() > 4)
	}
	
	override method pais() = "Belgica"

}

