//
//  DynamicTabBar.swift
//  CustomIOSViews
//
//  Created by Decagon on 19/05/2022.
//

import UIKit

class DynamicTabBar: UIViewController {
    var user: String {
        return "Chioma"
    }
    
    
    
    // This implemetation was moved to the Scene delegate file
    
    
    
//    
//    func setUpViewController(_ title: String, _ backgroundColor: UIColor) -> UIViewController {
//        let vc = UIViewController()
//        vc.view.backgroundColor = backgroundColor
//        vc.tabBarItem.title = title
//        vc.tabBarItem.image = UIImage(named: "star")
//        return vc
//    }
//    
//    var arr1 = [UIViewController]()
//    var arr2 = [UIViewController]()
//    private var _tabBarController: UITabBarController = {
//       let tbc = UITabBarController()
//        
//     //   tbc.setViewControllers(user == "Chioma" ? arr1 : arr2, animated: true)
//        return tbc
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let vc1 = setUpViewController("First", .orange)
//        let vc2 = setUpViewController("Second", .blue)
//        let vc3 = setUpViewController("Third", .green)
//        
//        let vcA = setUpViewController("Fourth", .red)
//        let vcB = setUpViewController("Fifth", .yellow)
//        
//        arr1 = [vc1, vc2, vc3]
//        arr2 = [vcA, vcB]
        
//        view.addSubview(_tabBarController)
    }
    


}
