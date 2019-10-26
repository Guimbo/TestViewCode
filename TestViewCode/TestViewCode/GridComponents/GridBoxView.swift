//
//  GridBoxView.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 14/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit
final class GridBoxView : UIView{
    
    lazy var imageView:UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        return view
    }()
    
    lazy var title: UILabel = UILabel(backgroundColor: #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1), text: "", textColor: .black)
    lazy var subtitle: UILabel = UILabel(backgroundColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), text: "", textColor: .black)
    
    lazy var stackGrid: UIStackView = UIStackView(axis: .vertical, spacing: 8.0)

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension GridBoxView: CodeView{
    func buildViewsInHierarchy() {
        
        stackGrid.addArrangedSubviews([title,subtitle])
        addSubviews([imageView,stackGrid])
    }
    
    func setContrains() {
        imageView.snp.makeConstraints{ make in
            make.left.top.right.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.7)
        }
        
        stackGrid.snp.makeConstraints{ make in
            make.left.bottom.right.equalToSuperview()
            make.top.equalTo(imageView.snp.bottom).offset(8)
            
        }
    }
    
    func setExtraConfigs() {
        
    }
}

