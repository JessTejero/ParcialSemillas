import parcelas.*
import plantas.*
import variedades.*


object inta {
	
	var property parcelas = #{}
	
	method promedioDePlantas(){
		return parcelas.sum({ parcela => parcela.cantidadDePlantas()}) / parcelas.size()
	}
	
	method parcelaMasAutosustentable(){
		return parcelas.map({parcela => parcela.cantidadDePlantas() > 4}) and self.mayorPorcentajeDeAsociadasBien() 
	}
	
	method mayorPorcentajeDeAsociadasBien(){
		return parcelas.max({ parcela => parcela.totalAsociados()})
	}
}