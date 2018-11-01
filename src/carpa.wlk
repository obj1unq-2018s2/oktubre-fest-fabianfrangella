class Carpa {

	const limiteDeGente
	const marcaQueVende
	const tieneBanda
	var personas = #{}

	constructor(_limiteDeGente, _marcaQueVende, _tieneBanda) {
		limiteDeGente = _limiteDeGente
		marcaQueVende = _marcaQueVende
		tieneBanda = _tieneBanda
	}

	method agregarPersona(persona) {
		if (self.puedeEntrar(persona) && persona.quiereEntrar(self)) {
			personas.add(persona)
		} else {
			if (persona.estaEbrio()) {
				self.error("En pedo no pasas")
			}
			if (self.cantidadPersonas() > limiteDeGente) {
				self.error("La carpa esta llena")
			}
		}
	}

	method puedeEntrar(persona) {
		return self.cantidadPersonas() < self.limiteDeGente() && !persona.estaEbrio()
	}

	method ebriosEmpedernidos() {
		return personas.filter{ persona => persona.esEbrioEmpedernido() }.size()
	}

	method marcaQueVende() = marcaQueVende

	method tieneBanda() = tieneBanda

	method limiteDeGente() = limiteDeGente

	method cantidadPersonas() = personas.size()

	method personas() = personas

}

