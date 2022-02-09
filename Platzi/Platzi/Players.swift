//
//  Players.swift
//  Platzi
//
//  Created by Joaquin Segovia on 9/2/22.
//

import SwiftUI
import AVKit

struct Players: View {
    @State var isPlayerActive:Bool = false
    var body: some View {
        NavigationView{
            ZStack {
                Image("cuphead").resizable()
                    .aspectRatio(contentMode: .fill).frame(width: 400, height: 868, alignment: .center)
                    .blur(radius: /*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                VStack{
                    Button(action: {

                        isPlayerActive.toggle()
                    }, label: {
                        ZStack {
                            Image("cuphead").resizable().aspectRatio(contentMode:.fit)
                            Image(systemName: "play.circle").resizable().aspectRatio( contentMode: .fit).foregroundColor(.white).frame(width: 50, height: 50, alignment: .center)
                        }
                    })//Button
                    NavigationLink(
                        destination: reproductor(),
                        isActive: $isPlayerActive,
                        label:{
                            EmptyView()
                        }
                    )//NavigationLink
                }//VStack
            }.ignoresSafeArea()//ZStack
        }//NavigationView
    }//Body
}

struct reproductor:View{
    var body: some View{
        ZStack {
            Color.black
            VideoPlayer(player: AVPlayer(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!))
                .frame(width: 420, height: 360, alignment: .center)
        }.ignoresSafeArea()
    }
}


struct Players_Previews: PreviewProvider {
    static var previews: some View {
        Players()
    }
}
