//
//  Extensions.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 20/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit
import Foundation

extension UIView {
    func addSubviews(_ views: [UIView]){
        views.forEach{ (view) in
            self.addSubview(view)
        }
    }
}

extension UIStackView {
    func addArrangedSubviews(_ views:[UIView]){
        views.forEach{ (view) in
            self.addArrangedSubview(view)
        }
    }
}

extension UILabel {
    convenience init(backgroundColor: UIColor?, text:String, textColor: UIColor){
        self.init()
        self.frame = .zero
        self.text = text
        self.textColor = textColor
        if(backgroundColor != nil){
            self.backgroundColor = backgroundColor
        }
    }
    
}


extension UIStackView {
    convenience init(axis: NSLayoutConstraint.Axis, spacing: CGFloat){
        self.init()
        self.frame = .zero
        self.axis = axis
        self.distribution = .fillEqually
        self.spacing = spacing
    }
}

