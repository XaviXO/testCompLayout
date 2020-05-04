//
//  SmallTableCell.swift
//  Appify
//
//  Created by Javier Calderon Jr. on 5/4/20.
//  Copyright © 2020 Javier Calderon Jr. All rights reserved.
//

import UIKit

class SmallTableCell: UICollectionViewCell, SelfConfiguringCell {
    static let reusableIdentifier: String = "SmallTableCell"
    
    let name = UILabel()
    let imageView = UIImageView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        name.font = UIFont.preferredFont(forTextStyle: .title2)
        name.textColor = .label
        
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        
        let stackView = UIStackView(arrangedSubviews: [imageView, name])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.spacing = 20
        contentView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    func configure(with app: App) {
        name.text = app.name
        imageView.image = UIImage(named: app.image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
