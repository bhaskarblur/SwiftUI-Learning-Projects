//
//  PageView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 06/11/23.
//

import SwiftUI

struct PageView: View {
    
      let page: PageData
      let imageWidth: CGFloat = 150
      let textWidth: CGFloat = 350
      
      var body: some View {
          let size = UIImage(named: page.imageName)?.size ?? .zero
          let aspect = size.width / size.height
          
          return VStack(alignment: .center, spacing: 50) {
              Text(page.title)
                  .font(.system(size: 40, weight: .bold, design: .rounded))
                  .foregroundColor(page.textColor)
                  .frame(width: textWidth)
                  .multilineTextAlignment(.center)
              Image(page.imageName)
                  .resizable()
                  .aspectRatio(aspect, contentMode: .fill)
                  .frame(width: imageWidth, height: imageWidth)
                  .cornerRadius(40)
                  .clipped()
              VStack(alignment: .center, spacing: 5) {
                  Text(page.header)
                      .font(.system(size: 25, weight: .bold, design: .rounded))
                      .foregroundColor(page.textColor)
                      .frame(width: 300, alignment: .center)
                      .multilineTextAlignment(.center)
                  Text(page.content)
                      .font(Font.system(size: 18, weight: .bold, design: .rounded))
                      .foregroundColor(page.textColor)
                      .frame(width: 300, alignment: .center)
                      .multilineTextAlignment(.center)
              }
          }
      }
}

#Preview {
    PageView(page: PageData(
        title: "Eating grapes 101",
        header: "Step 1",
        content: "Break off a branch holding a few grapes and lay it on your plate.",
        imageName: "screen 1",
        color: Color(hex: "F38181"),
        textColor: Color(hex: "FFFFFF")))
}
