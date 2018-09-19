import camion.*

object knightRider {
	
		method peso() {
			return 500
		}
	
			method nivelPeligrosidad() {
				return 10
			}
				
				method bulto(){
					return 1
				}
}

	object bumblebee {
		var transformadoEnAuto = true
	
		method peso() {
			return 800
		}
		
			method nivelPeligrosidad() { 
				return if (transformadoEnAuto) { 15 } else { 30 }
			}
		
				method transformar() {
					transformadoEnAuto = not transformadoEnAuto
				}
					
					method bulto(){
						return 2
					}
	}

	object paqueteDeLadrillos{
		const pesoLadrillo =2
		const peligro= 2
		var _cantidad=null;
	
			
		method setCantidad(cantidad){
 		_cantidad = cantidad
	    }
			
			method peso(){
				return pesoLadrillo *_cantidad
			}
			
				method nivelPeligrosidad(){
					return peligro
				}

					method bulto(){
						if (_cantidad>300){
							return 3
						} else if(_cantidad<300 && _cantidad>=101){
							return 2
						} else {
							return 1
						}
					}				
	}
	
	object arenaGranel{
		var _peso=null;
		
		method setPeso(peso){
			_peso=peso
		}
			
			method peso(){
				return _peso
			}
				
				method nivelPeligrosidad(){
					return 1
				}
				
					method bulto(){
						return 1
				    }
	}
		
	object bateriaAntiArea{
		var misiles = false
		
		method cargarMisiles(){
			misiles = true
		}
		
			method descarGarMisilies(){
				misiles = false
			}
			
				method peso(){	
					if(!misiles){
							return 300
					} 	else {
							return 200
						}
				}
					
					method nivelPeligrosidad(){
	    			if(!misiles){
							return 100
					} 	else {
							return 0
						}
				}
					
					method bulto(){
						if(!misiles){
							return 2
						}else{
							return 1
						}
					}
	    		
	}
	
	object contenedorPortuario{
	 const property cosasCargadas = []
	 
	    method cargarCosa(cosa){
	    	cosasCargadas.add(cosa)
	    }
	    
	    	method peso(){
	    		return 100 + cosasCargadas.sum({sumar=>sumar.peso()})
	    	}
	    		
	    		method nivelPeligrosidad(){
	    			if(cosasCargadas.isEmpty()){
	    				return 0
	    			} else{
	    				return cosasCargadas.max({maximo=>maximo.nivelPeligrosidad()})
	    			}
	    		}
	    			
	    			method bulto(){
	    				return 1+cosasCargadas.sum({sumar=>sumar.bulto()})
	    			}
	}
	
	object residuosRadiosactivos{
		var _peso = null;
		
		method setPeso(peso){
			_peso = peso
		}	
			
			method peso(){
				return _peso
			}
				
				method nivelPeligrosidad(){
					return 200
				}
				
					method bulto(){
						return 1
					}
	}
	
	object embalajeDeSeguridad{
		var _cosa = null
		
		method envolver(cosa){
			_cosa=cosa
		}	
			
			method peso(){
				return _cosa.peso()
			}
				
				method nivelPeligrosidad(){
					return _cosa.nivelPeligrosidad()/2
				}
				
					method bulto(){
						return 2
					}					
				
	}
	
	
				
				
	
			
			