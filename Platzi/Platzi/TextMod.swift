//
//  TextMod.swift
//  Platzi
//
//  Created by Joaquin Segovia on 2/2/22.
//.

import SwiftUI

struct TextMod: View {
    var body: some View {
        Text("Hello, World!, textMod works")
            .background(Color.white) //prueba para ver el orden de los MODIFICADORES
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .frame(width: 300, height: 700,alignment:.leading)
            .background(.blue)
    }
}

struct TextMod_Previews: PreviewProvider {
    static var previews: some View {
        TextMod()
    }
}


