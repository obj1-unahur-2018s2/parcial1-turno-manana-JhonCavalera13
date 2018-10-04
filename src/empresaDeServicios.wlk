import profesionales.*

class EmpresaDeServicios {
	var honorarioRef
	var profesionales = #{}
	
	
	method honorariosReferencia(cuanto){
		honorarioRef = cuanto
	}
	method honorariosReferencia(){
		return honorarioRef
	}
	
	method profesionales(cuales){
		profesionales.add(cuales)
	}
	method profesionalesCaros(){
		return profesionales.filter({prof => prof.honorariosPorHora()
	> honorarioRef})
		}
	
	method universidadesFormadoras(){
		
		 return profesionales.map({prof => prof.universidad()}).asSet()
		
	}
	
	method profesionalMasBarato(){
		return profesionales.min({prof => prof.honorariosPorHora()})
	}
	
	method provinciaCubierta(cual){
		return profesionales.any({prof => prof.provinciasDondePuedeTrabajar()})
	}
	
	
	
	
	
}
