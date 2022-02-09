//
//  Navigations.swift
//  Platzi
//
//  Created by Joaquin Segovia on 8/2/22.
//

import SwiftUI

struct Navigations: View {
    @State var isDividersActive:Bool=false
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar(content: {
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button(action: {isDividersActive.toggle()}, label: {
                                Text("+")
                                Image(systemName: "house")
                            })
                        }
                        ToolbarItem(placement: .navigationBarLeading){
                            Button(action: {}, label: {
                                NavigationLink("GO", destination: Buttons())
                            })
                        }
                })
                NavigationLink("Navegar a vista de text", destination: Text("Hola desde otra vista"))
                NavigationLink("Navegar a vista de imagen", destination: Image(systemName: "house"))
                NavigationLink("Navegar a vista de otra pantalla", destination: Buttons())
                NavigationLink(
                    destination: Dividers(),
                    isActive: $isDividersActive,
                    label: {
                        EmptyView()
                    })
            }
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
