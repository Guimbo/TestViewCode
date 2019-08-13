//
//  ViewControllerScreen.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 11/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView{
    
    lazy var button:UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = #colorLiteral(red: 0.2437559962, green: 0, blue: 0.01320731547, alpha: 1)
        view.setTitle("Smash", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewControllerScreen: CodeView{
    func buildViewsInHierarchy() {
        addSubview(button)
    }
    
    func setContrains() {
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setExtraConfigs() {
        backgroundColor = .darkGray
    }
    
    
}
