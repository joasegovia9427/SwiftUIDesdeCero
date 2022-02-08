//
//  HstackVstackSpacer.swift
//  Platzi
//
//  Created by Joaquin Segovia on 7/2/22.
//

import SwiftUI

struct HstackVstackSpacer: View {
    var body: some View {
        
        VStack(alignment:.leading) {
            //podria usar aligment:.trailing para que se alinea a la derecha.
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).border(Color.black)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
            Text("Placeholder2")
            HStack{
                Text("Texto \n Horizontal \n 1")
                    .multilineTextAlignment(.center).frame(width: 100, height: 100, alignment: .center)
                Text("Texto Horizontal 2").frame(width: 100, height: 100, alignment: .center)
                Text("Texto Horizontal 3")
            }.border(Color.blue)
        }.border(Color.red)
        
    }
}

struct HstackVstackSpacer_Previews: PreviewProvider {
    static var previews: some View {
        HstackVstackSpacer()
    }
}
