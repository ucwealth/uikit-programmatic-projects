//
//  SceneDelegate.swift
//  CustomIOSViews
//
//  Created by Decagon on 18/05/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // Line 13 - 19 is the code to enter your app without storyboard 
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //==== Set up dynamic tab bar controller entirely from code ============
        func setUpViewController(_ title: String, _ backgroundColor: UIColor) -> UIViewController {
            let vc = UIViewController()
            vc.view.backgroundColor = backgroundColor
            vc.tabBarItem.title = title
            vc.tabBarItem.image = UIImage(systemName: "star")
            return vc
        }
        
        let vc1 = setUpViewController("First", .orange)
        let vc2 = setUpViewController("Second", .blue)
        let vc3 = setUpViewController("Third", .green)
        
        let vcA = setUpViewController("Fourth", .red)
        let vcB = setUpViewController("Fifth", .yellow)
        
        let arr1: [UIViewController] = [vc1, vc2, vc3]
        let arr2: [UIViewController] = [vcA, vcB]
        
        let isKitchenStaff = true
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = isKitchenStaff ? arr2 : arr1
        
        //============= Tab bar code ends here ===============
        
        window = UIWindow(windowScene: windowScene)
//        window?.rootViewController = tabbarController
//        window?.rootViewController = TabBarViewController()
        window?.rootViewController = PicturePickerViewController()
//        window?.rootViewController = CustomAlertViewController()
        window?.makeKeyAndVisible()
    }
    
    

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

