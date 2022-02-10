//
//  FirstVC.swift
//  Practice3
//
//  Created by Daniel Pustotin on 10.02.2022.
//

import Foundation
import UIKit

class FirstVC: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .black

        button.setTitle("Make blue", for: .normal)
        button.setImage(.init(systemName: "arrow.right"), for: .normal)
        
        
        button.addTarget(self, action: #selector(onClick(sender:)), for: .touchUpInside)

        return button
    }()
        
    
    @objc func onClick(sender: UIButton?) {
        navigationController?.pushViewController(SecondVC(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        setupSubviews()
        setupConstraints()
    }
    
    func setupSubviews() {
        view.addSubview(button)
    }
    
    func setupConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
