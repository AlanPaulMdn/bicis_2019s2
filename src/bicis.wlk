import accesorios.*

class Bici {
	var property rodado
	var property largo
	var property marca
	var property accesorios
	
	method altura() = rodado*2.5 +15
	method velCrucero()= if (largo>120) {rodado+6} else {rodado +2 }
	method carga()= accesorios.sum({ acce => acce.carga() })
	method peso()= rodado/2 + accesorios.sum({ acce => acce.peso() })	
	method tieneLuz()= accesorios.any({ acce => acce.esLuminoso() })
	
	method cantLivianos()= accesorios.count({ acce => acce.peso()< 1 })
}