//
//  CustomTabBarController.swift
//  CodeLayout
//
//  Created by YU on 2019/4/23.
//  Copyright © 2019 ameyo. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //創建三個navigationController 位於 tabBar
        let navigationController = UINavigationController(rootViewController: ViewController())
        
        navigationController.title = "Search"
        
        navigationController.tabBarItem.image = UIImage(named: "magnifying-glass")
        
        let todayVC = UIViewController()
        
        let todayNavigationController = UINavigationController(rootViewController: todayVC)
        
        todayNavigationController.title = "Today"
        
        todayNavigationController.tabBarItem.image = UIImage(named: "calendar")
        
        let appsVC = UIViewController()
        
        let appsNavigationController = UINavigationController(rootViewController: appsVC)
        
        appsNavigationController.title = "Apps"
        
        appsNavigationController.tabBarItem.image = UIImage(named: "app")
        
        //加入到CustomTabBarController上
        viewControllers = [navigationController, todayNavigationController, appsNavigationController]
        
        tabBar.isTranslucent = false
    }
}
