//
//  AddingBookViewController.swift
//  PrivLibrary
//
//  Created by Min Hu on 2024/2/20.
//

import UIKit

class AddingBookViewController: UIViewController {

    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.frenchGrey
        label.frame = view.bounds
        label.text = "這是 AddingBookViewController"
        label.textAlignment = .center
        view.addSubview(label)
        // Do any additional setup after loading the view.
    }
}
