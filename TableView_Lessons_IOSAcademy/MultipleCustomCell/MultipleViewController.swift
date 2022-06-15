//
//  MultipleViewController.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 15.06.2022.
//

import UIKit

class MultipleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        table.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        table.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier,
                                                     for: indexPath) as! CodedTableViewCell
            cell.configure()
            return cell
        }
        
        if indexPath.row < 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier,
                                                     for: indexPath) as! ImageTableViewCell
            cell.configure(with: "1")
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier,
                                                 for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell
    }
    
}
