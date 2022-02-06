//
//  Images.swift
//  Platzi
//
//  Created by Joaquin Segovia on 5/2/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
        
        VStack{
            Text("Imagenes")
            
            Image("ios-15-iPad-wallpaper-from-ispazio").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .center)
            
            Image("macos-big-sur-colorful-waves-smooth-stock-apple-aesthetic-5k-6016x6016-1495").resizable().aspectRatio(contentMode: .fit).frame(width: 300, height: 300, alignment: .center).blur(radius: /*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            Button(action: {print("Boton ejecutado con imagen")}, label: {
                VStack{
                    Text("Boton con label como argumento e imagen").foregroundColor(.white)
                        .background(Color.blue)
                    
                    Image("ios-15-iPad-wallpaper-from-ispazio").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .center)
                }
                
            }).padding(.all, 5.0)
            .background(.red)
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "face.smiling")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50.0, height: 50.0).foregroundColor(Color.blue)
        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
