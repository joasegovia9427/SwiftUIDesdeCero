//
//  TextFields.swift
//  Platzi
//
//  Created by Joaquin Segovia on 6/2/22.
//..

import SwiftUI

struct TextFields: View {
    @State var num:Int=0
    @State var textoVista:String=""
    
    var body: some View {
        
        VStack {
            Text(textoVista+" ocacion numero: \(num)")
                        
            TextField("Escribe tu password", text: $textoVista)
            
            Button(action: {num+=1;textoVista="SegundaVista"}, label: {Text("Cambia el texto de la vista")
            })
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextFields()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
