//
//  InstagramViewController.swift
//  TableView_Lessons_IOSAcademy
//
//  Created by Артур Дохно on 14.06.2022.
//

import UIKit

class InstagramViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var models = [InstagramPost]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        models.append(InstagramPost(numberOfLikes: 100,
                                    userName: "Artur1",
                                    userImageName: "avatar",
                                    postImageName: "1"))
        
        models.append(InstagramPost(numberOfLikes: 200,
                                    userName: "Artur2",
                                    userImageName: "avatar",
                                    postImageName: "2"))
        
        models.append(InstagramPost(numberOfLikes: 300,
                                    userName: "Artur3",
                                    userImageName: "avatar",
                                    postImageName: "3"))
        
        models.append(InstagramPost(numberOfLikes: 400,
                                    userName: "Artur4",
                                    userImageName: "avatar",
                                    postImageName: "4"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: PostTableViewCell.identifier,
            for: indexPath) as! PostTableViewCell

        cell.configure(with: models[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120 + 140 + view.frame.size.width
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
