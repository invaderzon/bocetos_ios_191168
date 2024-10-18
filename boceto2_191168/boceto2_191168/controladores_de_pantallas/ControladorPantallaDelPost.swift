//
//  ControladorPantallaDelPost.swift
//  boceto2_191168
//
//  Created by alumno on 10/18/24.
//

import UIKit

class ControladorPantallaDelPost: UIViewController {
    
    let proveedor_publicaciones = ProveedorDePublicaciones.autoreferencia
    
    public var id_publicacion: Int?
    
    private var publicacion: Publicacion?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
        controlador_de_navegacion?.activar_navigation_bar(actviar: true)
        
        realizar_descarga_de_informacion()
    }
    
    func realizar_descarga_de_informacion(){ //Funcion en especifico que se encargue de un conjunto de tareas
        proveedor_publicaciones.obtener_publicacion(id: self.id_publicacion ?? -1, que_hacer_al_recibir: {
            [weak self] (publicacion) in self?.publicacion = publicacion
            DispatchQueue.main.async {
                self?.dibujar_publicacion()
            }
        })
    }
    
    func dibujar_publicacion(){
        print(publicacion?.body)
    }
}
