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
        view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        return view
    }()
    

    lazy var lblName: UILabel = UILabel(backgroundColor: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), text: "Shigaraki Tomura", textColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    lazy var lblSubtitle: UILabel = UILabel(backgroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), text: "Touch Kill", textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    lazy var lblAge: UILabel = UILabel(backgroundColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), text: "17", textColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    lazy var lblAlignment: UILabel = UILabel(backgroundColor: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), text: "Evil", textColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
    
    lazy var littleGroup: UIStackView = UIStackView(axis: .horizontal, spacing: 3.0)
    lazy var titleGroup: UIStackView = UIStackView(axis: .vertical, spacing: 5.0)
    
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

        
        
        littleGroup.addArrangedSubviews([lblAge, lblAlignment])
        titleGroup.addArrangedSubviews([lblName, lblSubtitle, littleGroup])
    
        
        addSubviews([imageProfile,titleGroup])
        
    }
    
    func setContrains() {
        imageProfile.snp.makeConstraints{make in
            make.left.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.35)
            make.height.equalToSuperview()
            make.right.equalToSuperview().offset(10)
        }
        
        titleGroup.snp.makeConstraints{ make in
            make.right.top.bottom.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.57)
            make.height.equalToSuperview()
            
        }
        
    }
    
    func setExtraConfigs() {
        
    }
}
