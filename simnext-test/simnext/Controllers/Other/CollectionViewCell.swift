//
//  CollectionViewCell.swift
//  simnext
//
//  Created by Kristina Krivošija on 15/03/2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    static let identifier = "CollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        let images = [UIImage(named:  "manikinCard"),
                      UIImage(named:  "manikinCard"),
                      UIImage(named:  "manikinCard"),
                      UIImage(named:  "manikinCard")
        ].compactMap({$0})
        imageView.image = images.randomElement()
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        //imageView.image = nil
    }
    
}
