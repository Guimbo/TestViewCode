//
//  CodeView.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 13/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit
import SnapKit


protocol CodeView: UIView{
    func buildViewsInHierarchy()
    func setContrains()
    func setExtraConfigs()
    func setupView()
    func makeAnything()
}

extension CodeView{
    func setupView(){
        buildViewsInHierarchy()
        setContrains()
        setExtraConfigs()
    }
    
    
    func makeAnything() {
        print("Make Anything")
    }
    
}
