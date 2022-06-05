//
//  MyCollectionViewCell.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 05.06.2022.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImage: UIImageView!

    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with model: Model) {
        self.myLabel.text = model.text
        self.myImage.image = UIImage(named: model.imageName)
    }

}
