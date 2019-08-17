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
        return view
    }()
    
    let gridBox = GridBoxView()
    
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
        addSubview(gridBox)
    }
    
    func setContrains() {
        button.snp.makeConstraints{ make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalTo(self).inset(15) // in this case
            make.height.equalTo(50)
        }
        
        gridBox.snp.makeConstraints{ make in
            make.height.width.equalTo(200)
            make.center.equalToSuperview()
        }
        
        
    }
    
    func setExtraConfigs() {
        backgroundColor = .darkGray
    }
    
    
}
