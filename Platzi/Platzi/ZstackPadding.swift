//
//  ZstackPadding.swift
//  Platzi
//
//  Created by Joaquin Segovia on 8/2/22.
//

import SwiftUI



struct ZstackPadding: View {
    var body: some View {
        ZStack {
            Color.yellow
            VStack{
                Imagenes() //forma de modularizar el codigo y las vistas
                Text("Bienvenidos al curso").padding(.bottom, 10.0)//Para no usar el spacer, podemos agregar un padding al elemento de arriba
                //  Spacer().frame(width: 0, height: 50, alignment: .center)
                DatosEntradaUsuario()
                HstackVstackSpacerReto()//esto esta llamando a otra vista ya creada, modularizando aun mas el codigo desde otro archivo de SwiftUI View
            }
        }.ignoresSafeArea()
    }
}
struct Imagenes: View {
    var body: some View{
        Image("platzi").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .center)
    }
}
struct DatosEntradaUsuario: View{
    @State var curso:String = ""
    var body: some View{
        if curso.isEmpty { // == ""
            Spacer().frame(height: 14.5)
        }
        Text(curso).padding(.bottom, 10.0)
        ZStack(alignment: .leading){
            if curso.isEmpty { // == ""
                Text("Curso").padding(.leading, 8).foregroundColor(.blue)
            }
            TextField("", text: $curso).padding(.leading, 8)
        }
    }
}


struct ZstackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZstackPadding()
    }
}
