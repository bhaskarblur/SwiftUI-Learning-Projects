//
//  AppStore.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 30/10/23.
//

import SwiftUI


let items = Array(1...12).map( {"person\($0)"})

let layout = [
    GridItem(.flexible(minimum: 100)),
    GridItem(.flexible(minimum: 100)),
    GridItem(.flexible(minimum: 100))
]
struct AppStore: View {
   
    var body: some View {
    
        NavigationView(content: {
            
                AppList().navigationTitle("Popular Apps")

        })

    }
    
}

struct AppItem : View {
    var appIcon : String;
    
    init(appIcon: String) {
        self.appIcon = appIcon
    }
    var body : some View {
    
        Image(appIcon)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .border(.secondary)
            .cornerRadius(12)
            .padding(10)
        
        

    }
}
struct AppList : View {
    var body : some View {
        ScrollView(.vertical) {
            
            LazyVGrid(columns: layout, content: {
                
                ForEach(items, id : \.self) { item in
                    
                    VStack {
                        AppItem(appIcon: item)
                        Text("GET")
                            .foregroundStyle(.blue)
                    }
                }
            })
        }
    }
}
#Preview {
    AppStore()
}
