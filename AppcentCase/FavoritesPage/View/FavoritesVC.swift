//
//  FavoritesVC.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 1.01.2023.
//

import UIKit

class FavoritesVC: UIViewController {
    @IBOutlet weak var favoritesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


}

extension FavoritesVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "favCell", for: indexPath) as! FavoritesCell
        cell.favTitleLbl.text = "test title "
        cell.favDescLbl.text = "agagagalga a mglkn lgan lnglkanl gansk nalgkna klnflka nklgan "
        cell.favImageView.image = UIImage(named: "appcent")
        return cell
        
    }
    

}
