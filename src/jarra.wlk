class JarraDeCerveza {
	const marca // instancia de clase CervezaRubia,Negra o Roja
	const litros
	
	constructor(_marca,_litros){
		marca = _marca
		litros = _litros
	}
	
	method marca() = marca
	method litros() = litros
	
	method contenidoAlcoholico() = marca.graduacionAlcoholica() * litros
	
}