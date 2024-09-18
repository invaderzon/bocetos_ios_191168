//
//  generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import Foundation


class GeneradorDeCitas{
    var citas_creadas: Array<Cita>
    
    
    
    
    init(){
        citas_creadas = []
    }
    func agregar_cita(_ que_dijo: String, quien_lo_dijo: String){
        var cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
}
