//
//  CustomCollectionViewController.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 26/10/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let customCellIdentifier = "customCellIdentifier"
    
    var myFavoriteAnimes = ["Naruto", "FullMetal Alchemist", "Saint Seya", "Jojo", "Dororo"]
    
    override func viewDidLoad() {
        collectionView?.backgroundColor = .white
        
        //Register a type of cell in collection
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: customCellIdentifier)
    }
    
    //What the Collection cells will looks like
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: customCellIdentifier, for: indexPath) as! CustomCell
        customCell.label.text = myFavoriteAnimes[indexPath.item]
        customCell.backgroundColor = .red
        return customCell
    }
    
    //Number Of Cells in Collection
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myFavoriteAnimes.count
    }
    
    //Control The size of Cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}


class CustomCell: UICollectionViewCell{
    
    let label: UILabel = UILabel(backgroundColor: nil, text: "Deu bom", textColor: .black)
    
    override init(frame: CGRect = .zero){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
