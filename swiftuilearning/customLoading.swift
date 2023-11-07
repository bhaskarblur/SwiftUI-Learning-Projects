//
//  customLoading.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 07/11/23.
//

import SwiftUI
import ActivityIndicatorView
struct customLoading: View {
    @State var isLoading = false
    var body: some View {
        VStack {
            ActivityIndicatorView(isVisible: $isLoading, type: .equalizer(count: 4))
                .frame(width: 64, height: 64)
            
            Spacer()
            ActivityIndicatorView(isVisible: $isLoading, type: .growingCircle)
                .frame(width: 64, height: 64)
            
            Spacer()
            ActivityIndicatorView(isVisible: $isLoading, type: .opacityDots(count: 4, inset: 8))
                .frame(width: 64, height: 64)
            
            Spacer()
            ActivityIndicatorView(isVisible: $isLoading, type: .growingArc(.blue, lineWidth: 6.0))
                .frame(width: 64, height: 64)
            
            Spacer()
            
            !isLoading ? AnyView(
                Button(action: {
                    
                    isLoading = true
                }, label: {
                    Text("Load Data")
                        .font(.system(size: 18, weight: .medium))
                        .padding(14).padding(.horizontal, 22)
                }).background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10.0)
            ) : AnyView(VStack{})
          
        }
    }
}

#Preview {
    customLoading()
}
