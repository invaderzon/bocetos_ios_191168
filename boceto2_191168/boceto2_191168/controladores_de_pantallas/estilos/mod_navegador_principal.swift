//
//  mod_navegador_principal.swift
//  boceto2_191168
//
//  Created by alumno on 10/18/24.
//

import UIKit

class mod_navegador_principal: UINavigationController {
    override func viewDidLoad() {
        // self.navigationBar.isTranslucent = true
        // self.navigationBar.backgroundColor = .black
        //self.hidesBarsOnSwipe = true
        activar_navigation_bar(actviar: false)
    }
    
    func activar_navigation_bar(actviar: Bool){
        self.navigationBar.isHidden = !actviar
    }
    
}
