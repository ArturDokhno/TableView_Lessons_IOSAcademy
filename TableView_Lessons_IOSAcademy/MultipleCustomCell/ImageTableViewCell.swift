//
//  ImageTableViewCell.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 15.06.2022.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet var myImageView: UIImageView!
    
    static let identifier = "ImageTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ImageTableViewCell", bundle: nil)
    }
    
    func configure(with imageName: String) {
        myImageView.image = UIImage(named: imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
