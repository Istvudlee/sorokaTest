//
//  MainViewController.swift
//  SorokaAppTest
//
//  Created by Анатолий Оруджев on 06.03.2020.
//  Copyright © 2020 Istvud. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let viewNewProduct: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .brown
        
        return view
    }()
    let newProductImage: UIImageView = {
        let image = UIImage(named: "ItemNewImage/newProduct")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
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
    let collectionViewNewProducts: UICollectionView = {
        let collectionView = UICollectionView()
        
        
        return collectionView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(named: "viewColor")
        createViewNewProduct()
    }
    
    private func createViewNewProduct() {
        view.addSubview(viewNewProduct)
        viewNewProduct.addSubview(newProductImage)
        viewNewProduct.addSubview(itemNewProductLabel)
        
        NSLayoutConstraint.activate([
            viewNewProduct.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 13),
            viewNewProduct.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewNewProduct.widthAnchor.constraint(equalToConstant: 154),
            viewNewProduct.heightAnchor.constraint(equalToConstant: 134)
        ])
        
        NSLayoutConstraint.activate([
            
            newProductImage.leadingAnchor.constraint(equalTo: viewNewProduct.leadingAnchor, constant: 0),
            newProductImage.trailingAnchor.constraint(equalTo: viewNewProduct.trailingAnchor, constant: 0),
        ])
        
        NSLayoutConstraint.activate([
            
            itemNewProductLabel.topAnchor.constraint(equalTo: newProductImage.bottomAnchor, constant: 6),
            itemNewProductLabel.leadingAnchor.constraint(equalTo: viewNewProduct.leadingAnchor, constant: 9),
            itemNewProductLabel.trailingAnchor.constraint(lessThanOrEqualToSystemSpacingAfter: viewNewProduct.trailingAnchor, multiplier: 9)
            
        ])
    }
    private func createCollectionNewProduct() {
        view.addSubview(collectionViewNewProducts)
        NSLayoutConstraint.activate([
        
            collectionViewNewProducts.topAnchor.constraint(equalTo: viewNewProduct.topAnchor, constant: 20),
            collectionViewNewProducts.
        ])

    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
// MARK:- Collection View
extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath) as? NewProductCollectionViewCell else {
            fatalError("don't collection cell")
        }
        return cell
    }
    
    
}
