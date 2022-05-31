//
//  TabBarViewController.swift
//  CustomIOSViews
//
//  Created by Decagon on 26/05/2022.
//

import UIKit

class TabBarViewController: UIViewController {
//    var tbc = UITabBarController()
    func setUpViewController(_ title: String, _ backgroundColor: UIColor) -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = backgroundColor
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage(named: "star")
        return vc
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = setUpViewController("First", .orange)
        let vc2 = setUpViewController("Second", .blue)
        
        let tbc = UITabBarController()
        tbc.setViewControllers([vc1, vc2], animated: false)
        
//        view.backgroundColor = .red 
    }
    
//    override func viewDidLayoutSubviews() {
//        tbc.tabBar.frame = CGRect(x: 0, y: 50, width: view.frame.size.width, height: view.frame.size.height)
//    }

}
