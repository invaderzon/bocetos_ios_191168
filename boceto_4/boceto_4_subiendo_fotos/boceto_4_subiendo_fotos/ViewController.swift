//
//  ViewController.swift
//  boceto_4_subiendo_fotos
//
//  Created by alumno on 10/30/24.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var aqui_va_la_foto: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func subir_foto_para_mostrar(_ sender: Any) {
        let seleccionar_imagen = UIImagePickerController()
        seleccionar_imagen.delegate = self
        
        seleccionar_imagen.sourceType = UIImagePickerController.SourceType.photoLibrary
        
        seleccionar_imagen.allowsEditing = false
        
        self.present(seleccionar_imagen, animated: true)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let imagen_seleccionada = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            aqui_va_la_foto.image = imagen_seleccionada
        }
        else {
            /// Que h{acer en caso de no identificar que selecciono
        }
        
        self.dismiss(animated: true)
    }
    
}

