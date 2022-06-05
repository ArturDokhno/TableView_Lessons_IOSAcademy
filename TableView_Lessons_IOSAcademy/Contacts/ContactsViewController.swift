//
//  ContactsViewController.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 05.06.2022.
//

import UIKit

class ContactsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let names = [
        "Artur Smith",
        "Dan Smith",
        "John Smith",
        "Mary Smith"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ContactsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me!")
    }
}

extension ContactsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}
