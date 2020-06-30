//
//  UtilitysCollectionViewCell.swift
//  FPT Banking
//
//  Created by hưng hoàng on 6/22/20.
//  Copyright © 2020 hưng hoàng. All rights reserved.
//

import UIKit

class UtilitysCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var utilitysView: UIView!
    @IBOutlet weak var imgUtilitys: UIImageView!
    @IBOutlet weak var lbUtility: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        utilitysView.layer.cornerRadius = 10
        utilitysView.layer.masksToBounds = true
    }
    func setDataUtility(obj: FBProductObj?) {
//        imgUtilitys.image = obj?.productImage
        lbUtility.text = obj?.title
    }
}
