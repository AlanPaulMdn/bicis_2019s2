import accesorios.*

class Bici {
	const property rodado
	const property largo
	const property marca
	const property accesorios = []
	
	method altura() = rodado*2.5 +15
	method velCrucero()= rodado + if (largo>120) 6 else 2 
	method carga()= accesorios.sum({ acce => acce.carga() })
	method peso()= rodado/2 + accesorios.sum({ acce => acce.peso() })	
	method tieneLuz()= accesorios.any({ acce => acce.esLuminoso() })
	
	method cantLivianos()= accesorios.count({ acce => acce.peso()< 1 })
}