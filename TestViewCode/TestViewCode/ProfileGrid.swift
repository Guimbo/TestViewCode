//
//  ProfileGrid.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 18/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit
final class ProfileGrid : UIView{
    
    lazy var imageProfile: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    lazy var lblName: UILabel = {
        let name = UILabel(frame: .zero)
        name.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        name.text = "Shigaraki Tomura"
        name.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return name
    }()
    
    lazy var lblSubTitle: UILabel = {
        let power = UILabel(frame: .zero)
        power.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        power.text = "Touch Kill"
        power.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return power
    }()
    
    let TitleGroup: UIStackView = {
        let stackTitle = UIStackView(frame: .zero)
        stackTitle.axis = .vertical
        stackTitle.distribution = .fillEqually
        stackTitle.spacing = 5.0
        return stackTitle
    }()
    
    let ProfileGroup: UIStackView = {
        let stackProfile = UIStackView(frame: .zero)
        stackProfile.axis = .horizontal
        stackProfile.distribution = .fillEqually
        stackProfile.spacing = 4.0
        return stackProfile
    }()
    
    // Train Here Extension
    
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProfileGrid: CodeView{
    
    func buildViewsInHierarchy() {
        TitleGroup.addArrangedSubview(lblName)
        TitleGroup.addArrangedSubview(lblSubTitle)
        ProfileGroup.addArrangedSubview(imageProfile)
        ProfileGroup.addArrangedSubview(TitleGroup)
        addSubview(ProfileGroup)
        
    }
    
    func setContrains() {
        
    }
    
    func setExtraConfigs() {
        
    }
}
