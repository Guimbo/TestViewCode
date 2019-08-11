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
        
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
