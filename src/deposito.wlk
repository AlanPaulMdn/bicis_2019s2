class Deposito {
	const property bicis = []
	
	method bicisRapidas()= bicis.filter({bici => bici.velCrucero() > 25 })
	method marcas()= bicis.map({bici => bici.marca()}).asSet()
	method esNocturno() = bicis.all({bici => bici.tieneLuz()})
	method tieneBiciParaLlevar(carga)= bicis.any({bici => bici.carga()> carga})
	method marcaBiciRapida()= self.bicisRapidas().max({bici => bici.velCrucero()}).marca()
	method cargaTotalBicisLargas()=
	 bicis.filter({bici => bici.largo()>170}).sum({bici => bici.carga()})
	method cantSinAccesorios()=
	 bicis.count({bici => bici.accesorios().isEmpty()})
	method companierasDe(bici)=
	 bicis.filter({compa => compa.marca() == bici.marca() and
	 	(compa.largo()-bici.largo()).between(-10,10) and bici != compa })
}