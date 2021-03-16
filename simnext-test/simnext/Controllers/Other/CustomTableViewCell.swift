//
//  CustomTableViewCell.swift
//  simnext
//
//  Created by Kristina Krivošija on 15/03/2021.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    lazy var backView: UIView = {
       let view = UIView(frame: CGRect(x: 10, y: 6, width: 157, height: 110))
        view.backgroundColor = UIColor.white
        view.layer.borderColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1).cgColor
        view.layer.borderWidth = 2
        
        return view
    }()
    
    lazy var userImage: UIImageView = {
        let userImage = UIImageView(frame: CGRect(x: 16, y: 32, width: 30, height: 30))
        userImage.contentMode = .scaleAspectFit
        return userImage
    }()
    
    lazy var namelbl: UILabel = {
       let lbl = UILabel(frame: CGRect(x: 62, y: 18, width: backView.frame.width - 62, height: 30))
        lbl.textAlignment = .left
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        return lbl
    }()
    
    lazy var subtextlbl: UILabel = {
        let lbl = UILabel(frame: CGRect(x: 62, y: 50, width: backView.frame.width - 62, height: 30))
        lbl.textAlignment = .left
        lbl.font = UIFont.systemFont(ofSize: 12)
        lbl.textColor = UIColor(red: 0.765, green: 0.133, blue: 0.22, alpha: 1)
        return lbl
    }()
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        contentView.backgroundColor = UIColor.clear
        backgroundColor = UIColor.clear
        backView.layer.cornerRadius = 8
        backView.clipsToBounds = true
//        userImage.layer.cornerRadius = 52
        userImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addSubview(backView)
        backView.addSubview(userImage)
        backView.addSubview(namelbl)
        backView.addSubview(subtextlbl)
        
    }

}

