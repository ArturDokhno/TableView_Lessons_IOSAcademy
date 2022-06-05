//
//  CustomCellsViewController.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 05.06.2022.
//

import UIKit

class CustomCellsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(FieldTableViewCell.nib(), forCellReuseIdentifier: FieldTableViewCell.identifier)
        tableView.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension CustomCellsViewController: UITableViewDelegate {
    
}

extension CustomCellsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row > 5 {
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: FieldTableViewCell.identifier, for: indexPath) as! FieldTableViewCell
            
            return fieldCell
        }
        
        if indexPath.row > 3 {
            let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
            customCell.configure(with: "Custom Cell", imageName: "gear")
            return customCell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = "Hello World"
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        mySwitch.isOn = true
        cell.accessoryView = mySwitch
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            print("User turned it on")
        } else {
            print("It's now off")
        }
    }
}
