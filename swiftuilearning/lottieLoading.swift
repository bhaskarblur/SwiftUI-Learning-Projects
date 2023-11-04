//
//  lottieLoading.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 03/11/23.
//

import SwiftUI

struct lottieLoading: View {
    
    var body: some View {
        NavigationView {
            VStack {
                lottieView(fileName: "loading")
                    .frame(width: 200, height: 200, alignment: .center)

            }
            .navigationTitle("Home")
        }
        
        
    }
}

#Preview {
    lottieLoading()
}
