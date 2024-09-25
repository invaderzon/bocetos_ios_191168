//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit

struct elemento: Codable{
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
    
}

class ViewController: UIViewController {
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Gato", que_dijo: "MIAAAAAAAUUUUU")
    
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()

    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        let valor = Int.random(in: 0...100)
    }


    
    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
}
