//
//  ViewController.swift
//  simnext
//
//  Created by Kristina Krivosija on 10/03/2021.
//

import UIKit


class HomeViewController: UIViewController {
    
    private let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: UICollectionViewFlowLayout()
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .systemBackground
        navigationItem.leftBarButtonItem = UIBarButtonItem( image: #imageLiteral(resourceName: "menu"),
                                                            style: .done,
                                                            target: self,
                                                            action: #selector(didTapSettings))
    }
    
    @objc func didTapSettings(){
        let vc = SettingsViewController()
        vc.title = "Account and stuff"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

