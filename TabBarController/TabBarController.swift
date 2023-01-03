//
//  TabBarController.swift
//  AppcentCase
//
//  Created by Oğuzhan Erdem on 3.01.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        changeRadiusOfTabBar()
    }
    

    private func changeRadiusOfTabBar(){
        tabBar.layer.cornerRadius = 20
        tabBar.isTranslucent = true
        tabBar.layer.masksToBounds = true
        self.tabBar.layer.maskedCorners =  [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
