//
//  CodedTableViewCell.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 15.06.2022.
//

import UIKit

class CodedTableViewCell: UITableViewCell {
    
    static let identifier = "CodedTableViewCell"

    private let myLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let myImageView: UIImageView = {
        let label = UIImageView()
        return label
    }()

    func configure() {
        contentView.addSubview(myLabel)
        contentView.addSubview(myImageView)
        
        myLabel.text = "It work"
        myLabel.textAlignment = .center
        myImageView.image = UIImage(named: "avatar")
        myImageView.contentMode = .scaleAspectFit
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myImageView.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
        myLabel.frame = CGRect(x: 100, y: 5, width: contentView.frame.size.width - 100, height: 25)
        
        myImageView.layer.masksToBounds = true
        myImageView.layer.cornerRadius = myImageView.frame.width / 2
     }
}
