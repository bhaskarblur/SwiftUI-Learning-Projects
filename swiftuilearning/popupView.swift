//
//  popupView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 07/11/23.
//

import SwiftUI
import PopupView

struct popupView: View {
    
    @State var popUp = false
    @State var snackBar = false
    var body: some View {
        VStack {
            Button(
                action: {
                    self.popUp.toggle()
                }, label: {
                    Text("Show Popup").font(.system(size: 18, weight: .semibold))
                        .padding(18).foregroundColor(.white)
                }).background(.green).cornerRadius(8.0)
            
            Button(
                action: {
                    self.snackBar.toggle()
                }, label: {
                    Text("Show Snackbar").font(.system(size: 18, weight: .semibold))
                        .padding(18).foregroundColor(.white)
                }).background(.blue).cornerRadius(8.0)
            
        }.popup(isPresented: $popUp, view: {
            HStack {
                Text("You've 32 Messages pending.")
                    .foregroundStyle(.white)
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .frame(width: 480, height: 140)
            }.background(.blue).cornerRadius(8)
           
        }).popup(isPresented: $snackBar, view: {
            HStack {
                Text("You've 32 Messages pending.")
                    .foregroundStyle(.white)
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
            }.background(.blue).cornerRadius(8)
        }, customize: {
                $0
                .type(.floater())
                .position(.bottom)
                .autohideIn(2.0)
                .animation(.spring())
                .closeOnTapOutside(true)
                .backgroundColor(.black.opacity(0.1))})
    }
}

#Preview {
    popupView()
}
