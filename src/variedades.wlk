import plantas.*


class SojaTransgenica inherits Soja{
	override method daNuevasSemillas(){
		return false 
	}
	
	override method parcelaEsIdeal(unaParcela){
		return unaParcela.cantidadMaximaQueTolera() == 1
	}
}

class HierbaBuena inherits Menta {
	
	override method espacioQueOcupa(){
		return (altura * 3) * 2
	}
	override method parcelaEsIdeal(unaParcela){
		return unaParcela.superficie()>6
	}
}
