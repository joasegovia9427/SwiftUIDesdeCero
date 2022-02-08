//
//  Dividers.swift
//  Platzi
//
//  Created by Joaquin Segovia on 7/2/22.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        VStack {
            Circle().frame(width: 100, height: 100, alignment: .center).background(.blue)
            
            Text("Circulo Negro")
            
            Divider().frame(height: 10).background(Color.yellow)
            
            Rectangle().frame(width: 200, height: 100, alignment: .center
            ).foregroundColor(.red)
            
            Text("Rectangulo rojo")
            
        }
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
