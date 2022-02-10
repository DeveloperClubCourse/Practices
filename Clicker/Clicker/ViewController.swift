//
//  ViewController.swift
//  Clicker
//
//  Created by Daniel Pustotin on 31.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int! {
        didSet {
            label.text = String(number)
        }
    }

    @IBOutlet weak var label: UILabel!
    @IBAction func even(_ sender: UIButton) {
        number /= 2
    }
    @IBAction func odd(_ sender: UIButton) {
        number = number * 3 + 1
    }
    @IBAction func reset(_ sender: UIButton) {
        setupNumber()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .blue
        
        setupNumber()
    }
    
    private func setupNumber() {
        number = Int.random(in: 2 ... 15)
    }

    
    // reset => label <- random number
    
    // even => number / 2
    // odd => number * 3 + 1

}

