//
//  TabViews.swift
//  Platzi
//
//  Created by Joaquin Segovia on 8/2/22.
//

import SwiftUI

struct TabViews: View {
    init() {
        setupTabBar()
    }
    var body: some View {
        TabView{
            TextMod().tabItem{
                Text("Pantalla 1")
                Image(systemName: "house")
            }
            TextFields().tabItem{
                Text("Pantalla 2")
                Image(systemName: "play")
            }
            ZstackPadding().tabItem{
                Text("Pantalla 3")
                Image(systemName: "terminal")
            }
        }.accentColor(Color.red)
    }
}

////https://compilacionmovil.com/como-crear-un-tabview-en-swiftui/
extension TabViews {
    func setupTabBar() {
        UITabBar.appearance().barTintColor = .orange
        UITabBar.appearance().unselectedItemTintColor = UIColor.blue
        
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
