import parcelas.*
import plantas.*

class ParcelaEcologica inherits Parcela{
	
	method seAsociaBien(unaPlanta){
        return not self.tieneComplicaciones() or unaPlanta.parcelaEsIdeal(self)
    }
    
    method totalAsociados(){
    	return plantas.sum({ planta => planta})	
    }
}


class ParcelaIndustrial inherits Parcela{
	
	method seAsociaBien(unaPlanta){
        return self.cantidadDePlantas() > 2 or unaPlanta.esFuerte()
    }
    
    method totalAsociados(){
    	return plantas.sum({ planta => planta})	
    }
	
}