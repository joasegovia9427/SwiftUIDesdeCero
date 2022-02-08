//
//  HstackVstackSpacerReto.swift
//  Platzi
//
//  Created by Joaquin Segovia on 7/2/22.
//

import SwiftUI

struct HstackVstackSpacerReto: View {
    var body: some View {
//        VStack(alignment: .trailing){
//            VStack{
//                Text("1").border(.black)
//                Text("2").border(.black)
//                Text("3").border(.black)
//            }.background(.blue).padding(.bottom, -8)
//            HStack(alignment:.top){
//                Text("A").padding(.all, 50.0).border(.black)
//                Text("B").border(.black)
//                Text("C").border(.black)
//            }.background(.red).border(.blue)
//        }.background(.blue)
        
        VStack(alignment: .trailing, spacing:0){           Text("1").border(Color.black)
            Text("2").border(Color.black)
            Text("3").border(Color.black)
            
            Spacer().frame(height: 100)
            
            HStack(alignment: .top){
                Text("A").frame(width: 100, height: 100).border(Color.black)
                Text("B").border(Color.black)
                Text("C").border(Color.black)
            }.background(Color.red)
        }.background(Color.blue)
    }
}

struct HstackVstackSpacerReto_Previews: PreviewProvider {
    static var previews: some View {
        HstackVstackSpacerReto()
//        Image("reto")
    }
}
