//
//  Extensions.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 20/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

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


