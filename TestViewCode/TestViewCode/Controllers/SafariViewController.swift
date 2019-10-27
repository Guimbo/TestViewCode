//
//  SafariViewController.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 27/10/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit


class SafariViewController: UIViewController{

        let label:UILabel = {
            let lbl = UILabel(frame: .zero)
            lbl.text = "Testando isso aqui!"
            lbl.textColor = .black
            lbl.textAlignment = .center
    //        lbl.backgroundColor = .blue
            return lbl
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            view.addSubview(label)
            setupContraints()
            // Do any additional setup after loading the view.
        }
        
        func setupContraints() {
            label.snp.makeConstraints{ make in
                make.bottom.top.left.right.equalToSuperview()
            }
        }
        
}
