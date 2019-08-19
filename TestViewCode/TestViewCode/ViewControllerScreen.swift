//
//  ViewControllerScreen.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 11/08/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addSubview(view)
        }
    }
}

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { (view) in
            self.addArrangedSubview(view)
        }
    }
}

final class ViewControllerScreen: UIView{
    
    lazy var button:UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = #colorLiteral(red: 0.2437559962, green: 0, blue: 0.01320731547, alpha: 1)
        view.setTitle("Smash", for: .normal)
        return view
    }()
    
    private lazy var gridStackView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        return view
    }()
    
    let leftGrid = GridBoxView()
    let rightGrid = GridBoxView()
    let profileGrid = ProfileGrid()
    
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
        gridStackView.addArrangedSubview(leftGrid)
        gridStackView.addArrangedSubview(rightGrid)
        addSubview(gridStackView)
        addSubview(profileGrid)
    }
    
    func setContrains() {
        button.snp.makeConstraints{ make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalTo(self).inset(15) // in this case
            make.height.equalTo(50)
        }
        
        gridStackView.snp.makeConstraints{ make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(220)
            make.centerY.equalToSuperview()
        }
        
        profileGrid.snp.makeConstraints{ make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(120)
            make.top.equalTo(self).offset(15)
            
            
        }
        
        
    }
    
    func setExtraConfigs() {
        backgroundColor = .darkGray
    }
    
    
}
