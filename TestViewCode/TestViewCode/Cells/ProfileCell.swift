//
//  ProfileCell.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 26/10/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell{
    let profile = ProfileGrid()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProfileCell: CodeView{
    func buildViewsInHierarchy() {
        addSubview(profile)
    }
    
    func setContrains() {
        profile.snp.makeConstraints{ make in
            make.left.right.equalToSuperview()
            make.top.equalToSuperview().offset(15)
            make.bottom.equalToSuperview().offset(-15)
        }
    }
    
    func setExtraConfigs(){}
    
}
