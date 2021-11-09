class Parcela {
	var property ancho
	var property largo
	var property horasDeSol
	var property plantas = []
	
	method superficie() {
		return ancho * largo
	}
	
	method cantidadMaximaQueTolera(){
		if(ancho> largo) return self.superficie()/5
		else return self.superficie()/3 + largo
	}
	
	method tieneComplicaciones(){
		return plantas.any({planta => planta.horasDeSol() < self.horasDeSol() })
	}
	
	method agregarPlanta(unaPlanta) {
		plantas.add(unaPlanta)
	}
	
	method siTieneCupo(){
		return plantas.size() -1 < self .cantidadMaximaQueTolera()
	}
	
	method diferenciaHoraDeSol(unaPlanta){
		return horasDeSol - unaPlanta.horasDeSol() > 2
	}
	
	method plantarUnaPlanta(unaPlanta){
		if (not self.siTieneCupo()) self.agregarPlanta(unaPlanta)
		else if(not self.diferenciaHoraDeSol(unaPlanta)) self.agregarPlanta(unaPlanta)
		else self.error("No cumple los requisitos para plantar")
	}
	
	method mayorAltura(medida){
		return plantas.contains({planta => planta.altura() > medida})
	}
	
	method cantidadDePlantas(){
		return plantas.size()
	}
	
	
	
}