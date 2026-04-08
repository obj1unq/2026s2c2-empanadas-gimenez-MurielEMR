object galvan {
    var sueldo = 15000 //variables son atributos
    var fondoSueldo = 0
    var deuda = 0
    var dinero = 0 
    method deuda(){
        return deuda
    }
    method sueldo(){
        return sueldo
    }
    method ponerEnDinero(){
        dinero = sueldo
    }
    method dinero(){
        return dinero
    }
    method sueldo(_sueldo){
        sueldo = _sueldo
    }
    method recibirSueldo(){
        self.ponerEnDinero()
        self.pagarDeuda()
        fondoSueldo = fondoSueldo + dinero
        
    }
    method pagarDeuda(){
        if (deuda >= dinero){
            deuda = deuda-dinero
            dinero = 0
        }else {
            dinero= dinero-deuda
            deuda = 0

        }
        
    }
    method gastar(cantidad){
        if (dinero >= cantidad){
            dinero = dinero - cantidad
        }else {
            deuda = deuda + (cantidad - dinero)
            dinero = 0
        }


    }
}

object baigorria {
    
    var cantidadEmpanadasVendidas=0
    var fondoSueldo = 0
    const comisionPorEmpanada = 15
    method vender(cantEmpanadas) {
        cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + cantEmpanadas
    }
    method empanadasVendidas(){
        return cantidadEmpanadasVendidas
    }
    method sueldo(){
        return cantidadEmpanadasVendidas * comisionPorEmpanada
    }
    method recibirSueldo(){
        fondoSueldo = fondoSueldo + self.sueldo()
        cantidadEmpanadasVendidas=0

    }
    method totalCobrado(){
        return fondoSueldo
    }
}

object gimenez {
    var fondo = 300000
    method fondo(){
        return fondo
    }
    
    method pagarSueldo(empleado) {
        fondo = fondo - empleado.sueldo()
        empleado.recibirSueldo()
    }
}