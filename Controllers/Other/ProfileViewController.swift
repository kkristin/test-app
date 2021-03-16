//
//  ViewController.swift
//  ProgrammitcallyTableView
//
//  Created by SHUBHAM AGARWAL on 20/02/19.
//  Copyright © 2019 SHUBHAM AGARWAL. All rights reserved.
//

import UIKit

class UserProfile {
    var userImage: UIImage?
    var name: String?
    var subtext: String?
    
    init(userImage: UIImage, name: String, subtext: String) {
        self.userImage = userImage
        self.name = name
        self.subtext = subtext
    }
}

class ProfileViewController: UIViewController {
    
    var tableView = UITableView()
    
    var userArr = [UserProfile]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        self.title = "Setup the session"
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "manikin"), name: "Manikin", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "stethoscope"), name: "Stethoscope", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "mask"), name: "Bag Valve Mask", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "cables"), name: "Vital cables", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "monitor"), name: "Patient monitor", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "controls"), name: "Monitor controls", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "simnextlogo"), name: "Simulated equipment", subtext: "Not connected"))
        userArr.append(UserProfile(userImage:  #imageLiteral(resourceName: "addmore"), name: "Add another device", subtext: "Assign new device to use in this session."))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setTableView() {
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        tableView.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1)
        self.view.addSubview(tableView)
        
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? CustomTableViewCell else {fatalError("Unabel to create cell")}
        cell.userImage.image = userArr[indexPath.row].userImage
        cell.namelbl.text = userArr[indexPath.row].name
        cell.subtextlbl.text = userArr[indexPath.row].subtext
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}

