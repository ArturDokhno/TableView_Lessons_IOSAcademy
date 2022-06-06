//
//  SearchViewController.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 06.06.2022.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var field: UITextField!
    
    var data = [String]()
    var filteredData = [String]()
    var filtered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupData()
        tableView.delegate = self
        tableView.dataSource = self
        field.delegate = self
    }
    
    private func setupData() {
        data.append("Артур")
        data.append("Юля")
        data.append("Катя")
        data.append("Илья")
        data.append("Кирилл")
        data.append("Кира")
        data.append("Юра")
        data.append("Снежана")
        data.append("Елена")
        data.append("Василий")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text {
            filterText(text + string)
        }
        return true
    }
    
    func filterText(_ query: String) {
        filteredData.removeAll()
        for string in data {
            if string.lowercased().starts(with: query.lowercased()) {
                filteredData.append(string)
            }
        }
        tableView.reloadData()
        filtered = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if !filteredData.isEmpty {
            return filteredData.count
        }
        return filtered ? 0 : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if !filteredData.isEmpty {
            cell.textLabel?.text = filteredData[indexPath.row ]
        } else {
            cell.textLabel?.text = data[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
