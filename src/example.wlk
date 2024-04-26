/** First Wollok example */
object galvan{
	var property totalCobrado = 0
	var property sueldo = 150000
	var dinero = 0
	var deuda = 0
	method cobrarSueldo(){
		totalCobrado += sueldo
		if(deuda > 0){
			dinero =if(sueldo > deuda) sueldo - deuda else 0 
			deuda -= if(deuda < sueldo) deuda else sueldo
		}else{
			dinero = sueldo
		}
		return sueldo 
	}
	method gastar(cuanto){
		if(dinero==0){
			deuda += cuanto
			return deuda
		}else if(dinero > 0 && dinero < cuanto){
			const sobrante = cuanto - dinero
			dinero = 0
			deuda += sobrante
			return deuda
		}else{
			return dinero - cuanto
			
		}
	}
	method totalDeuda(){
		return deuda	
	}
	method totalDinero(){
		return dinero
	}
}
object baigorria{
	var property totalCobrado = 0
	const property sueldo = 150 * empanadasVendidas
	var empanadasVendidas = 2
	method venderEmpandas(){
		empanadasVendidas += 1
	}
	method cobrarSueldo(){
		totalCobrado += sueldo
		return sueldo
	}
}
object gimenez{
	var property fondoDeSueldos = 3000000
	method pagarA(empleado) {
    fondoDeSueldos -= empleado.sueldo()
    empleado.cobrarSueldo()
}
}