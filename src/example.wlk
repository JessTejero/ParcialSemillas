



class Planta {
	var property anoDeObtencion
	var property altura
	var property horasDeSolQueTolera = 0
	
	method horasDeSol(){
		
		return self.horasDeSolQueTolera()
	}
	
	method esFuerte(){
		return self.horasDeSolQueTolera() > 10
	}
	
	method daNuevasSemillas(){
		return self.esFuerte()
	}
	
	
}



class Menta inherits Planta {
	
	method espacioQueOcupa(){
		return altura * 3
	}
	
	override method daNuevasSemillas(){
		return super() or altura > 0.4
	}
	
	override method horasDeSolQueTolera(){
		return 6
	}
}


class Soja inherits Planta {
	method espacioQueOcupa(){
		return altura/2
	}
	
	override method daNuevasSemillas(){
		return super() or (anoDeObtencion > 2007 and altura > 1)
	}
	
	override method horasDeSolQueTolera(){
		if (altura < 0.5) return 6
		else if (altura.between(0.5, 1)) return 7
		else return 9 
		
	}
}

class Quinoa inherits Planta {
	
	method espacioQueOcupa(){
		return 0.5
	}
	
	override method daNuevasSemillas(){
		return super() or anoDeObtencion < 2005
	}
	
}

