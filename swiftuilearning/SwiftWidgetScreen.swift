//
//  SwiftWidgetScreen.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 30/10/23.
//

import SwiftUI
import WidgetKit

struct SwiftWidgetScreen: View {
    @State var text = ""
    @State var saved = false
   var userDefaults = UserDefaults(suiteName: "group.widgetcache")
    var body: some View {
        
        ZStack{
            Color.blue.ignoresSafeArea(.all)
            
            HStack {
                TextField("Enter text...", text: $text)
                    .padding(15)
                    .frame(height: 52.0)
                    .background(Color(red: 239/255, green: 243/255, blue: 244/255))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1))
                
                Button(action: {
                    
                    if(!text.isEmpty) {
                        userDefaults?.setValue(text, forKey: "text")
                        
                        WidgetCenter.shared.reloadAllTimelines()
                        saved = true

                        
                      
                    }
                }, label: {
                    Text("Save").foregroundStyle(.white)
                        .font(.body)
                        .frame(width: 40, height: 52).padding(.horizontal, 15)
                }).background(.green).cornerRadius(4)
                    . alert("Widget Text Saved", isPresented: $saved, actions: {
                        
                    }, message: {
                        
                    })
                
            }.padding()
            
            
            Spacer()
        }
    }
}

#Preview {
    SwiftWidgetScreen()
}
