//
//  CategoryCollectionViewCell.swift
//  Foodie
//
//  Created by Robert Fish on 29/4/20.
//  Copyright © 2020 Robert Fish. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        styleCell()
        // Initialization code
    }
    func styleCell(){
        layer.cornerRadius = 26
    }

}
