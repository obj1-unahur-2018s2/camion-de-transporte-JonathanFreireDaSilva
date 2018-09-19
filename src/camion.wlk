import cosas.*

object camion {
	const property cosas = []
	const pesoCamion = 1000
	var cantBultos = null
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
		method descargar(unaCosa){
			cosas.remove(unaCosa);
		}
	
			method pesoTotal(){
				return cosas.sum({pesot=>pesot.peso()}) + pesoCamion	
			}
	
				method excedidoDePeso(){
					return self.pesoTotal()>2500
				}
				
	 					method objetosPeligrosos(nivel){
	 						return cosas.filter({peligroso=>peligroso.nivelPeligrosidad() > nivel })
	 					}
						
							method objetoMasPeligrosoQue(cosa){
								return cosas.filter({maspeli=>maspeli > cosa.nivelPeligrosidad()})
							}
								
								method puedeCircularEnRuta(nivelMaximoPeligrosidad){
									return !cosas.any({supera=>supera.nivelPeligrosidad() > nivelMaximoPeligrosidad})
								}
		
									method tieneAlgoQuePesaEntre(min,max){
										return cosas.any({pesos=>pesos.peso() > min && max})
									}
											
										method totalBultos(){
											return cosas.sum({suma=>suma.bulto()})
										}
											
											method pesos(){
												return cosas.map({})
											}
									
}
