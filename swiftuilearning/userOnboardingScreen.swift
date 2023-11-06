//
//  userOnboardingScreen.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 06/11/23.
//

import ConcentricOnboarding
import SwiftUI

struct userOnboardingScreen: View {
    var body: some View {
        ConcentricOnboardingView(pageContents: MockData.pages.map { (PageView(page: $0), $0.color) })
                  .duration(1.0)
                  .nextIcon("chevron.forward")
                  .animationDidEnd {
                      print("Animation Did End")
                  }
    }
}

#Preview {
    userOnboardingScreen()
}
