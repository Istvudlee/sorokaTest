//
//  NewProductCollectionViewCell.swift
//  SorokaAppTest
//
//  Created by Анатолий Оруджев on 08.03.2020.
//  Copyright © 2020 Istvud. All rights reserved.
//

import UIKit
import Kingfisher
class NewProductCollectionViewCell: UICollectionViewCell {
    
    var data: DataItem? {
        didSet {
            guard let data = data else {return}
            let url = URL(string: data.imgUrl)
            itemNewProductLabel.text = data.title
            newProductImage.kf.setImage(with: url)
            
        }
    }
    
    let viewNewProduct: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "viewColor")
        
        return view
    }()
    
    let newProductImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let itemNewProductLabel: UILabel = {
        let label = UILabel()
        label.text = "Буррата с томатами"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "CeraPro-Regular", size: 13)
        label.textColor = .white
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        createViewNewProduct()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func createViewNewProduct() {
        contentView.addSubview(viewNewProduct)
        viewNewProduct.addSubview(newProductImage)
        viewNewProduct.addSubview(itemNewProductLabel)
        
        NSLayoutConstraint.activate([
            viewNewProduct.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 0),
            viewNewProduct.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            viewNewProduct.widthAnchor.constraint(equalToConstant: 154),
            viewNewProduct.heightAnchor.constraint(equalToConstant: 135)
        ])
        
        NSLayoutConstraint.activate([
            
            newProductImage.leadingAnchor.constraint(equalTo: viewNewProduct.leadingAnchor, constant: 0),
            newProductImage.trailingAnchor.constraint(equalTo: viewNewProduct.trailingAnchor, constant: 0),
            newProductImage.widthAnchor.constraint(equalToConstant: 154),
            newProductImage.heightAnchor.constraint(equalToConstant: 99)
        ])
        
        NSLayoutConstraint.activate([
            
            itemNewProductLabel.topAnchor.constraint(equalTo: newProductImage.bottomAnchor, constant: 6),
            itemNewProductLabel.leadingAnchor.constraint(equalTo: viewNewProduct.leadingAnchor, constant: 9),
            itemNewProductLabel.trailingAnchor.constraint(equalTo: viewNewProduct.trailingAnchor, constant: -6)
            
        ])
    }
}
