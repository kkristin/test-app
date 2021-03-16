//
//  TabBarViewController.swift
//  simnext
//
//  Created by Kristina Krivosija on 10/03/2021.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = UIColor(red: 0.18, green: 0.498, blue: 0.631, alpha: 1)

        let vc1 = HomeViewController()
        let vc2 = SetupViewController()
        let vc3 = RecordViewController()
        let vc4 = EquipmentViewController()
        let vc5 = PatientViewController()
        
        vc1.title = "Home"
        vc2.title = "Setup"
        vc3.title = "Record"
        vc4.title = "Equipment"
        vc5.title = "Patient"
        
//        vc1.tabBarItem.image = #imageLiteral(resourceName: "home")
//        vc2.tabBarItem.image = #imageLiteral(resourceName: "setup")
//        vc3.tabBarItem.image = #imageLiteral(resourceName: "record")
//        vc4.tabBarItem.image = #imageLiteral(resourceName: "equpment")
//        vc5.tabBarItem.image = #imageLiteral(resourceName: "patient")
        
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        vc3.navigationItem.largeTitleDisplayMode = .always
        vc4.navigationItem.largeTitleDisplayMode = .always
        vc5.navigationItem.largeTitleDisplayMode = .always
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        let nav3 = UINavigationController(rootViewController: vc3)
        let nav4 = UINavigationController(rootViewController: vc4)
        let nav5 = UINavigationController(rootViewController: vc5)
        
        nav1.navigationBar.tintColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
        nav2.navigationBar.tintColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
        nav3.navigationBar.tintColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
        nav4.navigationBar.tintColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
        nav5.navigationBar.tintColor = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "home"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Setup", image: #imageLiteral(resourceName: "setup"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "record"), tag: 3)
        nav3.tabBarItem.imageInsets = UIEdgeInsets(top: -14, left: 0, bottom: 14, right: 0)
        nav4.tabBarItem = UITabBarItem(title: "Equipment", image: #imageLiteral(resourceName: "equpment"), tag: 4)
        nav5.tabBarItem = UITabBarItem(title: "Patient", image: #imageLiteral(resourceName: "patient"), tag: 5)
        
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        nav3.navigationBar.prefersLargeTitles = true
        nav4.navigationBar.prefersLargeTitles = true
        nav5.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2, nav3, nav4, nav5], animated: false)
    }
    



}
