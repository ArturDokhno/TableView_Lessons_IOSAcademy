//
//  PostTableViewCell.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 14.06.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var postImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var likesLabel: UILabel!
    
    static let identifier = "PostTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "PostTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(with model: InstagramPost) {
        self.likesLabel.text = "\(model.numberOfLikes) Likes"
        self.userNameLabel.text = model.userName
        self.userImageView.image = UIImage(named: model.userImageName)
        self.postImageView.image = UIImage(named: model.postImageName)
    }
    
}
