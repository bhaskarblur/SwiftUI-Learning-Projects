//
//  ContextView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 29/10/23.
//

import SwiftUI

struct ContextView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue, Color.purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 64, alignment: .center)
                    .padding()
                    .foregroundColor(.white)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white).font(.system(size: 28, weight: .semibold))
                Spacer()
            }
          
        }
    }
}

#Preview {
    ContextView()
}
