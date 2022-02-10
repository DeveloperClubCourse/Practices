//
//  EmptyVC.swift
//  Practice3
//
//  Created by Daniel Pustotin on 10.02.2022.
//

import UIKit

class EmptyVC: UIViewController {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        
        let myFont = UIFont(name: "Verdana", size: 40)
        
        label.text = "Empty"
        label.font = myFont
        label.textColor = .systemPink
//        label.backgroundColor = .lightGray
//        label.tintColor = .systemBlue
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        setupSubviews()
        setupConstraints()
    }

    
    func setupSubviews() {
        view.addSubview(label)
    }
    
    func setupConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}

