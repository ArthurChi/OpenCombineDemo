//
//  ABCViewController.swift
//  OpenCombineDemo
//
//  Created by VassilyChi on 2021/7/8.
//

import UIKit
import OpenCombine

class ABCViewController: UIViewController {
    
    private var events = [AnyCancellable]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let obj = NotifyObj()
        obj.notify.listen { _ in
            print(obj)
        }
        .store(in: &self.events)
    }
}
