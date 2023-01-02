//
//  HomeVC.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 1.01.2023.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var homeTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }
    
}

extension HomeVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as! HomeCell
        
        cell.titleLbl.text = "title"
        cell.descriptionLbl.text = "description lbl agasgagklaehgjoşıeqjgpoqjthqn nlşjqn ljşqgkeb gjklqgq "
        cell.imageView?.image = UIImage(named: "car1")
        return cell
        
    }
    
    
}
