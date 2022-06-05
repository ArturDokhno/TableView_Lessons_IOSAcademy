//
//  FieldTableViewCell.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 05.06.2022.
//

import UIKit

class FieldTableViewCell: UITableViewCell, UITextFieldDelegate {
    
    static let identifier = "FieldTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "FieldTableViewCell", bundle: nil)
    }
    
    @IBOutlet var field: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        field.placeholder = "Enter something...."
        field.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print("\(textField.text ?? "")")
        return true
    }
    
}
