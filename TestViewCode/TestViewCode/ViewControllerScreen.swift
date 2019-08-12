//
//  ViewControllerScreen.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 11/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView{
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        //Make Button
        let button = UIButton(frame: .zero)
        button.backgroundColor = #colorLiteral(red: 0.2437559962, green: 0, blue: 0.01320731547, alpha: 1)
        button.setTitle("Smash3", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        //Add SubView
        addSubview(button)
        //Set Contrains
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //Extra Configs
        
        
        backgroundColor = .darkGray
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
