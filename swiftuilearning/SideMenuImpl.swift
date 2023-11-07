//
//  SideMenuImpl.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 08/11/23.
//

import SwiftUI

struct menuItem : View {
 
    var title : String
    var body : some View {
        ZStack {
            HStack {
                Text(title).font(.system(size: 18, weight: .medium)).padding()
                Spacer()
            }
        }
    }
}
struct sideMenuView : View {
    let width : CGFloat
    let menuOpened : Bool
    let toggleMenu : Void
    let listItems = ["Home", "Feed", "Settings", "Log out"]
    var body : some View {
        ZStack {
            
            Color(.blue)
            
            VStack {
                LazyVStack {
                    ForEach(listItems, id: \.self) {items in
                        menuItem(title: items)
                    }.frame(alignment: .topLeading)
                }
                Spacer()
            }.padding(.top, 60)
                
        }.frame(width: width, alignment: .trailing)
            .offset(x: !menuOpened ? 0: -width/4)
            
    }
}

struct SideMenuImpl: View {
    
    @State var menuOpened = false
    var body: some View {
        ZStack {
            
            
            if (!menuOpened) {
                Button(action: {
                    self.menuOpened.toggle()
                    
                    
                }, label: {
                    Text("Open Menu").foregroundStyle(.white)
                        .frame(width: 180, height: 54)
                        .bold()
                }).background(.blue).cornerRadius(8).padding()
            }
            else {
                sideMenuView(width: UIScreen.main.bounds.width/1.5, menuOpened: menuOpened, toggleMenu: toggleMenu())
            }
        }.edgesIgnoringSafeArea(.all)
    }
    
    func toggleMenu() {
        menuOpened.toggle()
    }

}

#Preview {
    SideMenuImpl()
}
