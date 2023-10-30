//
//  widgetViewController.swift
//  swiftuilearning
//
//  Created by SoundWave2847 on 30/10/23.
//

import Foundation
import UIKit

class widgetViewController : UIViewController {
    
    private let field : UITextField = {
        let field = UITextField()
        field.placeholder = "Enter text"
        field.backgroundColor = .white
        return field;
    }()
    
    private let button : UIButton = {
        let uiButton = UIButton()
        uiButton.backgroundColor = .green
        uiButton.setTitle("Save", for:.normal)
        uiButton.setTitleColor(.white, for: .normal)
        return uiButton
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBlue
        view.addSubview(field)
        view.addSubview(button)
        field.becomeFirstResponder()
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        field.frame = CGRect(x: 20, y: view.safeAreaInsets.top + 10, width: view.frame.size.width - 40, height: 52)
        
        button.frame = CGRect(x : 30, y:view.safeAreaInsets.top + 70, width: view.frame.size.width - 60, height:60)
        
    }
    @objc
    private func didTapButton() {
        
    }
}
