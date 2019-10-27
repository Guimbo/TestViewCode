//
//  SafariViewController.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 27/10/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit
import SafariServices


class SafariViewController: UIViewController{

    var searchTitle:String = "Erros"
    private lazy var link = "https://www.google.com/search?&q=\(searchTitle)"

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
            showSafari(searchLink: link)
        }
    
        
    func showSafari(searchLink:String){
        
        guard let url = URL(string: searchLink) else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        safariVC.modalPresentationStyle = .formSheet
        safariVC.present(safariVC, animated: true)
    }
        
}
