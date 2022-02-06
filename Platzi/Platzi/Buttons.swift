//
//  Buttons.swift
//  Platzi
//
//  Created by Joaquin Segovia on 5/2/22.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button("Mi primer boton", action: {
                print("toque el primer boton")
            })
            
            // otra manera de crear el boton
            Button("Mi segundo boton") {
                print("toque el segundo boton")
            }
            
            //Otra forma de escribir los botones
            Button(action: {saludo()}, label: {
                //aqui se podria poner un Vstack con imagen y text
                Text("Boton con label como argumento").foregroundColor(.white)
                    .background(Color.blue)
            })
                .padding(.all, 5.0)
                .background(.red)
        }
    }
    
    func saludo(){
        print("toque el tecer boton desde funcion")
    }
    
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
