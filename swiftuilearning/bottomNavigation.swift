//
//  bottomNavigation.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 03/11/23.
//

import SwiftUI

struct bottomNavigation: View {
    var body: some View {

        TabView {
            
            ZStack {
                Color.blue .ignoresSafeArea(.all)
                
                
                Text("Home")
            }
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ZStack {
                Color.red .ignoresSafeArea(.all)
                Text("Settings")
            }
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .transition(.slide)
    }
}

#Preview {
    bottomNavigation()
}
