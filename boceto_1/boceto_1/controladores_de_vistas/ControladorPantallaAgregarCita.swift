//
//  ControladorPantallaAgregarCita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit
class ControladorPantallaAgregarCita: UIViewController{
    var quien_lo_dice: String = ""
    var que_dice: String = ""
    
    var cita_creada: Cita? = nil
    
    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    
    @IBOutlet weak var que_es_lo_que_dijo: UITextField!
    
    @IBAction func agregar_cita_nueva(_ sender:UIButton){
        if (quien_lo_dijo_view.text == "" || que_es_lo_que_dijo.text == ""){
        cita_creada = nil
        }
        
        else {
            cita_creada = Cita(quien_lo_dijo: quien_lo_dijo_view.text!, que_dijo: que_es_lo_que_dijo.text!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
}
