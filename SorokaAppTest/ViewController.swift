//
//  ViewController.swift
//  SorokaAppTest
//
//  Created by Анатолий Оруджев on 05.03.2020.
//  Copyright © 2020 Istvud. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let newController = MainViewController()
        self.present(newController, animated: false, completion: nil)
    }


}

