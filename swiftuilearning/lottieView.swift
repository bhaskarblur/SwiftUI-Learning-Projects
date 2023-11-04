//
//  lottieView.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 03/11/23.
//

import Lottie
import SwiftUI
import UIKit


struct lottieView : UIViewRepresentable {
    typealias UIViewType = UIView
    var fileName : String
    
    func makeUIView(context: UIViewRepresentableContext<lottieView>) -> UIView {

        let view = UIView(frame: .zero)
        
        let animView = LottieAnimationView()
        animView.animation = LottieAnimation.named(fileName)
        animView.loopMode = .loop
        animView.contentMode = .scaleAspectFit
        animView.play()
        view.addSubview(animView)
        
        animView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animView.heightAnchor.constraint(equalTo: view.heightAnchor)])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {

    }
}
