//
//  CustomCollectionViewController.swift
//  TestViewCode
//
//  Created by Guilherme Araujo on 26/10/19.
//  Copyright © 2019 Guilherme Araujo. All rights reserved.
//

import UIKit

class CustomCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
    
    let cellID = "CellId"
    let headerID = "HeaderID"
    
    var myFavoriteAnimes = ["Naruto", "FullMetal Alchemist", "Saint Seya", "Jojo", "Dororo", "Atack on Titan", "Bleach"]
    var myFavoriteSagas = ["Back To The Future", "Marvel Infinity Saga", "Star Wars", "Toy Story"]
    
     var sections = ["Animes", "Séries"]
    
    override func viewDidLoad() {
        collectionView?.backgroundColor = .white
        
        //Register a type of cell and header in collection
        collectionView?.register(CustomCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.register(CustomCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerID)
    }
    
    //What the Collection cells will looks like
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if(indexPath.section == 0){
            let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CustomCell
            customCell.label.text = myFavoriteAnimes[indexPath.item]
            customCell.backgroundColor = #colorLiteral(red: 0.8431372549, green: 0.2431372549, blue: 0.2941176471, alpha: 1)
            return customCell

        } else {
            let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CustomCell
            customCell.label.text = myFavoriteSagas[indexPath.item]
            customCell.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            return customCell
        }
                
    }
    
    //Number Of Cells in Collection based in size of two lists
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (section == 0) ? myFavoriteAnimes.count : myFavoriteSagas.count
    }
    
    
    //Control The size of Cells
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    
    //What the Collection Header will looks like
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath) as! CustomCell
        header.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        header.label.text = sections[indexPath.item]
        return header
    }
    
    //Add number os Sections based in array of Sections
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sections.count
    }
    
    
    
    //Control The size of Header
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
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
