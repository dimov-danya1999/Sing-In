//
//  MainTabBarController.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 01.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchViewController = SearchViewController()
        let profileViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "profileVC") as? ProfileViewController
        
        let boldConfig = UIImage.SymbolConfiguration(weight: .medium)
        let musicImage = UIImage(systemName: "music.house", withConfiguration: boldConfig)!
        let personImage = UIImage(systemName: "person.crop.square", withConfiguration: boldConfig)!
        
        viewControllers = [
            generateNavigationController(rootViewController: searchViewController, title: "Музыка", image: musicImage),
            generateNavigationController(rootViewController: profileViewController!, title: "Профиль", image: personImage)
            
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        navigationVC.navigationBar.prefersLargeTitles = true
//        navigationVC. = "frefer"
        return navigationVC
    }
}
