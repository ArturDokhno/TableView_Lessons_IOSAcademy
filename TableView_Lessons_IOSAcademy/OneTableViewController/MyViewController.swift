//
//  MyViewController.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 09.06.2022.
//

import UIKit

class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func didTapButtonOme() {
        let vc = MyTableViewController()
        vc.models = [
            ("Артур", {
                print("Артур")
            }),
            ("Юлия", {
                print("Юлия")
            }),
            ("Снежана", {
                print("Снежана")
            })
        ]
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapButtonTwo() {
        let vc = MyTableViewController()
        vc.models = [
            ("First", {
                print("First")
            }),
            ("Second", {
                print("Second")
            }),
            ("First", {
                print("Third")
            })
        ]
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
