//
//  ZstackPadding.swift
//  Platzi
//
//  Created by Joaquin Segovia on 8/2/22.
//

import SwiftUI

struct ZstackPadding: View {
    @State var curso:String = ""
    var body: some View {
        ZStack {
            Color.yellow
            VStack{
                Image("platzi").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .center)
                Text("Bienvenidos al curso").padding(.bottom, 10.0)
                //Para no usar el spacer, podemos agregar un padding al elemento de arriba
                //                Spacer().frame(width: 0, height: 50, alignment: .center)
                Text(curso).padding(.bottom, 10.0)
                
                ZStack(alignment: .leading){
                    if curso.isEmpty { // == ""
                        Text("Curso").padding(.leading, 8).foregroundColor(.blue)
                    }
                    TextField("", text: $curso).padding(.leading, 8)
                }
            }
        }.ignoresSafeArea()
    }
}



struct ZstackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZstackPadding()
    }
}
