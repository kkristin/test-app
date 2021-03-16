//
//  SearchViewController.swift
//  simnext
//
//  Created by Kristina Krivosija on 10/03/2021.
//

import UIKit

class SetupViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: UICollectionViewFlowLayout()
    )
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        collectionView.register(CollectionViewCell.self,
                                forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)


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

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
        collectionView.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.size.width/2)-20,
                      height: (view.frame.size.width/2)-20 )
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("Selected section\(indexPath.section) and row\(indexPath.row)")
    }


}


//import UIKit
//
//
//class SetupViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    
//    @IBOutlet var table: UITableView!
//    
//    var models = [Model]()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        models.append(Model( title: "Manikin", status: "Not connected", description:""))
//        models.append(Model( title: "Stethoscope", status: "Not connected", description:""))
//        models.append(Model( title: "Bag Valve Mask", status: "Not connected", description:""))
//        models.append(Model( title: "Vital cables", status: "Not connected", description:""))
//        models.append(Model(title: "Patient monitor", status: "Not connected", description:""))
//        models.append(Model( title: "Monitor controls", status: "Not connected", description:""))
//        models.append(Model( title: "Simulated equipment", status: "Not connected", description:""))
//        models.append(Model( title: "Add another device",status: "", description: "Assign new device to use in this session."))
//        
//        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
//        table.delegate = self
//        table.dataSource = self
//    }
//
//    // Table
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return models.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
//        cell.configure(with: models)
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 250
//    }
//}
//
//struct Model {
////    let icon: UIImage?
//    let title: String
//    let status: String
//    let description: String
//    
//    init(
////        icon: UIImage,
//        title: String,
//        status: String,
//        description: String) {
////        self.icon = icon
//        self.title = title
//        self.status = status
//        self.description = description
//    }
//
//}
