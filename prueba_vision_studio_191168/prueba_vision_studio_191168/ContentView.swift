//
//  ContentView.swift
//  prueba_vision_studio_191168
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var pulsaciones: Bool = true
    
    var body: some View {
        HStack {
            VStack {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                Model3D(named: "prueba_2", bundle: realityKitContentBundle).padding(.bottom, 0)
            }
            Text("AAAAAA")
            Text("AAAAAA")
            Text("AAAAAA")
            Button(action: {pulsaciones = !pulsaciones
                print("Hola mundo desde consola\(pulsaciones)")
            }, label: {Text("Hola Mundo")})
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
