//
//  MainViewController.swift
//  SorokaAppTest
//
//  Created by Анатолий Оруджев on 06.03.2020.
//  Copyright © 2020 Istvud. All rights reserved.
//

import UIKit
class MainViewController: UIViewController {
    
    let data = [
        
        DataItem(imgUrl: "https://img4.goodfon.ru/original/1920x1200/d/5c/kasha-grechka-luk-griby.jpg", title: "Гречка с курицой"),
        DataItem(imgUrl: "https://s.mediasole.ru/images/1451/1451547/1_1_1550995384639.jpg", title: "Лазанья с говядиной"),
        DataItem(imgUrl: "https://img.taste.com.au/h9KkdZIW/w720-h480-cfill-q80/taste/2016/11/roma-tomato-and-basil-salad-82537-1.jpeg", title: "Салат из помидоров с базиликовым маслом")
    ]
    
    
    let collectionViewNewProducts: UICollectionView = {
        let layuot = UICollectionViewFlowLayout()
        layuot.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layuot)
        collectionView.register(NewProductCollectionViewCell.self, forCellWithReuseIdentifier: "collCell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(named: "viewColor")
        
        createCollectionNewProduct()
    }
    
    
    private func createCollectionNewProduct() {
        
        view.addSubview(collectionViewNewProducts)
        
        collectionViewNewProducts.backgroundColor = UIColor(named: "viewColor")
        collectionViewNewProducts.showsHorizontalScrollIndicator = false
        collectionViewNewProducts.delegate = self
        collectionViewNewProducts.dataSource = self
        
        NSLayoutConstraint.activate([
            
            collectionViewNewProducts.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            collectionViewNewProducts.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            collectionViewNewProducts.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -0),
            collectionViewNewProducts.heightAnchor.constraint(equalToConstant: 135)
            
        ])
        
    }

    
}
// MARK:- CollectionViewDataSource

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 154, height: 135)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collCell", for: indexPath) as? NewProductCollectionViewCell else {  fatalError("don't cell ") }
        cell.backgroundColor = .white
        cell.data = self.data[indexPath.row]
        return cell
    }
    
}
