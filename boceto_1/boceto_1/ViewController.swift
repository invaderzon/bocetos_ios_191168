//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

class ViewController: UIViewController {
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Gato", que_dijo: "MIAAAAAAAUUUUU")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()
    var numero_aleatorio: Int = Int.random(in: 0...25)
    
    @IBOutlet weak var labelcito: UILabel!
    
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()

        actualizar_cantidad()
    }
    
    
    func actualizar_cantidad(){
            labelcito.text = String(citas_disponibles.citas_creadas.count)
        }

    
    @IBSegueAction func al_abrir_citas_pantalla(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
    
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue){
        if let pantalla_agregar_citas = segue.source as? ControladorPantallaAgregarCita{
            if (pantalla_agregar_citas.cita_creada != nil){
                citas_disponibles.agregar_cita(pantalla_agregar_citas.cita_creada!)
                actualizar_cantidad()
            }
        }
        
    }
    
}

