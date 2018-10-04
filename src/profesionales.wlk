// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad

	method universidad() { return universidad}
	method universidad(univ) { universidad = univ }
	method provinciasDondePuedeTrabajar(){return universidad.provincia()}
	method honorariosPorHora(){return universidad.honorarios()}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorario
	var provincia = #{}
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provincias(donde){provincia = donde}
	method provinciasDondePuedeTrabajar(){return provincia }
	
	method setHonorario(cuanto){honorario = cuanto}
	method honorariosPorHora(){return honorario}
}

class Universidades{
	var provincia
	var honorario
	method setProvincias(donde){provincia = donde}
	method provincia(){ return provincia}
	method setHonorarios(cuanto){honorario = cuanto}
	method honorarios(){return honorario} 	
}