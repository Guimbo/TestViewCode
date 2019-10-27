//
//  CustomCell.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 26/10/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell{
    
    let label: UILabel = UILabel(backgroundColor: nil, text: "Deu ruim", textColor: .black)
    
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        setupView()
        //Activate  userInteraction, create gesture and add gesture.

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeClickable(){
        self.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapGesture(){
        print("I'm Clickable, dude!")
    }
    
}

extension CustomCell:CodeView{
    
    
    func buildViewsInHierarchy() {
        addSubview(label)
    }
    
    func setContrains() {
        label.snp.makeConstraints{ make in
            make.bottom.left.right.top.bottom.equalToSuperview()
            
        }
    }
    
    func setExtraConfigs() {}
    
}
