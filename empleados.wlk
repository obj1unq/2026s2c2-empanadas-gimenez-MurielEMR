object galvan {
    var sueldo = 15000
    var fondoSueldo = 15000
    method sueldo(){
        return sueldo
    }
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method recibirSueldo(dinero){
        fondoSueldo = fondoSueldo + dinero
    }


}
object baigorria {
    
    var empanadasVendidas=0
    var fondoSueldo = 0
    method ventaDeEmpanada(ventas) {
        empanadasVendidas = empanadasVendidas + ventas
    }
    method empanadasVendidas(){
        return empanadasVendidas
    }
    method sueldo(){
        return empanadasVendidas * 15
    }
    method recibirSueldo(sueldo){
        fondoSueldo = fondoSueldo + sueldo
    }
}

object gimenez {
    var fondo = 300000
    var empleadoAPagar = galvan
    method fondoRestante(){
        return fondo
    }
    method cambiarPagoA(empleado){
        empleadoAPagar = empleado
    }
    method pagar(sueldo) {
        fondo = fondo - sueldo
        empleadoAPagar.drecibirSueldo(sueldo)
    }
}
