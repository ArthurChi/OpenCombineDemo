//
//  ViewController.swift
//  OpenCombineDemo
//
//  Created by VassilyChi on 2021/7/8.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.pushViewController(ABCViewController(), animated: true)
        
    }


}

