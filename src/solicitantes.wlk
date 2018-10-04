import profesionales.*
import empresaDeServicios.*

class Solicitantes {
	
	var provincia
	
	method provincia(cual){provincia = cual }
	method queProvinciaEs(){return provincia}
	
	method puedeSerAtendida(qien){ qien.provinciasDondePuedeTrabajar().contains(provincia)
		return true
	}
}
