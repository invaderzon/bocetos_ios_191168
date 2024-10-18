//
//  EstiloCellViewControllerCelular.swift
//  boceto2_191168
//
//  Created by alumno on 10/11/24.
//

import UIKit

extension ControladorPantallaPrincipalDeColeccion: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var ancho = self.collectionView.frame.width
        var largo = self.collectionView.frame.height
        
        ancho = ancho / 2.1
        largo = ancho * 0.5
        
        return CGSize(width:ancho, height: largo)
    }
    
    // Modifica el inset de las vistas
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, insetForSectionAt secion: Int) -> UIEdgeInsets {
        var margin = CGFloat(50)
        
        return UIEdgeInsets(top: margin, left: margin, bottom:margin, right: margin)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        var ancho = self.collectionView.frame.width
        ancho = ancho * 3.5
        
        return ancho
    }
}
