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
        view.backgroundColor = .gray
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .yellow
        createViewNewProduct()
    }
    
    private func createViewNewProduct() {
        view.addSubview(viewNewProduct)
        
        NSLayoutConstraint.activate([
            viewNewProduct.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 13),
            viewNewProduct.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            viewNewProduct.widthAnchor.constraint(equalToConstant: 154),
            viewNewProduct.heightAnchor.constraint(equalToConstant: 122)
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
