//
//  posts.swift
//  boceto2_191168
//
//  Created by alumno on 10/9/24.
//

struct Publicacion: Decodable{
    // Decodable: Permite convertir información json a un modelo de swift
    // Encodable: Permite convertir un modelo de swift a JSON
    // Codable: Ambas al mismo tiempo
    var id: Int
    var userId: Int
    var title: String
    var body: String
}

