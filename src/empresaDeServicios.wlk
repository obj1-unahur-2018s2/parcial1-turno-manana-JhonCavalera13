import profesionales.*

class EmpresaDeServicios {
	var honorarioRef
	var profesionales = #{}
	
	
	method honorariosReferencia(cuanto){honorarioRef = cuanto}
	method honorariosReferencia(){return honorarioRef }
	
	method profecionales(cuales){profesionales.add(cuales)}
	method profecionalesCaros(){return profesionales.filter({prof => prof.honorariosPorHora()
	> honorarioRef})
		}
	
	method universidadesFundadoras(){
		var universidades = #{ }
		universidades = profesionales.asSet({prof => prof.universidad()})
		return universidades	
	}
	
	method profesionalMasBarato(){
		return profesionales.min({prof => prof.honorariosPorHora()})
	}
	
	method provinciaCubierta(cual){
		return profesionales.any({prof => prof.provinciasDondePuedeTrabajar()})
	}
	
	
	
	
	
	
	
}
